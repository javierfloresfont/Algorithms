import UIKit

// 1. Implement an algorithm to determine if a string has all unique characters. What if you can not use additional data structures.

var input1 = "Hello, playground" // Not unique
var input2 = "abcdefgh" // Unique

extension String {
    // With additional data structures
    var hasUniqueCharacters: Bool {
        if self.count < 2 { return true }
        var uniqueCharacters = Set<Character>()
        for character in self {
            if uniqueCharacters.contains(character) { return false }
            uniqueCharacters.insert(character)
        }
        return true
    }

    // Without additional data structures
    var hasUniqueCharacters2: Bool {
        if self.count < 2 { return true }
        for character in self {
            if self.firstIndex(of: character) != self.lastIndex(of: character) { return false }
        }
        return true
    }
}

input1.hasUniqueCharacters
input2.hasUniqueCharacters

input1.hasUniqueCharacters2
input2.hasUniqueCharacters2
