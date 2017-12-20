//
//  SortingAlgorithmsTests.swift
//  SortingAlgorithmsTests
//
//  Created by Josh Lai on 2017-12-11.
//  Copyright © 2017 JKL. All rights reserved.
//

import XCTest
@testable import SortingAlgorithms

class SortingAlgorithmsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testQuickSort() {
        let quick: QuickSort = QuickSort()
        let unsorted: Array = [9, 8, 4, 6, 1, 3, 2, 5]
        let sorted: Array = [1, 2, 3, 4, 5, 6, 8, 9]
        
        guard let quickSorted = quick.sort(list: unsorted) else { return XCTAssert(false) }
        
        print(quickSorted)
        XCTAssertTrue(sorted == quickSorted)
    }
}
