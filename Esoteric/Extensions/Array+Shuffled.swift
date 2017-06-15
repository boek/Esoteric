import Foundation

extension Array {
  func shuffled() -> [Element] {
    return self.sorted { (_, _) in arc4random() < arc4random() }
  }
}
