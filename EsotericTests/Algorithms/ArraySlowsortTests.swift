import Esoteric
import XCTest

class ArraySlowsortTests: XCTestCase {
  func testSortedBySlowsort() {
    let array = Array.factory()
    let expected = array.sorted()
    let actual = array.sortedBySlowsort()
    XCTAssertEqual(actual, expected)
  }

  func testSortedBySlowsortPerformance() {
    let array = Array.factory()
    measure { _ = array.sortedBySlowsort() }
  }
}
