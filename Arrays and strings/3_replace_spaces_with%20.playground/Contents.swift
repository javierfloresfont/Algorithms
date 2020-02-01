import UIKit

// 3. Write a method to replace all spaces in a string with %20.

// example:
// input:  "Mr John Smith     " input 13
// output: "Mr%20John%20Smith"

var str = "Mr John Smith     "

extension String {
    var replaceSpaces: String {
        var t = self

        while t.last == " " {
            t = "" + t.dropLast()
        }
        return t.replacingOccurrences(of: " ", with: "%20")
    }
}
str.replaceSpaces

