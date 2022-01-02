//
//  ResultsViewController.swift
//  Beqaa
//
//  Created by hana Alshammri on 28/05/1443 AH.
//

import UIKit
import MapKit
import CoreLocation
class ResultsViewController: UIViewController, CLLocationManagerDelegate {
  let manager = CLLocationManager()
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
    super.viewDidLoad()
    manager.requestWhenInUseAuthorization()
    if CLLocationManager.locationServicesEnabled() {
      manager.delegate = self
      manager.desiredAccuracy = kCLLocationAccuracyBest
    }
    manager.requestLocation()
    mapView.showsUserLocation = true
    let initialLocation = CLLocation(latitude: 55432, longitude: 7732)
    setStartLocation(location: initialLocation, distance: 1000)
    addAnnotation()
  }
    
func setStartLocation(location: CLLocation, distance: CLLocationDistance) {
    let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
    mapView.setRegion(region, animated: true)
    mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
    let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 300000)
    mapView.setCameraZoomRange(zoomRange, animated: true)
  }
    
  func addAnnotation() {
    let pin = MKPointAnnotation()
      pin.coordinate = CLLocationCoordinate2D(latitude: 27.498843, longitude: 41.672135)
    pin.title = "Your Location"
    mapView.addAnnotation(pin)
      
      let pin1 = MKPointAnnotation()
        pin1.coordinate = CLLocationCoordinate2D(latitude: 27.51586, longitude: 41.69509)
        mapView.addAnnotation(pin)
      
    let pin2 = MKPointAnnotation()
      pin2.coordinate = CLLocationCoordinate2D(latitude: 27.56404, longitude: 41.68835)
      mapView.addAnnotation(pin)
      
      let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2D(latitude: 27.47757, longitude: 41.65505)
        mapView.addAnnotation(pin3)
      
      let pin4 = MKPointAnnotation()
        pin4.coordinate = CLLocationCoordinate2D(latitude: 27.54806, longitude: 41.67111)
        mapView.addAnnotation(pin4)
      
      let pin5 = MKPointAnnotation()
        pin5.coordinate = CLLocationCoordinate2D(latitude: 27.54589, longitude: 41.66795)
        mapView.addAnnotation(pin5)
      
      let pin6 = MKPointAnnotation()
      pin6.coordinate = CLLocationCoordinate2D(latitude: 24.57938, longitude: 46.62813)
        mapView.addAnnotation(pin6)
      
      let pin7 = MKPointAnnotation()
        pin7.coordinate = CLLocationCoordinate2D(latitude: 24.59808, longitude: 46.58668)
        mapView.addAnnotation(pin7)
      
      let pin8 = MKPointAnnotation()
      pin8.coordinate = CLLocationCoordinate2D(latitude: 24.74645, longitude: 46.57434)
        mapView.addAnnotation(pin8)
      
      let pin9 = MKPointAnnotation()
        pin9.coordinate = CLLocationCoordinate2D(latitude: 27.5132, longitude: 41.7201)
        mapView.addAnnotation(pin9)
      
      let pin10 = MKPointAnnotation()
        pin10.coordinate = CLLocationCoordinate2D(latitude: 21.42307, longitude: 39.82573)
        mapView.addAnnotation(pin10)
      
      let pin11 = MKPointAnnotation()
      pin10.coordinate = CLLocationCoordinate2D(latitude: 24.46741, longitude: 39.61120)
        mapView.addAnnotation(pin11)
    
  }
}
extension ResultsViewController {
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    if let location = locations.first {
      print("Found user's location: \(location)", "lat =", location.coordinate.latitude," long = ",location.coordinate.longitude)
      //marker
      let marker1 = MKPointAnnotation()
      marker1.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
      marker1.title = "My Position"
      mapView.addAnnotation(marker1)
    }
  }
  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print("Failed to find user's location: \(error.localizedDescription)")
  }
}

  
