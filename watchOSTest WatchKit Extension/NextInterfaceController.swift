//
//  NextInterfaceController.swift
//  watchOSTest WatchKit Extension
//
//  Created by Isma Dia on 10/09/2018.
//  Copyright © 2018 Isma Dia. All rights reserved.
//

import UIKit
import WatchKit

class NextInterfaceController: WKInterfaceController {
    
    @IBOutlet var slider: WKInterfaceSlider!
    @IBOutlet var switchZer: WKInterfaceSwitch!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        guard let data = context as? [String:Any] else {
            return
        }
        if let val = data["val"] as? Float {
            self.slider.setValue(val)
        }
        
        if let zer = data["homekit"] as? Bool {
            self.switchZer.setOn(zer)
        }
        
        
    }
    
    

}
