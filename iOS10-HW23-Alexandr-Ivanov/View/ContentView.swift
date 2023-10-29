import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LibraryView()
                .tabItem {
                    Image(systemName: "music.note.house.fill")
                    Text("Медиатека")
                }
            RadioView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .systemGray6
            UITabBar.appearance().barTintColor = .systemGray6
        }
        .tint(.red)
        .overlay(alignment: .bottom) {
            PlayerView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
