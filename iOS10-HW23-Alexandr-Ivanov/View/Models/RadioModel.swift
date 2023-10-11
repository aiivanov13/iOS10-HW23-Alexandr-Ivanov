import Foundation

struct RadioItem: Hashable {
    var title: String
    var description: String
    var imageName: String
    var stantionType: String?
}

extension RadioItem {
    static var items: [String: [RadioItem]] {
        [
            "favorites": [
                RadioItem(title: " ", description: "Коллекция радиошоу Beats 1", imageName: "station1", stantionType: "ЭКСКЛЮЗИВ"),
                RadioItem(title: "Популярное", description: "То, что слушают прямо сейчас.", imageName: "station2", stantionType: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                RadioItem(title: "Музыка для расслабления", description: "Электронная медитация.", imageName: "station3", stantionType: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                RadioItem(title: "Поп-музыка для тренировок", description: "Вперед и с музыкой.", imageName: "station4", stantionType: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                RadioItem(title: "Электронная музыка", description: "Пульт с лучшими треками.", imageName: "station5", stantionType: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                RadioItem(title: "Классика рока", description: "Гении гитарного звука.", imageName: "station6", stantionType: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                RadioItem(title: "Хип-Хоп", description: "Идеальные биты и рифмы.", imageName: "station7", stantionType: "ИЗБРАННАЯ РАДИОСТАНЦИЯ"),
                RadioItem(title: "Танцевальная музыка", description: "Современные и будущие хиты.", imageName: "station8", stantionType: "ИЗБРАННАЯ РАДИОСТАНЦИЯ")
            ],
            "stations" : [
                RadioItem(title: "Популярное", description: "То, что слушают прямо сейчас.", imageName: "station1"),
                RadioItem(title: "Музыка для расслабления", description: "Электронная медитация.", imageName: "station2"),
                RadioItem(title: "Классика", description: "Выдающиеся образцы жанра.", imageName: "station3"),
                RadioItem(title: "Классика электронной музыки", description: "Как рождался саунд будущего.", imageName: "station4"),
                RadioItem(title: "Классика рока", description: "Гении гитарного звука.", imageName: "station5"),
                RadioItem(title: "Хип-Хоп", description: "Идеальные биты и рифмы.", imageName: "station6")
            ]
        ]
    }
}
