//
//  ContentView.swift
//  Bullseye
//
//  Created by Qifan YANG on 04/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("PUT the BullsEye as close as you can to \n🎯🎯🎯")
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
            }
            Button(action: {}) {
                Text("Hit me")
            }
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
