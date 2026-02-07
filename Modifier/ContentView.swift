//
//  ContentView.swift
//  Count
//
//  Created by Aoi Ueno on 2026/02/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    @State var result = ""
    
    var body: some View {
        VStack {
            Image("chikawa_chara")
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius:30))
            
            Text("\(result)")
                .frame(width: 300, height: 100)
                .font(.system(size: 32))
                .fontWeight(.black)
                .foregroundStyle(.green)
                .padding(.horizontal, 6)
                .padding(.vertical, 1)
                .clipShape(.capsule)
                .overlay {
                    Capsule()
                        .stroke(.green, lineWidth: 1)
                }
            Text("\(count)")
                .frame(width: 300, height: 100)
                .font(.system(size: 48))
                .foregroundColor(count > 0 ? .red :(count < 0 ? .blue : .black))
                .fontWeight(.bold)
            HStack{
                Button{
                    count = count + 1
                    if count >= 10 {
                        result = "プラスの勝ち！"
                    } else if count >= 5 {
                        result = "プラスの優勢！"
                    } else if count <= -10 {
                        result = "マイナスの勝ち！"
                    } else if count <= -5 {
                        result = "マイナスの優勢！"
                        
                    } else {
                        result = ""
                    }
                }label: {
                    Text("+")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 70, height: 70)
                        .background(.red)
                }
                Button{
                    count = count - 1
                    if count >= 10 {
                        result = "プラスの勝ち！"
                    } else if count >= 5 {
                        result = "プラスの優勢！"
                    } else if count <= -10 {
                        result = "マイナスの勝ち！"
                    } else if count <= -5 {
                        result = "マイナスの優勢！"
                    } else {
                        result = ""
                    }
                }label: {
                    Text("-")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 70, height: 70)
                        .background(.blue)
                }
            }
            Button {
                
            } label: {
                Label("共有", systemImage: "square.and.arrow.up")
                    .foregroundStyle(.white)
                    .padding()
                    .background(.green)
                    .clipShape(.rect(cornerRadius: 10))
            }
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
