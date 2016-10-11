//
//  AnnotationDetailViewController.swift
//  ProudMD
//
//  Created by Leah on 4/28/16.
//  Copyright © 2016 CS470. All rights reserved.
//

import UIKit

class AnnotationDetailViewController: UIViewController {

    var titleStr:String = ""
    var addressStr:String = ""
    var phoneStr:String = ""
    var webStr:String = ""
    var notesStr:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = titleStr
    
        let description = UILabel(frame: CGRectMake(0,0,100,40))
        description.center = CGPointMake(65, 100)
        description.textAlignment = NSTextAlignment.Left
        description.font = UIFont(name: "Arial-Bold", size: 16)
        description.font = UIFont(name: (description.font?.fontName)!, size: 16)
        description.text = "Description:"
        
        let address = UILabel(frame: CGRectMake(0,0,70,40))
        address.center = CGPointMake(55, 130)
        address.textAlignment = NSTextAlignment.Right
        address.font = UIFont(name: "Arial", size: 14)
        address.font = UIFont(name: (address.font?.fontName)!, size: 14)
        address.text = "Address:"
        
        let addressStrLabel = UILabel(frame: CGRectMake(0,0,220,40))
        addressStrLabel.center = CGPointMake(210, 140)
        addressStrLabel.textAlignment = NSTextAlignment.Left
        addressStrLabel.font = UIFont(name: "Arial", size: 14)
        addressStrLabel.font = UIFont(name: (address.font?.fontName)!, size: 14)
        addressStrLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        addressStrLabel.numberOfLines = 2
        addressStrLabel.text = addressStr
        
        let phone = UILabel(frame: CGRectMake(0,0,70,40))
        phone.center = CGPointMake(55, 180)
        phone.textAlignment = NSTextAlignment.Right
        phone.font = UIFont(name: "Arial", size: 14)
        phone.font = UIFont(name: (phone.font?.fontName)!, size: 14)
        phone.text = "Phone:"
        
        let phoneStrLabel = UILabel(frame: CGRectMake(0,0,220,40))
        phoneStrLabel.center = CGPointMake(210, 180)
        phoneStrLabel.textAlignment = NSTextAlignment.Left
        phoneStrLabel.font = UIFont(name: "Arial", size: 14)
        phoneStrLabel.font = UIFont(name: (address.font?.fontName)!, size: 14)
        phoneStrLabel.text = phoneStr
        
        let website = UILabel(frame: CGRectMake(0,0,70,40))
        website.center = CGPointMake(55, 230)
        website.textAlignment = NSTextAlignment.Right
        website.font = UIFont(name: "Arial", size: 14)
        website.font = UIFont(name: (website.font?.fontName)!, size: 14)
        website.text = "Website:"
        
        let webStrLabel = UILabel(frame: CGRectMake(0,0,220,40))
        webStrLabel.center = CGPointMake(210, 240)
        webStrLabel.textAlignment = NSTextAlignment.Left
        webStrLabel.font = UIFont(name: "Arial", size: 14)
        webStrLabel.font = UIFont(name: (address.font?.fontName)!, size: 14)
        webStrLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        webStrLabel.numberOfLines = 2
        webStrLabel.text = webStr
        
        /*let hours = UILabel(frame: CGRectMake(0,0,70,40))
        hours.center = CGPointMake(55, 220)
        hours.textAlignment = NSTextAlignment.Right
        hours.font = UIFont(name: "Arial", size: 14)
        hours.font = UIFont(name: (hours.font?.fontName)!, size: 14)
        hours.text = "Hours:"*/
        
        let notes = UILabel(frame: CGRectMake(0,0,70,40))
        notes.center = CGPointMake(50, 300)
        notes.textAlignment = NSTextAlignment.Left
        notes.font = UIFont(name: "Arial-Bold", size: 16)
        notes.font = UIFont(name: (notes.font?.fontName)!, size: 16)
        notes.text = "Notes:"
        
        let notesStrLabel = UILabel(frame: CGRectMake(0,0,300,400))
        notesStrLabel.center = CGPointMake(200, 350)
        notesStrLabel.textAlignment = NSTextAlignment.Left
        notesStrLabel.font = UIFont(name: "Arial", size: 14)
        notesStrLabel.font = UIFont(name: (address.font?.fontName)!, size: 14)
        notesStrLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        notesStrLabel.numberOfLines = 40
        notesStrLabel.text = notesStr
    
        self.view.addSubview(description)
        self.view.addSubview(address)
        self.view.addSubview(phone)
        self.view.addSubview(website)
        //self.view.addSubview(hours)
        self.view.addSubview(notes)
        self.view.addSubview(addressStrLabel)
        self.view.addSubview(phoneStrLabel)
        self.view.addSubview(webStrLabel)
        self.view.addSubview(notesStrLabel)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
