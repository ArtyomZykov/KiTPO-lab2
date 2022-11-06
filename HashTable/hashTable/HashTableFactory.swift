//
//  HashTableFactory.swift
//  HashTable
//
//  Created by Артём Зыков on 06.11.2022.
//

import Foundation

public class HashTableFactory {
    
    private var list: [IUserType] = [ MyInteger(), MyString(), Smartphone() ]
    public var hashTable: HashTable = HashTable<IUserType>()
    private var hashTableClass: IUserType? = null
    
    public func findHashTableClass(className: String) -> IUserType {
        for item in list {
            if (item.getClassName().contains(className)) {
                hashTableClass = item
                return item
            }
        }
        hashTableClass = null
        return hashTableClass
    }
}
