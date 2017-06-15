import Foundation

extension Array where Element == Int {
  /**
   Returns the elements of the collection, sorted by Slowsort.

   - returns:
   A sorted array of the collection’s elements.
   */
  public func sortedBySlowsort() -> [Element] {
    return Array.sortBySlowsort(self, 0, count - 1)
  }

  private static func sortBySlowsort(_ array: [Element], _ leftIndex: Index, _ rightIndex: Index) -> [Element] {
    if leftIndex >= rightIndex { return array }
    let middleIndex = (leftIndex + rightIndex) / 2
    let leftSortedArray = sortBySlowsort(array, leftIndex, middleIndex)
    let rightSortedArray = sortBySlowsort(leftSortedArray, middleIndex + 1, rightIndex)
    let valueAtRightIndex = rightSortedArray[rightIndex]
    var mutableArray = rightSortedArray
    if valueAtRightIndex < rightSortedArray[middleIndex] {
      mutableArray[rightIndex] = mutableArray[middleIndex]
      mutableArray[middleIndex] = valueAtRightIndex
    }
    let newArray = mutableArray
    return sortBySlowsort(newArray, leftIndex, rightIndex - 1)
  }
}
