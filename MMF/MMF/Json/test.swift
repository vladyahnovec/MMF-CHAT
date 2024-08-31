//import Foundation
//
//// Определение структуры для данных из JSON
//struct Person : Codable, Hashable {
//    let name: String
//    let email: String
//    let img: URL
//}
//
//// JSON-строка
//let jsonString = """
//[
//    {
//        "name": "Ботогова Марина Георгиевна",
//        "email": "batahova@bsu.by",
//        "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/botogova.jpg"
//    },
//    {
//        "name": "Чигарев Анатолий Власович",
//        "email": "chigarev@bsu.by",
//        "img": "https://mmf.bsu.by/wp-content/uploads/2021/09/CHigarev_2.jpg"
//    },
//    {
//        "name": "Босяков Сергей Михайлович",
//        "email": "bosiakov@bsu.by",
//        "img": "https://mmf.bsu.by/wp-content/uploads/2020/02/ULM7XWxDuHI1-e1581153702500.jpg"
//    }
//]
//"""
//
//
//// Функция для парсинга JSON
//func parseJSON(jsonString: String) -> [Person]? {
//    let jsonData = Data(jsonString.utf8)
//    do {
//        let people = try JSONDecoder().decode([Person].self, from: jsonData)
//        return people
//    } catch {
//        print("Ошибка при парсинге JSON: \(error)")
//        return nil
//    }
//}
//
