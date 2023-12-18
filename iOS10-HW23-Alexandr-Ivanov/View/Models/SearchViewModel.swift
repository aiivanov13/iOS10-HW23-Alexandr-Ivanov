import Foundation

class SearchViewModel: ObservableObject {
    @Published var items = [SearchItem]()
    @Published var searchText: String = ""
    
    var filteredItems: [SearchItem] {
        guard !searchText.isEmpty else { return items }
        
        return items.filter { item in
            item.title.lowercased().contains(searchText.lowercased())
        }
    }
    
    init() {
        items = [
            SearchItem(title: "Улетай", author: "Jay Leemo", imageName: "station1", type: "Песня"),
            SearchItem(title: "Улетай на крыльях ветра", author: "Евгения Сотникова", imageName: "station2", type: "Песня"),
            SearchItem(title: "Бой", author: "Слот", imageName: "station3", type: "Песня"),
            SearchItem(title: "Никто не услышит", author: "Чайф", imageName: "station4", type: "Песня"),
            SearchItem(title: "Все в порядке", author: "Смысловые Галлюцинации", imageName: "station5", type: "Песня"),
            SearchItem(title: "Моя роза", author: "Заточка", imageName: "station6", type: "Песня"),
            SearchItem(title: "Иду", author: "Танцы Минус", imageName: "station7", type: "Песня"),
            SearchItem(title: "Лесник", author: "Король и Шут", imageName: "station8", type: "Песня"),
            SearchItem(title: "Гербарий", author: "Apple Music", imageName: "station1", type: "Плейлист", favorite: true),
            SearchItem(title: "Популярное", author: "Apple Music", imageName: "station2", type: "Плейлист", favorite: true),
            SearchItem(title: "Электронная музыка", author: "Apple Music", imageName: "station3", type: "Плейлист"),
            SearchItem(title: "Классика рока", author: "Apple Music", imageName: "station4", type: "Плейлист"),
            SearchItem(title: "Песни 80-90х", author: "Примус", imageName: "station5", type: "Альбом"),
            SearchItem(title: "Песни из советского кино: главное", author: "Apple Music", imageName: "station6", type: "Альбом"),
            SearchItem(title: "Песни для детей: главное", author: "Apple music для дейтей", imageName: "station7", type: "Альбом"),
            SearchItem(title: "Песни о любви 90х: главное", author: "Apple Music 90е", imageName: "station8", type: "Альбом")
        ]
    }
}
