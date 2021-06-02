//
//  ContentView.swift
//  Bullseye
//
//  Created by Qifan YANG on 04/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisble : Bool = false
    @State private var sliderValue: Double = 50.0
    
    @State private var game: Game = Game()
    
    
    //property in contentview
    //var -> have ability to change the attributes
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \n Put the BullsEye as close as you can to")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            
            Button(action: {
                print("click button")
                alertIsVisble = true
            }) {
                Text("Hit me")
            }
            //$ -> binding state to varaible <---> alertIsVisble binding into state
            // so ->$alertIsVisble ==  isPresneted
            .alert(isPresented: $alertIsVisble, content: {
                print("=== \(alertIsVisble)")
                let roundedValue :Int = Int(sliderValue.rounded())
                return Alert(
                    title: Text("Hello there"),
                    message: Text("The slider value is \(roundedValue) \n" + "You scored \(game.points(sliderValue: roundedValue)) points this round"),
                    dismissButton: .default(
                        Text("Awesome"),
                        action: {print("after dismiss \(alertIsVisble)")}))
                        
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(PreviewLayout.fixed(width: 568, height: 320))
    }
}
