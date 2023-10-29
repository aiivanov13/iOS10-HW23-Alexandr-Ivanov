import SwiftUI

struct PlayerFullView: View {
    @Binding private var isPresented: Bool
    @Binding private var volume: CGFloat
    @Binding private var musicDateRange: ClosedRange<Date>
    @Binding private var title: String
    @Binding private var artist: String
    @Binding private var imageName: String
    @State private var verticalPosition = 0.0
    
    init(
        isPresented: Binding<Bool>,
        volume: Binding<CGFloat>,
        musicDateRange: Binding<ClosedRange<Date>>,
        title: Binding<String>,
        artist: Binding<String>,
        imageName: Binding<String>
    ) {
        self._isPresented = isPresented
        self._volume = volume
        self._musicDateRange = musicDateRange
        self._title = title
        self._artist = artist
        self._imageName = imageName
    }
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.brown, .gray],
                           startPoint: .bottomLeading,
                           endPoint: .topTrailing
            )
            .ignoresSafeArea(edges: .all)
            
            VStack {
                Spacer()
                
                Image(imageName)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(11)
                    .shadow(radius: 20, y: 8)
                
                Spacer()
                
                ProgressView(timerInterval: musicDateRange, countsDown: false) {
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text(title)
                                .fontWeight(.black)
                            
                            Text(artist)
                                .opacity(0.8)
                                .fontWeight(.semibold)
                        }
                        .lineLimit(1)
                        .font(.system(size: 23))
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis.circle.fill")
                                .symbolRenderingMode(.hierarchical)
                                .dynamicTypeSize(.accessibility2)
                        }
                    }
                    .padding(.bottom, 16)
                } currentValueLabel: {
                    HStack {
                        Text(timerInterval: musicDateRange, countsDown: false)
                        
                        Spacer()
                        
                        Text(timerInterval: musicDateRange)
                    }
                    .opacity(0.8)
                }
                .backgroundStyle(.clear)
                .padding(.horizontal)
                
                HStack {
                    Spacer()
                    
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "backward.fill")
                            .symbolRenderingMode(.hierarchical)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "play.fill")
                            .symbolRenderingMode(.hierarchical)
                            .dynamicTypeSize(.accessibility5)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "forward.fill")
                            .symbolRenderingMode(.hierarchical)
                    }
                    
                    Spacer()
                    
                }
                .dynamicTypeSize(.accessibility2)
                .padding(.vertical, 40)
                
                HStack(alignment: .center) {
                    Image(systemName: "speaker.fill")
                    
                    Slider(value: $volume) { }
                    
                    Image(systemName: "speaker.wave.3.fill")
                }
                .opacity(0.8)
                .padding(.horizontal)
                
                HStack {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "quote.bubble")
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "airplayaudio")
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "list.bullet")
                    }
                    
                    Spacer()
                }
                .opacity(0.8)
                .dynamicTypeSize(.xxxLarge)
                .fontWeight(.bold)
                .padding(.top)
            }
            .foregroundStyle(.background)
            .padding()
            .tint(.white)
        }
        
        .offset(
            y: verticalPosition
        )
        .gesture(getDragGesture())
        .transition(.slide)
    }
    
    private func getDragGesture() -> some Gesture {
        return DragGesture()
            .onChanged { value in
                verticalPosition = value.translation.height < 0 ? 0 : value.translation.height
            }
            .onEnded { value in
                if value.translation.height > UIScreen.main.bounds.height / 3 {
                    withAnimation(.linear(duration: 0.1)) {
                        isPresented.toggle()
                    }
                } else {
                    withAnimation(.linear(duration: 0.1)) {
                        verticalPosition = .zero
                    }
                }
            }
    }
}

struct PlayerFullView_Previews: PreviewProvider {
    @State static var showingSheet = false
    @State static var volume: CGFloat = 0.0
    @State static var musicDateRange = Date()...Date().addingTimeInterval(4 * 60 + 12)
    @State static var title = "Улетай на крыльях ветраdfdf"
    @State static var artist = "Евгения Сотникова"
    @State static var imageName = "station1"
    
    static var previews: some View {
        PlayerFullView(isPresented: $showingSheet, volume: $volume, musicDateRange: $musicDateRange, title: $title, artist: $artist, imageName: $imageName)
    }
}
