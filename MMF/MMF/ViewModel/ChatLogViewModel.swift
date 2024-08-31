import Foundation
import Firebase
import FirebaseFirestore

class ChatLogViewModel: ObservableObject {
    @Published var message = ""
    @Published var messages = [Message]()
    @Published var uid1 = ""
    @Published var uid2 = ""
    @Published var count = 0

    @Published var otherName = ""
    @Published var otherSurname = ""
    @Published var otherPatronymic = ""
    @Published var otherEmail = ""
    @Published var currentView = ""

    struct Message : Hashable, Identifiable {
        let id : String = UUID().uuidString
        let toName: String
        let toEmail: String
        let text: String
        let fromId: String
        let toId: String
        let timestamp: Date
        
        init(toName: String,toEmail: String, text: String, fromId: String, toId: String, timestamp: Date) {
            self.toName = toName
            self.toEmail = toEmail
            self.text = text
            self.fromId = fromId
            self.toId = toId
            self.timestamp = timestamp
        }
    }
    
    func handleSend(otherEmail: String) {
        guard let fromId = FireBaseManager.shared.auth.currentUser?.uid else { return }
        let db = Firestore.firestore()
        let messageRef = db.collection("messages").document()
        let timestamp = Timestamp(date: Date())
        
        findUIDByEmail(email: otherEmail) { (toId) in
            guard let toId = toId else {
                print("Error: user with email \(otherEmail) not found")
                return
            }
            
            let data: [String: Any] = [
                "toName": self.otherName,
                "toEmail": self.otherEmail,
                "text": self.message,
                "fromId": fromId,
                "toId": toId,
                "timestamp": timestamp
            ]
            
            messageRef.setData(data) { error in
                if let error = error {
                    print("Error sending message: \(error.localizedDescription)")
                    return
                }
                
                print("Message sent successfully!")
                self.count += 1
                print(self.count)
                DispatchQueue.main.async {
                    self.message = ""
                }
            }
        }
    }
    
    func fetchAllMessages(otherEmail: String, completion: @escaping ([Message]?, Error?) -> Void) {
        self.messages = []
        guard let uid1 = FireBaseManager.shared.auth.currentUser?.uid else {
            completion(nil, NSError(domain: "YourApp", code: -1, userInfo: [NSLocalizedDescriptionKey: "User not authenticated"]))
            return
        }
        self.uid1 = uid1
        
        findUIDByEmail(email: otherEmail) { (uid2) in
            guard let uid2 = uid2 else {
                completion(nil, NSError(domain: "YourApp", code: -1, userInfo: [NSLocalizedDescriptionKey: "User with email \(otherEmail) not found"]))
                return
            }
            
            self.uid2 = uid2

            let db = Firestore.firestore()
            let query = db.collection("messages")
                .whereField("fromId", in: [uid1, uid2])
                .whereField("toId", in: [uid1, uid2])
            
            query.getDocuments { (querySnapshot, error) in
                if let error = error {
                    completion(nil, error)
                    return
                }
                
                for document in querySnapshot!.documents {
                    guard let messageData = document.data() as? [String: Any],
                          let toName = messageData["toName"] as? String,
                          let toEmail = messageData["toEmail"] as? String,
                          let text = messageData["text"] as? String,
                          let fromId = messageData["fromId"] as? String,
                          let toId = messageData["toId"] as? String,
                          let timestamp = messageData["timestamp"] as? Timestamp else {
                        continue
                    }
                    
                    let message = Message(toName: toName,toEmail: toEmail, text: text, fromId: fromId, toId: toId, timestamp: timestamp.dateValue())
                    self.messages.append(message)
                }
                self.messages.sort { $0.timestamp < $1.timestamp }
                
                completion(self.messages, nil)
            }
        }
    }

    func fetchLatestMessagesForUsers(completion: @escaping ([Message]) -> Void) {
        let db = Firestore.firestore()

        db.collection("messages").getDocuments { querySnapshot, error in
            if let error = error {
                print("Error fetching messages: \(error.localizedDescription)")
                completion([])
                return
            }

            var latestMessages: [Message] = []
            var userMessages: [String: Message] = [:]

            for document in querySnapshot!.documents {
                let data = document.data()

                if  let toName = data["toName"] as? String,
                    let toEmail = data["toEmail"] as? String,
                    let text = data["text"] as? String,
                   let fromId = data["fromId"] as? String,
                   let toId = data["toId"] as? String,
                   let timestamp = data["timestamp"] as? Timestamp {
                    let message = Message(toName: toName, toEmail: toEmail, text: text, fromId: fromId, toId: toId, timestamp: timestamp.dateValue())

                    // Check if we already have a message for this user, if not or if this message is more recent, update it
                    if let existingMessage = userMessages[toId] {
                        if message.timestamp > existingMessage.timestamp {
                            userMessages[toId] = message
                        }
                    } else {
                        userMessages[toId] = message
                    }
                }
            }

            latestMessages.sort { $0.timestamp < $1.timestamp }
            latestMessages = Array(userMessages.values)

            completion(latestMessages)
        }
    }


    func findEmailByName(name: String, completion: @escaping (String?) -> Void) {
        let db = Firestore.firestore()
        let usersRef = db.collection("users").whereField("name", isEqualTo: name)
        
        usersRef.getDocuments { querySnapshot, error in
            if let error = error {
                print("Ошибка при получении документов пользователей: \(error.localizedDescription)")
                completion(nil)
            } else {
                if let document = querySnapshot?.documents.first, let email = document["email"] as? String {
                    completion(email)
                } else {
                    completion(nil)
                }
            }
        }
    }

    
    private func findUIDByEmail(email: String, completion: @escaping (String?) -> Void) {
        let db = Firestore.firestore()
        
        db.collection("users").whereField("email", isEqualTo: email).getDocuments { querySnapshot, error in
            if let error = error {
                print("Error getting documents: \(error.localizedDescription)")
                completion(nil)
            } else {
                for document in querySnapshot!.documents {
                    let uid = document.documentID
                    completion(uid)
                    return
                }
                completion(nil)
            }
        }
    }
    
    func findNameByUID(uid: String, completion: @escaping (String?) -> Void) {
        let db = Firestore.firestore()
        let userRef = db.collection("users").document(uid)
        
        userRef.getDocument { document, error in
            if let error = error {
                print("Error getting user document: \(error.localizedDescription)")
                completion(nil)
            } else {
                if let data = document?.data(), let name = data["name"] as? String {
                    completion(name)
                } else {
                    completion(nil)
                }
            }
        }
    }
    
    func formatTimestamp(_ timestamp: Date) -> String {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss"
            return formatter.string(from: timestamp)
        }
}
