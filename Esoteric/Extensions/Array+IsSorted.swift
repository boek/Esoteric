import Foundation

extension Array where Element == Int {
  var isSorted: Bool {
    return self == sorted()
  }
}
