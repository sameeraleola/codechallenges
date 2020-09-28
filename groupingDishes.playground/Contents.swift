import UIKit

var ingredients = [String]()
var dish = [String]()

let dishes = [
    "Salad" : ["Tomato","Cucumber","Salad","Sauce"],
    "Pizza" : ["Tomato","Sausage","Sauce","Dough"],
    "Quesadilla" : ["Chicken","Cheese","Sauce"],
    "Sandwich" : ["Salad","Bread","Tomato","Cheese"]
]

var groupingDishes : [String : String] = [ : ]

for (dishName, ingredient) in dishes {
    for ingredientName in ingredient {
        print("ingredientName = \(ingredientName)")
    }
    
    
//    if ingredients.keys.contains(dishName) {
//    if !dish.contains(dishName) {
//        dish.append(dishName)
//    }
//    print("dish: \(dish)")
//
//    if !ingredients.contains(ingredient) {
//        dish.append(dishName)
//    }
//    print("dish: \(dish)")
}
