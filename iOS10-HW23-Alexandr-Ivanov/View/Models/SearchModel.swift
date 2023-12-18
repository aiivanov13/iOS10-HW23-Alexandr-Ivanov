import Foundation

struct CategoryItem: Hashable {
    var title: String
    var imageName: String
}

struct SearchItem: Hashable {
    var title: String
    var author: String
    var imageName: String
    var type: String
    var favorite: Bool?
}

extension CategoryItem {
    static var items: [CategoryItem] {
        [
            CategoryItem(title: "Зимнее время", imageName: "station1"),
            CategoryItem(title: "Поп на русском", imageName: "station2"),
            CategoryItem(title: "Поп", imageName: "station3"),
            CategoryItem(title: "Альтернатива", imageName: "station4"),
            CategoryItem(title: "Пространственное звучание", imageName: "station5"),
            CategoryItem(title: "Хип-хоп на русском", imageName: "station6"),
            CategoryItem(title: "Хип-хоп", imageName: "station7"),
            CategoryItem(title: "Рок", imageName: "station8"),
            CategoryItem(title: "Рок н ролл", imageName: "station1"),
            CategoryItem(title: "Диско", imageName: "station2"),
            CategoryItem(title: "Панк", imageName: "station3"),
            CategoryItem(title: "Кантри", imageName: "station4"),
            CategoryItem(title: "Расслабляющая музыка", imageName: "station5"),
            CategoryItem(title: "Бодрое утро", imageName: "station6"),
            CategoryItem(title: "Уютный вечер", imageName: "station7"),
            CategoryItem(title: "Вечеринка", imageName: "station8")
        ]
    }
}
