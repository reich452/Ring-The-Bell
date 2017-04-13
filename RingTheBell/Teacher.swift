//
//  Teacher.swift
//  RingTheBell
//
//  Created by Nick Reichard on 4/12/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import Foundation

class Teacher: NSObject {
    
    override init() {
        super.init()
        
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: "firstBellRang", name: NSNotification.Name(rawValue: FirstBellNotificationName), object: nil)
        nc.addObserver(self, selector: "firstBellRang", name: NSNotification.Name(rawValue: LastBellNotificationName), object: nil)
    }
    // for iOS 7 and below 
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func firstBellRang(notification: NSNotification) {
        print("Take roll")
    }
    
    func lastBellRang(notification: NSNotification) {
        print("Enter grades")
    }
}

