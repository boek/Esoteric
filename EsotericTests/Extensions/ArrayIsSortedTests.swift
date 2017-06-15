@testable import Esoteric
import XCTest

class ArrayIsSortedTests: XCTestCase {
  func testIsSorted() {
    let array = Array.factory()
    XCTAssertFalse(array.isSorted)
    let sortedArray = array.sorted()
    XCTAssertTrue(sortedArray.isSorted)
  }
}
