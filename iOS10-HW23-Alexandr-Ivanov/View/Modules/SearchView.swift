import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.edgesIgnoringSafeArea(.top)
            }
            .navigationTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
