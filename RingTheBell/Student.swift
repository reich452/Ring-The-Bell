//
//  Student.swift
//  RingTheBell
//
//  Created by Nick Reichard on 4/12/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import Foundation

class Student: NSObject {
    
    override init() {
        super.init()
        
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: "firstBellRang", name: NSNotification.Name(rawValue: FirstBellNotificationName), object: nil)
        nc.addObserver(self, selector: "firstBellRang", name: NSNotification.Name(rawValue: LastBellNotificationName), object: nil)
    }
    
    func firstBellRang(notification: NSNotification) {
        print("Hurry to first period")
    }
    
    func lastBellRang(notification: NSNotification) {
        print("Get on the bus")
    }

}
