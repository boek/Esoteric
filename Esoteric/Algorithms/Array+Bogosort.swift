import Foundation

extension Array where Element == Int {
  /**
   Returns the elements of the collection, sorted by Bogosort.

   - returns:
   A sorted array of the collection’s elements.
   */
  public func sortedByBogosort() -> [Element] {
    return Array.sortByBogosort(self)
  }

  private static func sortByBogosort(_ array: [Element]) -> [Element] {
    if array.isSorted { return array }
    return sortByBogosort(array.shuffled())
  }
}
