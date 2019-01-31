//Source code compatible with Swift 4.2-RELEASE 
let asciiString: String = "Finding the most common character in a string."
var dictCharacter = [Character: Int]()

for elKey in asciiString.characters {
    if elKey != " " {
        dictCharacter[elKey] = (dictCharacter[elKey] ?? 0) + 1
    }
}

let resultChar = dictCharacter.max{ a, b in a.value < b.value }!.key
print("The character '\(resultChar)' occurs \(dictCharacter[resultChar]!) times in the string.")
