//
//  ContentView.swift
//  SwiftUIRaywenderlich
//
//  Created by Ruslan on 02.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisiable:Bool = false
    @State private var sliderValue: Double = 50
    @State private var game: Game = Game()
    var body: some View {
        
        ZStack{
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
        
        VStack{
            Text("😃😃😃\nput the  bullseye as close as you can to").bold().kerning(2.0).multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote).foregroundColor(Color("TextColor"))
            Text(String(game.target)).bold().kerning(-1).fontWeight(.black).multilineTextAlignment(.center).lineSpacing(4.0).font(.largeTitle).foregroundColor(Color("TextColor"))
            HStack {
                Text("0").bold().foregroundColor(Color("TextColor"))
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("105").bold().foregroundColor(Color("TextColor"))
            }.padding()
            
            Button(action: {self.alertIsVisiable = true}) {
                Text("Нажми на меня".uppercased()).bold().font(.title3)
            }
            .padding(20.0)
            .background(ZStack{
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            })
            .foregroundColor(Color.white)
            .cornerRadius(21)
            
            
            .alert(isPresented: $alertIsVisiable) {
                var roundedValue: Int = Int(self.sliderValue)
                return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue)." + "You scored \(self.game.point(sliderValue: roundedValue))points this round."), dismissButton: .default(Text("Awesome")))
            }}
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        ContentView().preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)
    }
}
