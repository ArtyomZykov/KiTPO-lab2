
import Foundation

public protocol IUserType {
    
    func create() -> IUserType
    func getClassName() -> String
    func getKey() -> String
    func parseValue(_ json: AnyObject) -> IUserType
    func packValue() -> String
    func toString() -> String
}
