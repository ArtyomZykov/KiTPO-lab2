//
//  MyString.swift
//  HashTable
//
//  Created by Артём Зыков on 06.11.2022.
//

import Foundation

public class MyString: IUserType {
    
    private var data: String = ""
    
    init(data_: String) { data = data_ }
    init() { data = ""; }

    public func getString() -> String { return data }
    public func toString() -> String { return "str - " + data }
    public func create() -> IUserType  { return MyString() }
    public func getClassName() -> String { return "MyString" }
    public func parseValue(_ json: AnyObject) -> IUserType {
        if let data = json["string"] as? String {
            return MyString(data_: data)
        }
        return MyString()
    }
    public func getKey() -> String { return Swift.String(data) }
    public func packValue() -> String { return "{\"string\":\"" + data + "\"}" }
}
