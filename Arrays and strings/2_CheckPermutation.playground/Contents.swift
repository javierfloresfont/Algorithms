import UIKit

// 2. Given 2 strings, write a method to decide if one is a permutation of the other.

var str1 = "Hello, playground"
var str2 = "Hello, AAAAA"

var str3 = "abcdef"
var str4 = "aefdbc"

// is case sensitive? no
// white space significant? yes

extension String {
    func isPermutation(of other: String) -> Bool {
        guard count == other.count else { return false }
        return sorted() == other.sorted()
    }

    func isPermutation1(of other: String) -> Bool {
        guard count == other.count else { return false }

        var charactersDic: [Character: Int] = [:]
        var otherCharactersDic: [Character: Int] = [:]

        let string1 = trimmingCharacters(in: .whitespaces).lowercased()
        let string2 = other.trimmingCharacters(in: .whitespaces).lowercased()

        string1.forEach { charactersDic[$0] = charactersDic[$0] ?? 0 + 1 }
        string2.forEach { otherCharactersDic[$0] = otherCharactersDic[$0] ?? 0 + 1 }

        return charactersDic == otherCharactersDic
    }
}

str1.isPermutation(of: str2)
str3.isPermutation(of: str4)

str1.isPermutation1(of: str2)
str3.isPermutation1(of: str4)
