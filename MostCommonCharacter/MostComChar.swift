//Source code compatible with Swift 4.2-RELEASE
import Foundation 
let asciiString: String = "Finding the most common character in a string."
var dictCharacter = [Character: Int]()

for i in asciiString {
    if dictCharacter[i] == nil && i != " " {
        var charCount: Int = 0
        for j in asciiString {
            if i == j { charCount += 1 }    
        }
        dictCharacter[i] = charCount
    }    
}

var resultChar  = dictCharacter.max{ a, b in a.value < b.value }!.key
print("The character '\(resultChar)' occurs \(dictCharacter[resultChar]!) times in the string.")