import XCTest
@testable import E

final class SwiftPackTests: XCTestCase {
    func testExample() {
        let example: Variable = .string("Hello, World!")
        
        XCTAssertEqual(example.value(), "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
