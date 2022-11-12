//
//  OrderDetailsList.swift
//  App
//
//  Created by Mark Franklin on 11/8/22.
//

import SwiftUI
import RealmSwift

struct OrderDetailsList: View {
    @ObservedRealmObject var order: order
    
    var body: some View {
        List(order.orderDetails) { anOrderDetails in
            OrderDetailsRow(orderDetails: anOrderDetails)
        }
        .listStyle(InsetListStyle())
    }
}
