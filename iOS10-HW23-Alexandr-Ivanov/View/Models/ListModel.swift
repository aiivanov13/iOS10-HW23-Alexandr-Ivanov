import Foundation

struct ListItem: Hashable {
    var isSelected: Bool = false
    var iconName: String
    var name: String
}

extension ListItem {
    static var items: [ListItem] {
        [
            ListItem(iconName: "music.note.list", name: "Плейлисты"),
            ListItem(iconName: "music.mic", name: "Артисты"),
            ListItem(iconName: "square.stack", name: "Альбомы"),
            ListItem(iconName: "music.note", name: "Песни"),
            ListItem(iconName: "tv", name: "Телешоу и фильмы"),
            ListItem(iconName: "music.note.tv", name: "Видеоклипы"),
            ListItem(iconName: "guitars", name: "Жанры"),
            ListItem(iconName: "person.2.crop.square.stack", name: "Сборники"),
            ListItem(iconName: "music.quarternote.3", name: "Авторы"),
            ListItem(iconName: "arrow.down.circle", name: "Загружено"),
            ListItem(iconName: "music.note.house", name: "Домашняя коллекция"),
        ]
    }
}
