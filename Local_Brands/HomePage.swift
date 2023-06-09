//
//  HomePage.swift
//  Local_Brands
//
//  Created by Fatima Alismail on 14/11/1444 AH.
//

import SwiftUI
import AVKit

struct HomePage: View {
    
    let link = URL(string: "https://www.hackingwithswift.com")!
    @State private var showingDetail = false

    @State var isShowingSheet: Bool = false
    @State var isShowingFullScreen: Bool = false
    @State var isShowingFullScreen1: Bool = false
    @State private var isLiked = false


    @State var index = 0
    @State var top = 0
    @State var date = [
        
        Video(id: 0, player: AVPlayer (url: URL(fileURLWithPath: Bundle.main.path(forResource: "Video9", ofType: ".MP4")!)), replay: false),
        Video(id: 1, player: AVPlayer (url: URL(fileURLWithPath: Bundle.main.path(forResource: "Video8", ofType: ".MP4")!)), replay: false),
        Video(id: 2, player: AVPlayer (url: URL(fileURLWithPath: Bundle.main.path(forResource: "Video7", ofType: ".MP4")!)), replay: false),

        
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                
                PlayerScrollView(date: self.$date)
                
                VStack{
                    
                    HStack(alignment: .lastTextBaseline) {
//                        .spacing:17
                       
//                        Button {
//                            isShowingFullScreen.toggle()
//
//
//                        } label: {
                            
                            NavigationLink(destination:    SearchPage(text: "")) {
                                Image(systemName: "magnifyingglass.circle" )
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .padding(.trailing,80)
//                            }
                        }
                        Button(action: {
                            
                            self.top = 0
                        
                        
                        }){
                            
                            NavigationLink(destination: Favorite()
                                .navigationBarBackButtonHidden(true)) {
                                Text ("مفضلتك")
                                
                            }
                            .foregroundColor(self.top == 1 ? .white : Color.white.opacity(0.45 ))
                            .navigationBarBackButtonHidden(true)
                            
                            Button(action: {
                                
                                self.top = 1
                                
                            }){
                                
                                
                                Text("لك")
                                    .foregroundColor(self.top == 0 ? .white : Color.white.opacity(0.45 ))
                                    .fontWeight(self.top == 0 ? .bold : .none)
                                    .padding(.vertical)

                                
                                
                                
                            }
                            
                        }
//                            Text("Favorite")
//                                .foregroundColor(self.top == 0 ? .white : Color.white.opacity(0.45 ))
//                                .fontWeight(self.top == 0 ? .bold : .none)
//                                .padding(.vertical)
                            
                        
                        Button {
                            isShowingFullScreen1.toggle()
//                            DismissingView1()
                        } label: {
                            Image(systemName: "person.circle" )
                                .foregroundColor(.white)
                                .font(.title)

                            .padding(.leading,80)}
                    }
                    
                    Spacer()
                    
                    HStack{
                        
                        Spacer()
                        
                        VStack(spacing: 20){
                            
                            Button(action: {
                                
                            }) {
                                NavigationLink(destination: ContentView()
                                    .navigationBarBackButtonHidden(true)){
                                    Text("")
                                    
                                    
                                    Image("0")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 45,height:45)
                                    .clipShape(Circle())}
                            }
                            Button {
                                self.isLiked.toggle()
                            } label: {
                                ZStack{
                                    image(Image(systemName: "heart.fill"), show: isLiked)
                                    image(Image(systemName: "heart"), show: !isLiked)
                                }
                            }
//                            Button(action: {
//
//                            }){
//                                VStack(spacing : 8){
//
//                                    Image(systemName: "suit.heart")
//                                        .font(.title)
//                                        .foregroundColor(.white)
//
//
//                                }
//                            }
                            //                        Button(action: {
                            //
                            //                        }){
                            //                            VStack(spacing :8){
                            //
                            //                                Image(systemName: "message.fill")
                            //                                    .font(.title)
                            //                                    .foregroundColor(.white)
                            //
                            //
                            //                                Text("1021")
                            //                                    .foregroundColor(.white)
                            //                            }
                            //                        }
                            
                            ShareLink(item: link) {
                                Label("", systemImage: "arrowshape.turn.up.forward")
                            }   .font(.title)
                            .foregroundColor(.white)

                            
                            Button(action: {
                                isShowingSheet.toggle()
                            }) {
                                
                                
                                
                                
//                                VStack(spacing :8){
//                                    
//                                    Image(systemName: "arrowshape.turn.up.forward")
//                                        .font(.title)
//                                        .foregroundColor(.white)
//                                    
//                                    
//                                    Text("share")
//                                        .foregroundColor(.white)
//                                    
//                                }
                            }
                        }
                        
                        
                        
                        .padding(.bottom,55)
                        .padding(.trailing)
                        
                      
                        
                    }
                    HStack{
                        Spacer()
                        See_More_Details()
                    }
                    HStack(spacing : 0){
                        
                        Button (action:{
                            
                            self.index = 0
                            
                        })  {
                            
                            Image("heart")
                                .resizable()
                                .frame(width: 25 , height: 25)
                                .foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                                .padding(.horizontal)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button (action:{
                            
                            self.index = 1
                            
                        })  {
                            
                            //                        Image("Share")
                            //                            .resizable()
                            //                            .frame(width: 25 , height: 25)
                            //                            .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                            //                            .padding(.horizontal)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button (action:{
                            
                            self.index = 2
                            
                        })  {
                            
                            Image("Pic")
                                .resizable()
                                .frame(width: 25 , height: 25)
                                .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.35))
                            
                        }
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.top,50)
                .padding(.bottom,50)
                
            }
            
            .background(Color.black.edgesIgnoringSafeArea(.all))
//            .edgesIgnoringSafeArea(.all)
            .ignoresSafeArea(.all)
        }
        .sheet(isPresented: $isShowingSheet){
            share()
            
              
                  
        }.fullScreenCover(isPresented: $isShowingFullScreen1) {
            Signin( isShowingFullScreen1: $isShowingFullScreen1)
        }
//          .fullScreenCover(isPresented: $isShowingFullScreen) {
//            SearchBar()
    }
    
    struct PlayerView : View {
        
        @Binding var date : [Video]
        
        var body: some View {
            
            VStack(spacing :0){
                
                ForEach(0..<self.date.count){i in
                    
                    ZStack{
                        
                        Player(player: self.date[i].player)
                        
                        
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            .offset(y: -12.5)
                        
                        if self.date[i].replay{
                            
                            Button(action: {
                                
                                self.date[i].replay = false
                                self.date[i].player.seek(to: .zero)
                                self.date[i].player.play()
                                
                            })  {
                                
                                Image(systemName: "goforward")
                                    .resizable()
                                    .frame(width: 55,height: 60)
                                    .foregroundColor(.white)
                                
                            }
                        }
                        
                    }
                    
                }
                
            }
            .onAppear{
                
                
                self.date[0].player.play()
                
                self.date[0].player.actionAtItemEnd = .none
                
                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.date[0].player.currentItem,  queue: .main ) { (_) in
                    
                    
                    self.date[0].replay = true
                }
            }
            
        }
    }
    
    struct Player : UIViewControllerRepresentable {
        
        var player : AVPlayer
        
        func makeUIViewController(context: Context) -> AVPlayerViewController {
            
            let view = AVPlayerViewController()
            view.player = player
            view.showsPlaybackControls = false
            view.videoGravity = .resizeAspectFill
            return view
        }
        
        func updateUIViewController(_ uiViewController: AVPlayerViewController,  context: Context) {
            
        }
    }
    
    class Host : UIHostingController<HomePage>{
        
        override var preferredStatusBarStyle: UIStatusBarStyle {
            
            return .lightContent
        }
    }
    
    struct Video : Identifiable {
        
        var id : Int
        var player : AVPlayer
        var replay : Bool
    }
    
    
    
    
    struct PlayerScrollView : UIViewRepresentable {
        
        
        func makeCoordinator() -> Coordinator {
            
            return PlayerScrollView.Coordinator(parent1: self)
            
        }
        
        
        @Binding var date : [Video]
        
        func makeUIView(context: Context) -> UIScrollView {
            
            let view = UIScrollView()
            
            let childView = UIHostingController(rootView: PlayerView(date : self.$date))
            
            childView.view .frame = CGRect (x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat ((date.count)))
            
            
            view.contentSize = CGSize (width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat ((date.count)))
            
            
            view.addSubview(childView.view)
            view.showsVerticalScrollIndicator = false
            view.showsHorizontalScrollIndicator = false
            
            view.contentInsetAdjustmentBehavior = .never
            view.isPagingEnabled = true
            view.delegate = context.coordinator
            
            return view
            
        }
        
        func updateUIView(_ uiView: UIScrollView, context: Context) {
            
            uiView.contentSize = CGSize (width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat ((date.count)))
            for i in 0..<uiView.subviews.count{
                
                uiView.subviews[i].frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat ((date.count)))
            }
            
        }
        class Coordinator : NSObject,UIScrollViewDelegate{
            
            var parent : PlayerScrollView
            var index = 0
            
            init(parent1: PlayerScrollView) {
                parent = parent1
                
            }
            
            func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
                
                let currenindex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
                
                if index != currenindex{
                    
                    index = currenindex
                    
                    for i in 0..<parent.date.count{
                        
                        parent.date[i].player.seek(to: .zero)
                        parent.date[i].player.pause()
                    }
                    
                    parent.date[index].player.play()
                    
                    parent.date[index].player.actionAtItemEnd = .none
                    
                    NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: parent.date[index].player.currentItem,  queue: .main ) { (_) in
                        
                        
                        self.parent.date[self.index].replay = true
                    }
                }
            }
        }
    }
    func image(_ image: Image, show: Bool) -> some View { image
        .tint(isLiked ? .red : .white)
        .font(.system(size:30))
        .scaleEffect(show ? 1 : 0)
        .opacity(show ? 1 : 0)
        .animation(.interpolatingSpring(stiffness: 170, damping: 15), value: show)
    }
    }
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }

