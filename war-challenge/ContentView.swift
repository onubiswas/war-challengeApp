//
//  ContentView.swift
//  war-challenge
//
//  Created by Anupama Biswas on 27/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var PlayerCard = "card4"
    @State private var CpuCard = "card6"
    @State private var PlayerScore = 0
    @State private var CpuScore = 0
    
    
    
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image(PlayerCard)
                        .padding()
                    Spacer()
                    Image(CpuCard)
                        .padding()
                    Spacer()
                    
                }
                .padding()
                Spacer()
                
                Button(action:  {
                    let PlayerRand = Int.random(in: 2...14)
                    let CpuRand = Int.random(in: 2...14)
                    PlayerCard = "card" + String(PlayerRand)
                    CpuCard = "card" + String(CpuRand)
                    
                    
                    if PlayerRand > CpuRand {
                        PlayerScore += 1
                    }else if PlayerRand < CpuRand{
                        CpuScore += 1
                    }
                    
                     
                    
                }, label:  {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(PlayerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(CpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
