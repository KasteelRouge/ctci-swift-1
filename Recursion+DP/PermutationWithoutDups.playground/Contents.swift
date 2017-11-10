//: Playground - noun: a place where people can play

import UIKit

extension Array {
    var powerSet: [[Element]] {
        guard !isEmpty else { return [[]] }
        return Array(self[1...]).powerSet.flatMap { [$0, [self[0]] + $0] }
    }
}

func perms(of array: String) -> [[String]] {
    var s = [String]()
    for a in array { s.append(String(a)) }
    return s.powerSet
}

print(perms(of: "abcdefgh"))
// prints
/*
[
[], ["a"], ["b"], ["a", "b"], ["c"], ["a", "c"], ["b", "c"], ["a", "b", "c"], ["d"], ["a", "d"], ["b", "d"], ["a", "b", "d"], ["c", "d"], ["a", "c", "d"], ["b", "c", "d"], ["a", "b", "c", "d"], ["e"], ["a", "e"], ["b", "e"], ["a", "b", "e"], ["c", "e"], ["a", "c", "e"], ["b", "c", "e"], ["a", "b", "c", "e"], ["d", "e"], ["a", "d", "e"], ["b", "d", "e"], ["a", "b", "d", "e"], ["c", "d", "e"], ["a", "c", "d", "e"], ["b", "c", "d", "e"], ["a", "b", "c", "d", "e"], ["f"], ["a", "f"], ["b", "f"], ["a", "b", "f"], ["c", "f"], ["a", "c", "f"], ["b", "c", "f"], ["a", "b", "c", "f"], ["d", "f"], ["a", "d", "f"], ["b", "d", "f"], ["a", "b", "d", "f"], ["c", "d", "f"], ["a", "c", "d", "f"], ["b", "c", "d", "f"], ["a", "b", "c", "d", "f"], ["e", "f"], ["a", "e", "f"], ["b", "e", "f"], ["a", "b", "e", "f"], ["c", "e", "f"], ["a", "c", "e", "f"], ["b", "c", "e", "f"], ["a", "b", "c", "e", "f"], ["d", "e", "f"], ["a", "d", "e", "f"], ["b", "d", "e", "f"], ["a", "b", "d", "e", "f"], ["c", "d", "e", "f"], ["a", "c", "d", "e", "f"], ["b", "c", "d", "e", "f"], ["a", "b", "c", "d", "e", "f"], ["g"], ["a", "g"], ["b", "g"], ["a", "b", "g"], ["c", "g"], ["a", "c", "g"], ["b", "c", "g"], ["a", "b", "c", "g"], ["d", "g"], ["a", "d", "g"], ["b", "d", "g"], ["a", "b", "d", "g"], ["c", "d", "g"], ["a", "c", "d", "g"], ["b", "c", "d", "g"], ["a", "b", "c", "d", "g"], ["e", "g"], ["a", "e", "g"], ["b", "e", "g"], ["a", "b", "e", "g"], ["c", "e", "g"], ["a", "c", "e", "g"], ["b", "c", "e", "g"], ["a", "b", "c", "e", "g"], ["d", "e", "g"], ["a", "d", "e", "g"], ["b", "d", "e", "g"], ["a", "b", "d", "e", "g"], ["c", "d", "e", "g"], ["a", "c", "d", "e", "g"], ["b", "c", "d", "e", "g"], ["a", "b", "c", "d", "e", "g"], ["f", "g"], ["a", "f", "g"], ["b", "f", "g"], ["a", "b", "f", "g"], ["c", "f", "g"], ["a", "c", "f", "g"], ["b", "c", "f", "g"], ["a", "b", "c", "f", "g"], ["d", "f", "g"], ["a", "d", "f", "g"], ["b", "d", "f", "g"], ["a", "b", "d", "f", "g"], ["c", "d", "f", "g"], ["a", "c", "d", "f", "g"], ["b", "c", "d", "f", "g"], ["a", "b", "c", "d", "f", "g"], ["e", "f", "g"], ["a", "e", "f", "g"], ["b", "e", "f", "g"], ["a", "b", "e", "f", "g"], ["c", "e", "f", "g"], ["a", "c", "e", "f", "g"], ["b", "c", "e", "f", "g"], ["a", "b", "c", "e", "f", "g"], ["d", "e", "f", "g"], ["a", "d", "e", "f", "g"], ["b", "d", "e", "f", "g"], ["a", "b", "d", "e", "f", "g"], ["c", "d", "e", "f", "g"], ["a", "c", "d", "e", "f", "g"], ["b", "c", "d", "e", "f", "g"], ["a", "b", "c", "d", "e", "f", "g"], ["h"], ["a", "h"], ["b", "h"], ["a", "b", "h"], ["c", "h"], ["a", "c", "h"], ["b", "c", "h"], ["a", "b", "c", "h"], ["d", "h"], ["a", "d", "h"], ["b", "d", "h"], ["a", "b", "d", "h"], ["c", "d", "h"], ["a", "c", "d", "h"], ["b", "c", "d", "h"], ["a", "b", "c", "d", "h"], ["e", "h"], ["a", "e", "h"], ["b", "e", "h"], ["a", "b", "e", "h"], ["c", "e", "h"], ["a", "c", "e", "h"], ["b", "c", "e", "h"], ["a", "b", "c", "e", "h"], ["d", "e", "h"], ["a", "d", "e", "h"], ["b", "d", "e", "h"], ["a", "b", "d", "e", "h"], ["c", "d", "e", "h"], ["a", "c", "d", "e", "h"], ["b", "c", "d", "e", "h"], ["a", "b", "c", "d", "e", "h"], ["f", "h"], ["a", "f", "h"], ["b", "f", "h"], ["a", "b", "f", "h"], ["c", "f", "h"], ["a", "c", "f", "h"], ["b", "c", "f", "h"], ["a", "b", "c", "f", "h"], ["d", "f", "h"], ["a", "d", "f", "h"], ["b", "d", "f", "h"], ["a", "b", "d", "f", "h"], ["c", "d", "f", "h"], ["a", "c", "d", "f", "h"], ["b", "c", "d", "f", "h"], ["a", "b", "c", "d", "f", "h"], ["e", "f", "h"], ["a", "e", "f", "h"], ["b", "e", "f", "h"], ["a", "b", "e", "f", "h"], ["c", "e", "f", "h"], ["a", "c", "e", "f", "h"], ["b", "c", "e", "f", "h"], ["a", "b", "c", "e", "f", "h"], ["d", "e", "f", "h"], ["a", "d", "e", "f", "h"], ["b", "d", "e", "f", "h"], ["a", "b", "d", "e", "f", "h"], ["c", "d", "e", "f", "h"], ["a", "c", "d", "e", "f", "h"], ["b", "c", "d", "e", "f", "h"], ["a", "b", "c", "d", "e", "f", "h"], ["g", "h"], ["a", "g", "h"], ["b", "g", "h"], ["a", "b", "g", "h"], ["c", "g", "h"], ["a", "c", "g", "h"], ["b", "c", "g", "h"], ["a", "b", "c", "g", "h"], ["d", "g", "h"], ["a", "d", "g", "h"], ["b", "d", "g", "h"], ["a", "b", "d", "g", "h"], ["c", "d", "g", "h"], ["a", "c", "d", "g", "h"], ["b", "c", "d", "g", "h"], ["a", "b", "c", "d", "g", "h"], ["e", "g", "h"], ["a", "e", "g", "h"], ["b", "e", "g", "h"], ["a", "b", "e", "g", "h"], ["c", "e", "g", "h"], ["a", "c", "e", "g", "h"], ["b", "c", "e", "g", "h"], ["a", "b", "c", "e", "g", "h"], ["d", "e", "g", "h"], ["a", "d", "e", "g", "h"], ["b", "d", "e", "g", "h"], ["a", "b", "d", "e", "g", "h"], ["c", "d", "e", "g", "h"], ["a", "c", "d", "e", "g", "h"], ["b", "c", "d", "e", "g", "h"], ["a", "b", "c", "d", "e", "g", "h"], ["f", "g", "h"], ["a", "f", "g", "h"], ["b", "f", "g", "h"], ["a", "b", "f", "g", "h"], ["c", "f", "g", "h"], ["a", "c", "f", "g", "h"], ["b", "c", "f", "g", "h"], ["a", "b", "c", "f", "g", "h"], ["d", "f", "g", "h"], ["a", "d", "f", "g", "h"], ["b", "d", "f", "g", "h"], ["a", "b", "d", "f", "g", "h"], ["c", "d", "f", "g", "h"], ["a", "c", "d", "f", "g", "h"], ["b", "c", "d", "f", "g", "h"], ["a", "b", "c", "d", "f", "g", "h"], ["e", "f", "g", "h"], ["a", "e", "f", "g", "h"], ["b", "e", "f", "g", "h"], ["a", "b", "e", "f", "g", "h"], ["c", "e", "f", "g", "h"], ["a", "c", "e", "f", "g", "h"], ["b", "c", "e", "f", "g", "h"], ["a", "b", "c", "e", "f", "g", "h"], ["d", "e", "f", "g", "h"], ["a", "d", "e", "f", "g", "h"], ["b", "d", "e", "f", "g", "h"], ["a", "b", "d", "e", "f", "g", "h"], ["c", "d", "e", "f", "g", "h"], ["a", "c", "d", "e", "f", "g", "h"], ["b", "c", "d", "e", "f", "g", "h"], ["a", "b", "c", "d", "e", "f", "g", "h"]
 ]
*/
