//
//  Order.swift
//  C0753796_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Order{
    var orderId:Int
    var orderDate:Date
    var orderTotal:Float
    var pArray=[Product]()
    init(){
        self.orderId=0
        self.orderDate=Date()
        self.orderTotal=0.0
    }
    init(orderId:Int,orderDate:Date,pArray:[Product],orderTotal:Float){
        self.orderId=orderId
        self.orderDate=Date()
        self.orderTotal=orderTotal   //self.orderTotal=orderTotal
        self.pArray=pArray
    }
    func display(){
        print("Details are\nOrder Id    \tOrder Date    \t\t\tProduct Name  \tproduct Price")
        for i in pArray{
            print("\t\(self.orderId)\t  \(self.orderDate)   \t\(i.productName)  \t\(i.price)")
        }
        print("Order Total: \(orderTotal)")
    }
    func getOrderById(orderId:Int) -> Bool{
        if(self.orderId == orderId){
            print("Match found")
            return true
        }
        else{
            print("Match not found")
            return false
        }
    }
}
