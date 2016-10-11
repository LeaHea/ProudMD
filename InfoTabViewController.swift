//
//  InfoTabViewController.swift
//  ProudMD
//
//  Created by Leah on 4/3/16.
//  Copyright © 2016 CS470. All rights reserved.
//

import UIKit

class InfoTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleLabel = UILabel(frame: CGRectMake(0,0,200,40))
        titleLabel.center = CGPointMake(180, 100)
        titleLabel.textAlignment = NSTextAlignment.Center
        titleLabel.font = UIFont(name: "Arial-Bold", size: 32)
        titleLabel.font = UIFont(name: (titleLabel.font?.fontName)!, size: 20)
        titleLabel.text = "Information"
        
        let description = UILabel(frame: CGRectMake(0,0,300,600))
        description.center = CGPointMake(UIScreen.mainScreen().bounds.width / 2.0, 250)
        description.font = UIFont(name: "Arial", size: 18)
        description.lineBreakMode = NSLineBreakMode.ByWordWrapping
        description.numberOfLines = 40
        description.textAlignment = NSTextAlignment.Left
        description.text = "Welcome to ProudMD, the only mobile application that allows users to locate LGBTQ-friendly medical facilities and healthcare practitioners. ProudMD is a student-created and developed application, originating at Sonoma State University. We want you to have a perfect experience with our application; For questions or suggestions, contact Leah Headd at headd@sonoma.edu."
        
        self.view.addSubview(titleLabel)
        self.view.addSubview(description)
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
