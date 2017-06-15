@testable import Esoteric
import XCTest

class ArrayShuffledTests: XCTestCase {
  func testShuffled() {
    let array = Array.factory()
    let shuffledArray = array.shuffled()
    let secondShuffledArray = shuffledArray.shuffled()
    XCTAssertNotEqual(array, shuffledArray)
    XCTAssertNotEqual(array, secondShuffledArray)
    XCTAssertNotEqual(shuffledArray, secondShuffledArray)
  }
}
