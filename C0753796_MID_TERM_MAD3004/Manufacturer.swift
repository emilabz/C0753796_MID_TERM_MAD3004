//
//  Manufacturer.swift
//  C0753796_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Manufacturer{
    var manufacturerId:String
    var manufacturerName:String
    init(){
        self.manufacturerId=String()
        self.manufacturerName=String()
    }
    init(manufacturerId:String,manufacturerName:String){
        self.manufacturerId=manufacturerId
        self.manufacturerName=manufacturerName
    }
}
