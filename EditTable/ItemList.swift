//
//  ItemList.swift
//  EditTable
//
//  Created by Student Account on 10/5/22.
//

import Foundation

struct ItemList{
    var listOfItems: [Item] = []
    init(){
        listOfItems.append(Item(Name: "Soup", Cost: 2.50))
        listOfItems.append(Item(Name: "Soup", Cost: 2.50))
        listOfItems.append(Item(Name: "Soup", Cost: 2.50))
    }
    mutating func add(newItem: Item){
        listOfItems.append(newItem)
    }
}
