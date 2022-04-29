//
//  ContentView.swift
//  MyMap (iOS)
//
//  Created by Takahiro Chiba on 2022/04/27.
//

import SwiftUI

struct ContentView: View {
    typealias Body = <#type#>
    
    //入力中の文字を保持する状態変数
    @State var inputText:String = ""
    //検索キーワードを保持する状態変数
    @State var disSearchKey:String = ""
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            TextField("キーワードを入力してください",
                      text: $inputText , onCommit: {
                dispSearchKey = inputText
                
                print("入力したキーワード" + dispSearchKey)
            })
            .padding()
        }
    }
}
