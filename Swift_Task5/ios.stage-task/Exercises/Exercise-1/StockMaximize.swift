import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }
        if prices.count == 1{
            return 0
        }
        var shares = [Int]()
        var balance = 0
        for (index, price) in prices.enumerated() {
            switch index {
            case prices.count-1:
                if price >= prices[index-1] && shares.count != 0{
                    for item in shares {
                        balance += price - item
                    }
                    shares.removeAll()
                }
            case 0..<prices.count-1:
                if price > prices[index+1] && shares.count != 0{
                    for item in shares {
                        balance += price - item
                    }
                    shares.removeAll()
                }
                if price <= prices[index+1] {
                    shares.append(price)
                }
            default:
                break
            }}
        return balance
    }
}
