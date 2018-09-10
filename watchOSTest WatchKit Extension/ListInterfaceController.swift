//
//  ListInterfaceController.swift
//  watchOSTest WatchKit Extension
//
//  Created by Isma Dia on 10/09/2018.
//  Copyright © 2018 Isma Dia. All rights reserved.
//

import UIKit
import WatchKit

class ListInterfaceController: WKInterfaceController {
    @IBOutlet var schoolTable: WKInterfaceTable!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        self.schoolTable.setNumberOfRows(10, withRowType: "school")
        
        for i in 0 ... 9 {
            if let schoolController = schoolTable.rowController(at: i) as? SchoolRowController {
                schoolController.titleLabel.setText("2 étoiles")
            }
        }
       
    }

}
