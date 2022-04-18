//
//  ContentView.swift
//  Shared
//
//  Created by Takahiro Chiba on 2022/04/17.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    //検索キーワード
    let searchkey:String
    
    //表示するViewを作成するときに実行
    func makeUIView(context: Context) -> MKMapView{
        //MKMapViewのインスタンス生成
        MKMapView()
    }
    //表示したViewが更新されるたびに実行
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        //入力された文字をデバッグエリアに表示
        print(searchkey)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchkey: "東京タワー")
    }
}
