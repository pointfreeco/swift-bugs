import XCTest
@testable import SwiftBugs

final class SwiftBugsTests: XCTestCase {
  func testBodyClearedWhenWritingHeader() {
    var originalRequest = URLRequest(url: URL(string: "https://www.pointfree.co")!)
    originalRequest.httpMethod = "post"
    originalRequest.httpBody = Data("hello world".utf8)

    var request = originalRequest
    XCTAssertNotNil(request.httpBody)

    request.allHTTPHeaderFields = ["test": "something"]
    XCTAssertNotNil(request.httpBody)
  }

  func testBodyClearedWhenWritingMethod() {
    var originalRequest = URLRequest(url: URL(string: "https://www.pointfree.co")!)
    originalRequest.httpMethod = "post"
    originalRequest.httpBody = Data("hello world".utf8)

    var request = originalRequest
    XCTAssertNotNil(request.httpBody)

    request.httpMethod = request.httpMethod?.uppercased()
    XCTAssertNotNil(request.httpBody)
  }

  static var allTests = [
    ("testBodyClearedWhenWritingHeader", testBodyClearedWhenWritingHeader),
    ("testBodyClearedWhenWritingMethod", testBodyClearedWhenWritingMethod),
    ]
}
