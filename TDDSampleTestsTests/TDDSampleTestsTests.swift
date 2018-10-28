//
//  TDDSampleTestsTests.swift
//  TDDSampleTestsTests
//
//  Created by 大江純司 on 2018/10/28.
//  Copyright © 2018年 JunjiOoe. All rights reserved.
//

import XCTest
@testable import TDDSampleTests

class TDDSampleTestsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    /* XCTAssertEqual */
    func test_XCTAssertEqual_success() {
        XCTAssertEqual(5, 5)
    }
    
    func test_XCTAssertEqual_failed() {
        XCTAssertEqual(5, 4)
    }
    
    /* XCTAssertTrue */
    func test_XCTAssertTrue_success() {
        XCTAssertTrue(true)
    }
    
    /* XCTAssertFalse */
    func test_XCTAssertTrue_false() {
        XCTAssertFalse(false)
    }
    
    /* XCTAssertNil */
    func test_XCTAssertNill_success() {
        let vc: UIViewController? = nil
        
        XCTAssertNil(vc)
    }
    
    /* XCTAssertNotNil */
    func test_XCTAssertNotNill_success() {
        var vc: UIViewController?
        vc = UIViewController()
        
        XCTAssertNotNil(vc)
    }
    
    /* XCTestExpectation */
    func test_asyncronus_success() {
        let exp = XCTestExpectation(description: "Test Success")
        
        DispatchQueue.global(qos: .default).async {
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
    }
    
    func test_asyncronus_failed() {
        let exp = XCTestExpectation(description: "Test Success")
        
        DispatchQueue.global(qos: .default).async {
//            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
    }
    
    /* XCTAssertThrowsError */
    func long(text: String) throws {
        if text.isEmpty {
            throw NSError(domain: "error", code: -1, userInfo: nil)
        }
        
        print(text)
    }
    
    func test_XCTAssertThrows_success() {
        XCTAssertThrowsError(try long(text: ""))
    }
    
    func test_XCTAssertThrows_failed() {
        XCTAssertThrowsError(try long(text: "例外処理を投げない"))
    }
    
    /* XCTAssertNoThrows */
    func test_XCTAssertNoThrows_success() {
        XCTAssertNoThrow(try long(text: "例外処理を投げない"))
    }
    
    func test_XCTAssertNoThrows_failed() {
        XCTAssertNoThrow(try long(text: ""))
    }
}
