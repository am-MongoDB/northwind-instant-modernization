//
//  OrderSettings.swift
//  App
//
//  Created by Mark Franklin on 11/1/22.
//

import Foundation
import RealmSwift

class OrderSettings: ObservableObject {

    let realm = try! Realm()
    
    let items: Results<order>
    
    @Published var sortedItems: Results<order>
    
    init(items: order, sortedItems: order) {
        self.items = realm.objects(order.self)
        self.sortedItems = self.items.sorted(byKeyPath: "orderDate", ascending: false)
    }
    
}
