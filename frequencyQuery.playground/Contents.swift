import UIKit

/*
 https://www.hackerrank.com/challenges/frequency-queries/problem
 Properties needed:
    array to hold the output
    dictionary keyed on the data with a value of count
 Parse the queries
    Iterate the queries (tuples):
    Switch on the operation:
            1 : Check for the key in the dictionary.  If it is increment the value.
            2: Check for the key in the dictionary.  If it is decrement the value.
            3: Check if the dictionary contains a key with a value specified.
                - If it is found append 1 to output array
                - If it is not found append 0 to the output array
 Return the output array
 */

func freqQuery(queries: [[Int]]) -> [Int] {
    var output = [Int]()
    var dict = [Int:Int]()
    
    // Iterate
    queries.forEach {
//        print("op = \($0[0])")
        switch $0[0] {
        case 1:
            print("Operation: (1, \($0[1]))")
            if let _ = dict.updateValue(1, forKey: $0[1]) {
                dict[$0[1]]! += 1
            }
        case 2:
            print("Operation: (2, \($0[1]))")
            if let _ = dict.updateValue(1, forKey: $0[1]) {
                dict[$0[1]]! -= 1
            }
        case 3:
            print("Operation: (3, \($0[1]))")
            print(dict.values.contains($0[1]))
            output.append(dict.values.contains($0[1]) ? 1 : 0)
        default:
            print("There are no more cases")
        }
        print("The dictionary contains: \(dict)")
    }

    return output
}

print(freqQuery(queries: [[1,5], [1,6], [3,2], [1,10], [1,10], [1,6], [2,5], [3,2]]))

/* SUBMISSION
var output = [Int]()
var dict = [Int:Int]()

// Iterate
queries.forEach {
    switch $0[0] {
    case 1:
        if let _ = dict.updateValue(1, forKey: $0[1]) {
            dict[$0[1]]! += 1
        }
    case 2:
        if let _ = dict.updateValue(1, forKey: $0[1]) {
            dict[$0[1]]! -= 1
        }
    case 3:
        output.append(dict.values.contains($0[1]) ? 1 : 0)
    default:
        nil
    }
}
return output

 */
