//
//  MapDetailViewController.swift
//  ProudMD
//
//  Created by student on 4/22/16.
//  Copyright © 2016 CS470. All rights reserved.
//

import Foundation
import MapKit

extension MapViewController: MKMapViewDelegate {
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        if let annotation = annotation as? MapDetail {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
                as? MKPinAnnotationView {
                    dequeuedView.annotation = annotation
                    view = dequeuedView
                    view.pinColor = annotation.pinColor()
            } else {
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton(type:UIButtonType.DetailDisclosure) as! UIView
                view.pinColor = annotation.pinColor()
            }
            return view
        }
        return nil
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "AnnotationDetail" {
            if let destinationVC = segue.destinationViewController as? AnnotationDetailViewController {
                let annotation = self.mapView.selectedAnnotations[0]
                destinationVC.titleStr = (annotation as! MapDetail).title!
                destinationVC.addressStr = (annotation as! MapDetail).address
                destinationVC.phoneStr = (annotation as! MapDetail).phone
                destinationVC.webStr = (annotation as! MapDetail).web
                destinationVC.notesStr = (annotation as! MapDetail).notes
            }
        }
    }
    
}