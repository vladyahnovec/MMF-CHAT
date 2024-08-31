import Foundation
import MessageKit

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
}

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}

class ChatViewController: MessagesViewController {
    let selfSender = Sender(senderId: "1", displayName: "Me")
    let otherSender = Sender(senderId: "2", displayName: "Jony")
    
    var messages = [Message]()

    override func viewDidLoad() {
        super.viewDidLoad()
        messages.append(Message(sender: selfSender, messageId: "1", sentDate: Date().addingTimeInterval(-11200), kind: .text("Hi!")))
        messages.append(Message(sender: otherSender, messageId: "2", sentDate: Date().addingTimeInterval(-10200), kind: .text("Hi! are you okay")))
        messages.append(Message(sender: otherSender, messageId: "3", sentDate: Date().addingTimeInterval(-90200), kind: .text("and you?")))

        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
        
        showMessageTimestampOnSwipeLeft = true
    }
}

extension ChatViewController: MessagesDataSource {
    var currentSender: MessageKit.SenderType {
        return selfSender
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessageKit.MessagesCollectionView) -> MessageKit.MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }
}




extension ChatViewController: MessagesDisplayDelegate, MessagesLayoutDelegate {}
