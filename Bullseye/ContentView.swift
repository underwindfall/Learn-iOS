//
//  ContentView.swift
//  Bullseye
//
//  Created by Qifan YANG on 04/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisble : Bool = false
    
    
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
            
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            
            Button(action: {
                print("click button")
                self.alertIsVisble = true
            }) {
                Text("Hit me")
            }
            //$ -> binding state to varaible <---> alertIsVisble binding into state
            // so ->$alertIsVisble ==  isPresneted
            .alert(isPresented: $alertIsVisble, content: {
                print("=== \(alertIsVisble)")
                return Alert(
                    title: Text("Hello there"),
                    message: Text("This is my first popup"),
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
