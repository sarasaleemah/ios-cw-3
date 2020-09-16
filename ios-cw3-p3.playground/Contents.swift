import UIKit

var str = "Hello, playground"
import Foundation
func isValidPassword(password:String?) -> Bool {
    guard password != nil else { return false }
 
    // at least one uppercase,
    // at least one digit
    // at least one lowercase
    // 8 characters total
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: password)
}

isValidPassword(password:"ioujkhgy@")

func checkpassword(password: String) -> String{
    if password.count >= 8{
        return "password is valid"
    }else{
        return "password is not valid"
        
    }
}

checkpassword(password: "849kfjdnsf23")

checkpassword(password: "8789")
