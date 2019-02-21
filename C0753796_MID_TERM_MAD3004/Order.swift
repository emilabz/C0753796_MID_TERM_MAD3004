//
//  Order.swift
//  C0753796_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Order{
    var orderId:String
    var orderDate:Date
    var orderTotal:Float
    var pArray=[Product]()
    init(){
        self.orderId=String()
        self.orderDate=Date()
        self.orderTotal=0.0
    }
    init(orderId:String,orderDate:Date,pArray:[Product]/*,orderTotal:Float*/){
        self.orderId=String()
        self.orderDate=Date()
        self.orderTotal=0.0     //self.orderTotal=orderTotal
        self.pArray=pArray
    }
    func display(){
        print("Details are\nOrder Id    \tOrder Date    \tProduct Name  \tOrder Total")
        for i in pArray{
            print("\t\(self.orderId)\t  \(self.orderDate)   \t\(i.productName)  \t\(orderTotal)")
        }
    }
}
