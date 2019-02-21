//
//  main.swift
//  C0753796_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
var index=0
var total:Float=0.0
var choice:String="y"
var fch=0
var pOrder=[Product]()
var p=[Product]()
var orderDict:[Int:Order]=[1:Order(),2:Order(),3:Order()]
var orderArr=[Order]()
p.append(Product(productId: "p001", productName: "Iphone X 64GB", price: 699.99, quantity: 10, manId: "m001", manName: "Apple"))

p.append(Product(productId: "p002", productName: "Note 9 64GB", price: 899.99, quantity: 10, manId: "m002", manName: "Samsung"))

p.append(Product(productId: "p003", productName: "Macbook Air", price: 1499.99, quantity: 5, manId: "m001", manName: "Apple"))

p.append(Product(productId: "p004", productName: "Pixel 3", price: 1300.00, quantity: 5, manId: "m003", manName: "Google"))

p.append(Product(productId: "p005", productName: "S9 64GB", price: 499.99, quantity: 5, manId: "m002", manName: "Samsung"))

repeat{
    print("Select option\n1.Place new order\n2.View order details\n3.Exit")
    fch=Int(readLine()!)!
    switch(fch){
    case 1:
        print("Products available are\nProduct ID\t\t   Product Name\t\t      Price")
        for i in p{
            print("\(i.productId)\t\t\(i.productName)\t\t\(i.price)")
        }
        repeat{
            print("Enter product id of the product to be ordered")
            let ch=readLine()
            //print("Enter quantity to be ordered")
            //let q=Int(readLine()!)!
            for i in p{
                if(ch==i.productId){
                    pOrder.append(i)
                    total += i.price //* Float(q)
                    pOrder[pOrder.endIndex-1].quantity=1
                }
            }
            print("Do you want to continue (y/n)?")
            choice=readLine()!
        }while(choice != "n")
        for i in pOrder{
            print("\(i.productId)\t\t\(i.productName)\t\t\(i.price)\t\t\(i.quantity)")
        }
        index += 1
        print("Your order id : \(index)")
        //orderDict.updateValue(orderId: index, orderDate: Date.init(), pArray: pOrder, orderTotal: total), forKey: 1)
        orderArr.append(Order(orderId: index, orderDate: Date.init(), pArray: pOrder, orderTotal: total))
        break
    case 2:
        print("enter order id")
        let ordId=Int(readLine()!)!
        for i in orderArr{
            if(i.getOrderById(orderId: ordId)){
                i.display()
            }
        }
        break
    case 3: break
    default:print("Enter valid choice")
    }
}while(fch != 3)


//for (key,value) in oo.enumerated(){
//}
//oo[0].key = 1
//var orDict=[orderId:String,o:Order]()
//print(pi)
//var ord:Dictionary(key:String,value:Order)
//var or=[orderId String,Order]

