//
//  InterfaceController.swift
//  watchOSTest WatchKit Extension
//
//  Created by Isma Dia on 10/09/2018.
//  Copyright © 2018 Isma Dia. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var championsDuMondeLabel: WKInterfaceLabel!
    @IBAction func setChampionsDuMonde() {
        let championsText = "Ramenez la coupe à la maisoooooon!  Allez les bleus, Allez !!"
        championsDuMondeLabel.setNewLineText(t: championsText)
    }
    
    @IBAction func goToNextInterface() {
        self.pushController(withName: "NextInterfaceController", context: [
            "val":0,
            "homekit" : false
            ])
    }
    
    @IBAction func seeList() {
        pushController(withName: "ListInterfaceController", context: nil)
        
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}

extension WKInterfaceLabel {
    func setNewLineText(t : String){
        let originalText = t.map {return String($0)}
        let text = originalText.joined(separator: "\n")
        self.setText(text)
    }
}

