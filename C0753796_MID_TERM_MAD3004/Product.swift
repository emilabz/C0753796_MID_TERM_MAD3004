//
//  Product.swift
//  C0753796_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Product : Manufacturer{
    var productId:String
    var productName:String
    var price:Float
    var quantity:Int
    override init(){
        self.productId=String()
        self.productName=String()
        self.price=0.0
        self.quantity=0
        super.init()
    }
    init(productId:String,productName:String,price:Float,quantity:Float,manId:String,manName:String){
        self.productId=String()
        self.productName=String()
        self.price=0.0
        self.quantity=0
        super.init(manufacturerId: manId, manufacturerName: manName)
    }
}
