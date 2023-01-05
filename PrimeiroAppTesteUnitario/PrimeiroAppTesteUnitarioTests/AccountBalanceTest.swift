//
//  AccountBalanceTest.swift
//  PrimeiroAppTesteUnitarioTests
//
//  Created by Franklin  Stilhano on 1/4/23.
//

import XCTest
@testable import PrimeiroAppTesteUnitario

final class AccountBalanceTest: XCTestCase {

 
    func testGetSpecialBalance100(){
        let balance = AccountBalance(balance: 99)
        let value = balance.getSpecialLimitBalance()
        XCTAssertEqual(value, 109)
        XCTAssertFalse(value != 109)
    }
    func testGetSpecialBalance400(){
        let balance = AccountBalance(balance: 400)
        let value = balance.getSpecialLimitBalance()
        XCTAssertEqual(value, 400)
        XCTAssertFalse(value != 400)
    }
    func testGetSpecialBalance900(){
        let balance = AccountBalance(balance: 900)
        let value = balance.getSpecialLimitBalance()
        XCTAssertEqual(value, 1900)
        XCTAssertFalse(value != 1900)
    }
    
    func testSoma(){
        let balance = AccountBalance(balance: 900)
        let value = balance.soma(valor1: 10, valor2: 10)
        XCTAssertEqual(value, 20)
        XCTAssertFalse(value != 20)
    }
    
    func testSubtracao(){
        let balance = AccountBalance(balance: 900)
        let value = balance.subtracao(valor1: 10, valor2: 10)
        XCTAssertEqual(value, 0)
        XCTAssertFalse(value != 0)
    }
 
}
