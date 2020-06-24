//
//  samplTests.swift
//  samplTests
//
//  Created by af on 2020/06/24.
//  Copyright © 2020 af. All rights reserved.
//

import XCTest
@testable import sampl

class samplTests: XCTestCase {

    func testAPICallTest () {
        
        let exp = expectation(description: "get information test")
        
        Utils.shared.fetchKasenData { (dicArray) in

            if dicArray?.count ?? 0 > 0 {
                exp.fulfill()
            } else {
                XCTFail("number of persons returned is zero.")
            }
        }
        
        wait(for: [exp], timeout: 10.0)
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
