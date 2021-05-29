//
//  ContentView.swift
//  janken
//
//  Created by 萩倉丈 on 2021/05/29.
//

import SwiftUI

struct ContentView: View {
    let janken = ["グー", "チョキ", "パー"]
    @State var result = ""
    @State var message = ""
    
    var body: some View {
        VStack {
            Text(result)
                .font(.largeTitle)
                .padding()
            Text(message)
            Button("グー") {
                let enemy = Int.random(in: 0...2)
                result = judge(meInt: 0, enemyInt: enemy)
                message = "自分は\(janken[0])，相手は\(janken[enemy])"
            }
            Button("チョキ") {
                let enemy = Int.random(in: 0...2)
                result = judge(meInt: 1, enemyInt: enemy)
                message = "自分は\(janken[1])，相手は\(janken[enemy])"
            }
            Button("パー") {
                let enemy = Int.random(in: 0...2)
                result = judge(meInt: 2, enemyInt: enemy)
                message = "自分は\(janken[2])，相手は\(janken[enemy])"
            }
        }
    }
}

func judge(meInt : Int, enemyInt : Int) -> String {
    if meInt == enemyInt {
        return "引き分け( ・∇・)"
    }else if (meInt == 0 && enemyInt == 1) || (meInt == 1 && enemyInt == 2) || (meInt == 2 && enemyInt == 0){
        return "かったお( ^ω^ )"
    }
    return "負けた( ；∀；)"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
