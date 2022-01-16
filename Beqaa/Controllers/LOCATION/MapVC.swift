//
//  ResultsViewController.swift
//  Beqaa
//
//  Created by hana Alshammri on 28/05/1443 AH.
//
import MapKit
import CoreLocation



class MapVC: UIViewController, CLLocationManagerDelegate {
    
    let manager = CLLocationManager()
    
    @IBOutlet weak var Map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            manager.delegate = self
            manager.desiredAccuracy = kCLLocationAccuracyBest
        }
        manager.requestLocation()
        Map.showsUserLocation = true
        let initialLocation = CLLocation(latitude: 27.51586, longitude: 41.69509)
        setStartLocation(location: initialLocation, distance: 1000)
        addAnnotation()
    }
    
    //Initializing the site
    func setStartLocation(location: CLLocation, distance: CLLocationDistance) {
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        Map.setRegion(region, animated: true)
        Map.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 300000)
        Map.setCameraZoomRange(zoomRange, animated: true)
        
    }
    //Add the coordinates of the required mosques, coordinate number X and Y
    func addAnnotation() {
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 27.500900903644123,  longitude: 41.67280815912646)
        pin.title = "Mosque Al-Rajhi"
        Map.addAnnotation(pin)
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: 27.564178969999023 , longitude:  41.688408553803676)
        pin2.title = "Mosque Al-Ali"
        Map.addAnnotation(pin2)
        
        let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2D(latitude: 27.47757, longitude: 41.65505)
        pin3.title = "Mosque"
        Map.addAnnotation(pin3)
        
        let pin4 = MKPointAnnotation()
        pin4.coordinate = CLLocationCoordinate2D(latitude: 27.54806, longitude: 41.67111)
        pin4.title = "Mosque "
        Map.addAnnotation(pin4)
        
        let pin5 = MKPointAnnotation()
        pin5.coordinate = CLLocationCoordinate2D(latitude: 27.54589, longitude: 41.66795)
        pin5.title = "Mosque"
        Map.addAnnotation(pin5)
        
        let pin6 = MKPointAnnotation()
        pin6.coordinate = CLLocationCoordinate2D(latitude: 24.57938, longitude: 46.62813)
        pin6.title = "Mosque "
        Map.addAnnotation(pin6)
        
        let pin7 = MKPointAnnotation()
        pin7.coordinate = CLLocationCoordinate2D(latitude: 24.59808, longitude: 46.58668)
        pin7.title = "Mosque "
        Map.addAnnotation(pin7)
        
        let pin8 = MKPointAnnotation()
        pin8.coordinate = CLLocationCoordinate2D(latitude: 24.74735412547737,  longitude: 46.57420690687876)
        pin8.title = "Imam Turki bin Abdullah Mosque "
        Map.addAnnotation(pin8)
        
        let pin9 = MKPointAnnotation()
        pin9.coordinate = CLLocationCoordinate2D(latitude: 27.5132, longitude: 41.7201)
        pin9.title = "Mosque "
        Map.addAnnotation(pin9)
        
        let pin10 = MKPointAnnotation()
        pin10.coordinate = CLLocationCoordinate2D(latitude: 21.423292774265953, longitude: 39.82574624825726)
        pin10.title = " Al-Haram Mosque"
        Map.addAnnotation(pin10)
        
        let pin11 = MKPointAnnotation()
        pin11.coordinate = CLLocationCoordinate2D(latitude: 24.46801703632462, longitude:  39.61106872618502)
        pin11.title = "Prophet's Mosque "
        Map.addAnnotation(pin11)
        
    }
}

extension MapVC {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            print("Found user's location: \(location)", "lat =", location.coordinate.latitude," long = ",location.coordinate.longitude)
            //marker
            let marker1 = MKPointAnnotation()
            marker1.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
            marker1.title = "My Position"
            Map.addAnnotation(marker1)
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Failed to find user's location: \(error.localizedDescription)")
    }
}


