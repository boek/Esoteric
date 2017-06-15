import Esoteric
import XCTest

class ArrayBogosortTests: XCTestCase {
  func testSortedByBogosort() {
    let array = Array.factory()
    let expected = array.sorted()
    let actual = array.sortedByBogosort()
    XCTAssertEqual(actual, expected)
  }

  func testSortedByBogosortPerformance() {
    let array = Array.factory()
    measure { _ = array.sortedByBogosort() }
  }
}
