import UIKit

// Complete this CodeSignal challenge next week
// https://app.codesignal.com/interview-practice/task/5A8jwLGcEpTPyyjTB

//func rotateImage(a: [[Int]]) -> [[Int]] {
//func rotateImage( a: [[Int]]) {
//    var img = a
//    var tmp = 0
//    for r in 0 ..< a.count {
//        for c in r ..< a.count {
//            tmp =  img[r][c]
//            print("tmp = [\(r)][\(c)] = \(tmp)")
//            print("img[\(c)][\(r)] -> img[\(r)][\(c)] = \(img[c][r]) replaces \(img[r][c])")
//            img[r][c] = img[c][r]
//            print("tmp -> img[\(c)][\(r)] = \(tmp) replaces \(img[c][r])")
//            img[c][r] = tmp
//            print("Current rotation: \(img)\n---")
//        }
//    }
//    print("The original image = \(a)")
//    print("The rotated image = \(img)")
//}
//
//rotateImage(a: [[1,2,3], [4,5,6], [7,8,9]])

// Try this

func rotateImage( a: [[Int]]) -> [[Int]] {
    var img = a
    let index = a.count - 1

    for r in 0 ... index {
        for c in r  ... index {
            if c != r {
                img[c][r] += img[r][c]
                img[r][c] = img[c][r] - img[r][c]
                img[c][r] = img[c][r] - img[r][c]
            }
        }
    }
    return img
}


//    func rotateImage(a: [[Int]]) -> [[Int]] {
//        var arr = a
//        print(a.count)
//        for x in 0..<a.count {
//            for y in 0..<a[0].count {
//                arr[x][y] = a[a.count - 1 - y][x]
//            }
//        }
//        return arr
//    }


//print(rotateImage(a: [[1,2,3], [4,5,6], [7,8,9]]))





