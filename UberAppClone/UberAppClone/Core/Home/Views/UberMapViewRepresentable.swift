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
    let locationManager = LocationManager()
    @EnvironmentObject var locationViewModel: LocationSearchViewModel
    
    func makeUIView(context: Context) -> some UIView {
        MapView.delegate = context.coordinator
        MapView.isRotateEnabled = false
        MapView.showsUserLocation = true
        MapView.userTrackingMode = .follow
        
        return MapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let coordinate = locationViewModel.selectedLocationCoordinate{
            context.coordinator.addAndSelectAnnotation(withCoordinate: coordinate)
        }
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
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude,
                                               longitude: userLocation.coordinate.longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            
            parent.MapView.setRegion(region, animated: true)
        }
        
        func addAndSelectAnnotation(withCoordinate coordinate: CLLocationCoordinate2D){
            parent.MapView.removeAnnotation(parent.MapView.annotations as! MKAnnotation)
            
            let anno = MKPointAnnotation()
            anno.coordinate = coordinate
            self.parent.MapView.addAnnotation(anno)
            self.parent.MapView.selectAnnotation(anno, animated: true)
            
            parent.MapView.showAnnotations(parent.MapView.annotations, animated: true)
        }
    }
}
