import UIKit

// Complete this CodeSignal challenge next week
// https://app.codesignal.com/interview-practice/task/5A8jwLGcEpTPyyjTB

//func rotateImage(a: [[Int]]) -> [[Int]] {
func rotateImage(a: [[Int]]) {
    var img = a
    var tmp = 0
    for r in 0 ..< a.count {
        for c in r ..< a.count {
            tmp =  img[r][c]
            print("tmp = [\(r)][\(c)] = \(tmp)")
            print("img[\(c)][\(r)] -> img[\(r)][\(c)] = \(img[c][r]) replaces \(img[r][c])")
            img[r][c] = img[c][r]
            print("tmp -> img[\(c)][\(r)] = \(tmp) replaces \(img[c][r])")
            img[c][r] = tmp
            print("Current rotation: \(img)\n---")
        }
    }
    print("The original image = \(a)")
    print("The rotated image = \(img)")
}

rotateImage(a: [[1,2,3], [4,5,6], [7,8,9]])
