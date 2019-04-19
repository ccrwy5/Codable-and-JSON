//
//  InventoryCollection.swift
//  Inventory
//
//  Created by Chris Rehagen on 4/18/19.
//  Copyright © 2019 Chris Rehagen. All rights reserved.
//

import Foundation
    
    struct InventoryCollection: Codable {
        var status: String
        var products: [Product]
        
//        enum CodingKeys: String, CodingKey {
//            case status
//            case items
//        }
}

    struct Product: Codable {
        var id: Int
        var category: String
        var title: String
        var price: Double
        var stockedQuantity: Int
    }

        /*var id: Int
        //enum category: String {case Computers, Electronics, Kitchen, Pets}
        var category: String
        var title: String
        var price: Double
        var stockedQuantity: Int
        
        var products: [InventoryCollection]
 */
        


