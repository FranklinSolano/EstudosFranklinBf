//
//  PrimeiroAppTesteUnitarioTests.swift
//  PrimeiroAppTesteUnitarioTests
//
//  Created by Franklin  Stilhano on 1/4/23.
//

import XCTest
@testable import PrimeiroAppTesteUnitario

final class PrimeiroAppTesteUnitarioTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testsomaValores(){
        XCTAssertEqual(1+1, 2)
        XCTAssertTrue(1+1 == 2)
        
        
    }
}
