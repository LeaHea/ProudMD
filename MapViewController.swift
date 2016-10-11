//
//  MapViewController.swift
//  ProudMD
//
//  Created by Kelly on 4/3/16.
//  Copyright © 2016 CS470. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var objectsDS: ObjectDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // gets garbage from JSON file

        var dataFromJSON: [AnyObject]?
        
        let JSONText = getJSONText().dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
        
        dataFromJSON = try! NSJSONSerialization.JSONObjectWithData(JSONText!, options: []) as? [AnyObject]
        
        objectsDS = ObjectDataSource(dataSource: dataFromJSON!)
                
        title = "ProudMD"
        mapView.delegate = self
        let initialLocation = CLLocation(latitude: 37.773972, longitude: -122.500000)
        centerMapOnLocation(initialLocation)
        
        
        let objects = objectsDS?.getObjects()
        var mapAnnotations = [MapDetail]()
        if let numObjects = objectsDS?.numObjects() {
            for i in 0...(numObjects - 1) {
                let address = Object(object: objects![i]).getAddress()!
                let coordinates = CLLocationCoordinate2D(latitude: Object(object: objects![i]).getLat()!, longitude: Object(object: objects![i]).getLon()!)
                let name = Object(object: objects![i]).getName()!
                let phone = Object(object: objects![i]).getPhone()!
                let web = Object(object: objects![i]).getWebsite()!
                let des = Object(object: objects![i]).getNotes()!
                let locationType = Object(object: objects![i]).getType()!
                let mapDetail = MapDetail(name: name, address: address, phone: phone, website: web, description: des, type: locationType, coordinates: coordinates)
                mapAnnotations.append(mapDetail)
            }
        }
        self.mapView.addAnnotations(mapAnnotations)
    }
    
    func getJSONText() -> NSString{
        var contents = "nada, hombre"
        if let filepath = NSBundle.mainBundle().pathForResource("tinyData", ofType: "json") {
            do {
                contents = try NSString(contentsOfFile: filepath, usedEncoding: nil) as String
            } catch {
                print("JSON didn't load, yo")
            }
        } else {
            print("JSON def didn't load, yo")
        }
        
        return contents
    }
    
    // helper constant and function to specify rectangular region for zooming
    // location = center point
    // setRegion sets up region to be displayed in mapview
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        // regionRadius * larger numbers => more zoomed out
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius*110.0, regionRadius*1300.0) // zooms on all california
        //let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
          //  regionRadius*25.0, regionRadius*15.0) // zooms on SF
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func mapView(mapView: MKMapView!, annotationView: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        //get tag here
        if(annotationView.tag == 0){
            //Do for 0 pin
        }
        
        if control == annotationView.rightCalloutAccessoryView {
            performSegueWithIdentifier("AnnotationDetail", sender: self)
        }
    }

}
