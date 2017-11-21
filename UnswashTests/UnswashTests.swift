//
//  UnswashTests.swift
//  UnswashTests
//
//  Created by Alexandre Barbier on 20/11/2017.
//  Copyright © 2017 Alexandre Barbier. All rights reserved.
//

import XCTest
@testable import Unswash

class UnswashTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        Unswash.client.configure(clientId: "53b91d6d89937ffe63877e750ae065257f25cef12d327845f19bd2bb16e22e02")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let expect = expectation(description:"")
        Unsplash.Photos.get(page: 1, per_page: 20, order_by: .latest, completion: { photos in
            XCTAssert(photos.count == 20)
            expect.fulfill()
        })
        waitForExpectations(timeout:5.0) { (error) in
            if error != nil {
                XCTFail(error!.localizedDescription)
            }
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
