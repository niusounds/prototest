import XCTest
@testable import prototest

final class prototestTests: XCTestCase {
    func testMessageFromJson() throws {
        let json = """
        {
            "name": "Metal ojisan",
            "age": 32
        }
        """
        let msg = try Message(jsonString: json)
        XCTAssertEqual(msg.name, "Metal ojisan")
        XCTAssertEqual(msg.age, 32)
    }
    
    func testMessageToJson() throws {
        var msg = Message()
        msg.name = "Metal ojisan"
        msg.age = 32
        let json = try msg.jsonString()
        XCTAssert(json.contains("\"name\":\"Metal ojisan\""))
        XCTAssert(json.contains("\"age\":32"))
    }

    static var allTests = [
        ("testMessageFromJson", testMessageFromJson),
        ("testMessageToJson", testMessageToJson),
    ]
}
