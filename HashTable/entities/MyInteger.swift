//
//  MyInteger.swift
//  HashTable
//
//  Created by Артём Зыков on 06.11.2022.
//

import Foundation

public class MyInteger: IUserType {
    
    private var data: Int = 0
    
    init(data_: Int) { data = data_ }
    init() { data = 0; }

    public func getInteger() -> Int { return data }
    public func toString() -> String { return "str - " + String(data) }
    public func create() -> IUserType  { return MyString() }
    public func getClassName() -> String { return "MyInteger" }
    public func parseValue(_ json: AnyObject) -> IUserType {
        if let data = json["integer"] as? Int {
            return MyInteger(data_: data)
        }
        return MyInteger()
    }
    public func getKey() -> String { return String(data) }
    public func packValue() -> String { return "{\"integer\":\"" + String(data) + "\"}" }
}
