//
//  ObjectDataSource.swift
//  ProudMD
//
//  Created by Leah Headd on 5/6/16.
//  Copyright © 2016 CS470. All rights reserved.
//

import UIKit

class ObjectDataSource: NSObject {

    var objects: [AnyObject]
    
    init(dataSource: [AnyObject]) {
        objects = dataSource
        super.init()
    }
    
    func numObjects() -> Int{
        return objects.count
    }
    
    func printObjects() {
        for i in 0...objects.count - 1 {
            print("")
            print("Type: ", Object(object: objects[i]).getType()!)
            print("Name: ", Object(object: objects[i]).getName()!)
            print("Address: ", Object(object: objects[i]).getAddress()!)
        }
    }
    
    func getObjects() -> AnyObject {
     return objects
    }
    
    func objectWithName(name: String) -> Object? {
        for i in 0...numObjects(){
            if Object(object: objects[i]).getName()! == name {
                return objects[i] as! Object
            }
        }
        return nil
    }
    
}
