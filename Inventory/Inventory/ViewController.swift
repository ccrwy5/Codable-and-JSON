//
//  ViewController.swift
//  Inventory
//
//  Created by Chris Rehagen on 4/18/19.
//  Copyright © 2019 Chris Rehagen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayTextView: UITextView!
    let jsonFileName = "inventory"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let inventoryCollection = InventoryLoader.load(jsonFileName: jsonFileName) {
            
            var displayInfo = ""
            displayInfo += "Status: \(inventoryCollection.status)\n\n"
            for product in inventoryCollection.products {
                displayInfo += "Item:\n"
                displayInfo += "\(product.id)\n"
                displayInfo += "\(product.category)\n"
                displayInfo += "\(product.title)\n"
                displayInfo += "\(product.price)\n"
                displayInfo += "\(product.stockedQuantity)\n\n"

                
            }
 
            
            displayTextView.text = displayInfo

        } else {
            displayTextView.text = "error"
        }
 
  
        }
    }



