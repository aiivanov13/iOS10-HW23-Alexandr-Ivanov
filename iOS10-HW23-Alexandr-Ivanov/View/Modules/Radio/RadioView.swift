import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan.edgesIgnoringSafeArea(.top)
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
