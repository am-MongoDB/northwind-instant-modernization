//
//  OrderDetailsList.swift
//  App
//
//  Created by Mark Franklin on 11/8/22.
//

import SwiftUI
import RealmSwift


struct OrderDetailsList: View {
    @ObservedRealmObject var orderDetails: order_orderDetails
    var body: some View {
        VStack {
            List {
                // this is where things go off the rails for me 
//                ForEach(orderDetailsf) { anOrderDetails in
//                    OrderDetailsRow(orderDetails: anOrderDetails)
//                }
            }
            .listStyle(InsetListStyle())
        }
        
    }
}
