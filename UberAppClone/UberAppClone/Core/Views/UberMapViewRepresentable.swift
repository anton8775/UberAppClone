//
//  UberMapViewRepresentable.swift
//  UberAppClone
//
//  Created by Антон Яценко on 02.11.2022.
//

import SwiftUI
import MapKit

struct UberMapViewRepresentable: UIViewRepresentable {
    
    let MapView = MKMapView()
    
    func makeUIView(context: Context) -> some UIView {
        MapView.isRotateEnabled = false
        MapView.showsUserLocation = true
        MapView.userTrackingMode = .follow
        
        return MapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
    
    func makeCoordinator() -> MapCoordinator {
       return MapCoordinator(parent: self)
    }
}

extension UberMapViewRepresentable {
    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: UberMapViewRepresentable
        
        init(parent: UberMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
    }
}
