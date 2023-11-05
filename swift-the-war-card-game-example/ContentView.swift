//
//  ContentView.swift
//  swift-the-war-card-game-example
//
//  Created by Михаил Гайволя on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button{ deal() } label: { Image("button") }
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding()
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding()
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        if cpuCardValue > playerCardValue {
            cpuScore += 1
        } else {
            playerScore += 1
        }
    }
}

#Preview {
    ContentView()
}
