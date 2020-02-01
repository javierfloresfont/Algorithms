import UIKit

// 4. Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards.

var str = "Tact Coa"
var str1 = "Tact Coal"

extension String {
    var isPalindromePermutation: Bool {
        guard count < 3 else { return true }

        var charDictionary: [Character: UInt] = [:]

        let trimmedNoSpaces = replacingOccurrences(of: " ", with: "").lowercased()

        for character in trimmedNoSpaces {
            charDictionary[character] = (charDictionary[character] ?? 0) + 1
        }

        var evenSeen = false
        for values in charDictionary.values {
            if values % 2 == 1 {
                if evenSeen {
                    return false
                }
                evenSeen = true
            }
        }
        return true
    }
}
str.isPalindromePermutation
str1.isPalindromePermutation
