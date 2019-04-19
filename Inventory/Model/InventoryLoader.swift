//
//  inventoryLoader.swift
//  Inventory
//
//  Created by Chris Rehagen on 4/18/19.
//  Copyright © 2019 Chris Rehagen. All rights reserved.
//

import Foundation

class InventoryLoader {
    
    class func load(jsonFileName: String) -> InventoryCollection? {
        var photoCollection: InventoryCollection?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            photoCollection = try? jsonDecoder.decode(InventoryCollection.self, from: jsonData)
        }
        
        return photoCollection
    }
}
