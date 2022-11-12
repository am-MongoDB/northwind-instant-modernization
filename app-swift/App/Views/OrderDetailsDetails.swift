//
//  OrderDetailsDetails.swift
//  App
//
//  Created by Mark Franklin on 11/8/22.
//

import SwiftUI
import RealmSwift

struct OrderDetailsDetails: View {
    @ObservedRealmObject var anOrderDetails: order_orderDetails
    
    var body: some View {
        Section(header: Text("Quantity")) {
            TextField("Quantity", value: $anOrderDetails.quantity, format: .number)
        }
    }
}
