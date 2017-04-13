//
//  BellViewController.swift
//  RingTheBell
//
//  Created by Nick Reichard on 4/12/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import UIKit

let FirstBellNotificationName = "firstBell"
let LastBellNotificationName = "lastBell"

class BellViewController: UIViewController {
    
    let teacher = Teacher()
    let student = Student()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nc = NotificationCenter.default
        nc.post(name: NSNotification.Name(rawValue: FirstBellNotificationName), object: self)
        nc.post(name: NSNotification.Name(rawValue: LastBellNotificationName), object: self)
    }
}
