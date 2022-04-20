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
        
        //MKPointAnnotationインスタンスを取得してピンを生成
        let pin = MKPointAnnotation()
        
        //ピンの置く場所に緯度経度を設定
        pin.coordinate = targetCoordinate
        //ピンのタイトルを設定
        pin.title = searchkey
        //ピンを地図に置く
        uiView.addAnnotation(pin)
        //緯度経度を中心に半径500mの範囲を表示
        uiView.region = MKCoordinateRegion(
            center: targetCoordinate,
            latitudinalMeters: 500.0,
            longitudinalMeters: 500.0
            )
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchkey: "東京タワー")
    }
}
