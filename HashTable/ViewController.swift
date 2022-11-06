//
//  ViewController.swift
//  ISpy
//
//  Created by Артём Зыков on 11.02.2022.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var hashTable = HashTable<MyInteger>()
        hashTable.add(MyInteger(data_: 17))
        hashTable.add(MyInteger(data_: 3))
        hashTable.add(MyInteger(data_: 32))
        hashTable.add(MyInteger(data_: 329))
        hashTable.add(MyInteger(data_: 87))
        label.text = hashTable.debugDescription
    }
    
}

