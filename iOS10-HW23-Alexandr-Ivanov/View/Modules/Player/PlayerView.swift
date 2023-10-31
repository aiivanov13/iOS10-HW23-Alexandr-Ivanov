import SwiftUI

struct PlayerView: View {
    @State private var showingSheet = false
    @State private var volume: CGFloat = 0.0
    @State private var musicDateRange = Date()...Date().addingTimeInterval(4 * 60 + 12)
    @State private var title = "Улетай на крыльях ветра"
    @State private var artist = "Евгения Сотникова"
    @State private var imageName = "station1"
    
    var body: some View {
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .shadow(color: Color(UIColor.systemGray4), radius: 5, y: 4)
                        .cornerRadius(5)
                    
                    Spacer()
                    
                    Text(title)
                        .lineLimit(1)
                        .font(.system(size: 18))
                        .frame(width: 220, alignment: .leading)
                    
                    Spacer()
                    
                    Button(action: { },
                           label: {
                        Image(systemName: "play.fill")
                            .foregroundColor(.black)
                    })
                    
                    Spacer()
                    
                    Button(action: { },
                           label: {
                        Image(systemName: "forward.fill")
                            .foregroundColor(.black)
                    })
                    
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width, height: 65)
                .background(Color(UIColor.systemGray6))
                .padding()
                .onTapGesture {
                    withAnimation {
                        showingSheet.toggle()
                    }
                }
            }
            .dynamicTypeSize(.xxLarge)
            .padding(.bottom, 33)
            .fullScreenCover(isPresented: $showingSheet) {
                PlayerFullView(isPresented: $showingSheet, volume: $volume, musicDateRange: $musicDateRange, title: $title, artist: $artist, imageName: $imageName)
                    .presentationBackground(.clear)
            }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
