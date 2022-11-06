//
//  Smartphone.swift
//  HashTable
//
//  Created by Артём Зыков on 06.11.2022.
//

import Foundation

public class Smartphone: IUserType {
    
    private var diagonal: Double = 0.0
    private var fiveG: Bool = false
    
    init(diagonal_: Double, fiveG_: Bool) {
        diagonal = diagonal_
        fiveG = fiveG_
    }
    init() {
        diagonal = 0.0
        fiveG = false
    }

    public func getDiagonal() -> Double { return diagonal }
    public func idFiveG() -> Bool { return fiveG }
    public func toString() -> String {
        return "diagonal - " + String(diagonal) + " fiveG - " + String(fiveG)
    }
    public func create() -> IUserType  { return Smartphone() }
    public func getClassName() -> String { return "Smartphone" }
    public func parseValue(_ json: AnyObject) -> IUserType {
        if let diagonal = json["diagonal"] as? Double {
            if let fiveG = json["five_g"] as? Bool {
                return Smartphone(diagonal_: diagonal, fiveG_: fiveG)
            }
        }
        return Smartphone()
    }
    public func getKey() -> String { return String(diagonal) }
    public func packValue() -> String {
        return "{\"diagonal\":" + String(diagonal)
                + ",\"five_g\":" + String(fiveG) + "}";
        
    }
}
