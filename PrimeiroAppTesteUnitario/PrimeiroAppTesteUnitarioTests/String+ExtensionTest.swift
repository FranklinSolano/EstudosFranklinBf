//
//  String+ExtensionTest.swift
//  PrimeiroAppTesteUnitarioTests
//
//  Created by Franklin  Stilhano on 1/4/23.
//

import XCTest
@testable import  PrimeiroAppTesteUnitario

final class String_ExtensionTest: XCTestCase {

    func testRemoveSpace(){
        let text = "Olá mundo!"
        let value = text.removeWhiteSpace()
        XCTAssertEqual(value, "Olámundo!")
        XCTAssertFalse(value == "Olá mundo!")
    }
    
    func testIsEmail(){
        let emailTrue = "franklinsolano@gmail.com".isValid(validType: .email)
        let emailFalse = "franklin".isValid(validType: .email)
        XCTAssertTrue(emailTrue)
        XCTAssertFalse(emailFalse)
    }
    
    func testIsPassword(){
        let passwordTrue = "12345678".isValid(validType: .password)
        let passwordFalse = "12".isValid(validType: .password)
        XCTAssertTrue(passwordTrue)
        XCTAssertFalse(passwordFalse)
    }

}
