//
//  mainUITableViewController.swift
//  EditTable
//
//  Created by Student Account on 10/5/22.
//

import Foundation
import UIKit

class mainUITableViewController: UITableViewController{
    var ItemListvar : ItemList!
    
    @IBAction func addNewItem(){
        let NewItem = Item(Name: "New Item", Cost: Float(self.ItemListvar.listOfItems.count+1))
        let numOfRows = self.ItemListvar.listOfItems.count
        tableView.insertRows(at: [IndexPath(row: numOfRows-1, section: 1)], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemListvar.listOfItems.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableCell", for: indexPath)
        let MyItem = self.ItemListvar.listOfItems[indexPath.row]
        cell.textLabel!.text = MyItem.Name
        cell.detailTextLabel!.text = String(MyItem.Cost)
        return cell
    }
}
