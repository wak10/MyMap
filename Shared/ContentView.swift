//
//  ContentView.swift
//  MyMap (iOS)
//
//  Created by Takahiro Chiba on 2022/04/27.
//

import SwiftUI

struct ContentView: View {
    
    //入力中の文字を保持する状態変数
    @State var inputText:String = ""
    //検索キーワードを保持する状態変数
    @State var disSearchKey:String = ""
    
    var body:some View{
        //垂直にレイアウト
        VStack{
            TextField("キーワードを入力してください",
                      text: $inputText , onCommit: {
                //入力が完了したので検索キーワードに設定する
                dispSearchKey = inputText
                //検索キーワードをデバッグエリアに出力する
                print("入力したキーワード" + dispSearchKey)
            })
            
            //余白を調整
            .padding()
        }//VStackここまで
    }//bodyここまで
}//Content Viewここまで
