//
//  MapView.swift
//  Tests
//
//  Created by helenepetitjean on 10/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: UIViewRepresentable {
    @Binding var selectedRefugeAnnotation: RefugeAnnotation?
    @Binding var isActive: Bool
    var annotations: [RefugeAnnotation]
    
    /// Configuration point statique map localisation seulement sur Iphone pas sur Simulator !!!!
    
    let map = MKMapView()
    let locationManager = CLLocationManager()
    let departCoordinate = CLLocationCoordinate2D(latitude: 43.298973, longitude: 5.378508)
    let destinationCoordinate = CLLocationCoordinate2D(latitude: 43.297024, longitude: 5.379445)
    let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.3445, longitude: 5.38), latitudinalMeters: 20000, longitudinalMeters: 20000)
    
    
    func makeUIView(context: Context) -> MKMapView {
        
        /// Configuration itinéraire
        let departPin = MKPointAnnotation()
        departPin.coordinate = departCoordinate
        departPin.title = "DEPART "
        map.addAnnotation(departPin)
        
        let destinationPin = MKPointAnnotation()
        destinationPin.coordinate = destinationCoordinate
        destinationPin.title = " ARRIVEE"
        map.addAnnotation(destinationPin)
        
        let req = MKDirections.Request()
        req.source = MKMapItem(placemark: MKPlacemark(coordinate: departCoordinate))
        req.destination = MKMapItem(placemark: MKPlacemark(coordinate: destinationCoordinate))
        
        let directions = MKDirections(request: req)
        
        directions.calculate { (direct,err) in
            if err != nil{
                print((err?.localizedDescription)!)
            }
            
            let polyline = direct?.routes.first?.polyline
            self.map.addOverlay(polyline!)
            self.map.setRegion(MKCoordinateRegion(polyline!.boundingMapRect), animated: true)
            
        }
        
        
        /// Configuration Location Manager
        
        map.delegate = context.coordinator
        map.showsUserLocation = true
        map.addAnnotations(annotations)
     //   map.setCenter(annotations[0].coordinate, animated: true)
        map.showsUserLocation = true
        map.region = region
        
        let status = CLLocationManager.authorizationStatus()
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        if status == .authorizedAlways || status == .authorizedWhenInUse || CLLocationManager.locationServicesEnabled() {
            
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
            if let coor = map.userLocation.location?.coordinate {
                map.setCenter(coor, animated: true)
                let span = MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009)
                let region = MKCoordinateRegion(center: coor, span: span)
                map.setRegion(region, animated: true)
            }
        }
        
        return map
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        
    }
    
    func makeCoordinator() -> MapView.Coordinator {
        return MapView.Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate, CLLocationManagerDelegate {
        var parent: MapView
        
        init(parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            parent.selectedRefugeAnnotation = view.annotation as? RefugeAnnotation
            parent.isActive = true
        }
        
        func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
            parent.selectedRefugeAnnotation = nil
            parent.isActive = false
        }
        /// Fonction tracé
        func mapView(_ mapView: MKMapView,rendererFor overlay: MKOverlay) ->
            MKOverlayRenderer {
                
                let render = MKPolylineRenderer(overlay: overlay)
                render.strokeColor = .purple
                render.lineWidth = 4
                return render
        }
        
        /// Location Manager Delegate
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            print(locations)
            let location = locations.last
            let point = MKPointAnnotation()
            
            let georeader = CLGeocoder()
            georeader.reverseGeocodeLocation(location!) { (places, err) in
                
                if err != nil{
                    
                    print((err?.localizedDescription)!)
                    return
                }
                let place = places?.first?.locality
                point.title = place
                point.subtitle = "Current"
                point.coordinate = location!.coordinate
                self.parent.map.removeAnnotations(self.parent.map.annotations)
                self.parent.map.addAnnotation(point)
                
                let region = MKCoordinateRegion(center: location!.coordinate, latitudinalMeters: 5000, longitudinalMeters: 5000)
                self.parent.map.region = region
                
            }
        }
    }
}
