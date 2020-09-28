import UIKit

let dishes = [
    ["Salad", "Tomato","Cucumber","Salad","Sauce"],
    ["Pizza", "Tomato","Sausage","Sauce","Dough"],
    ["Quesadilla", "Chicken","Cheese","Sauce"],
    ["Sandwich", "Salad","Bread","Tomato","Cheese"]
]

func groupingDishes(dishes: [[String]]) -> [[String]] {
    var map = [String:[String]]()

    for i in 0 ..< dishes.count {
        let dish = dishes[i][0]
        for j in 1..<dishes[i].count {
            if map[dishes[i][j]] == nil {
                map[dishes[i][j]] = [dish]
             } else {
                map[dishes[i][j]]?.append(dish)
            }
        }
    }

    let valid = map.filter { (i) -> Bool in i.value.count >= 2 }
        .sorted { $0.key.compare($1.key) == .orderedAscending }
        .map{[$0.key] + $0.value.sorted{ $0.compare($1) == .orderedAscending }}


    return valid
}

print(groupingDishes(dishes: dishes))






