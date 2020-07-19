import UIKit

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tip = meal_cost * (Double(tip_percent) / 100.0)
    let tax = meal_cost * (Double(tax_percent) / 100.0)
    let totalCost = (meal_cost + tip + tax).rounded()
    print(totalCost)
}

solve(meal_cost: 10.25, tip_percent: 17, tax_percent: 5)
