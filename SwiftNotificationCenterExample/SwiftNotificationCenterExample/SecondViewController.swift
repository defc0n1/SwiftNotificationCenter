//
//  SecondViewController.swift
//  SwiftNotificationCenterExample
//
//  Created by Mango on 16/5/5.
//  Copyright © 2016年 Mango. All rights reserved.
//

import UIKit
import SwiftNotificationCenter

class SecondViewController: UIViewController, UpdateTitle {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.register(UpdateTitle.self, observer: self)
    }

    func updateWithNewTitle(title: String) {
        titleLabel.text = title
    }
}

