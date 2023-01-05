//
//  AccountBalance.swift
//  PrimeiroAppTesteUnitario
//
//  Created by Franklin  Stilhano on 1/4/23.
//

import Foundation
import UIKit

struct AccountBalance{
    
    let balance:Double
    
    func getSpecialLimitBalance()-> Double{
        if balance < 100 {
            return balance + 10
        }else if balance > 500{
            return balance + 1000
        }
        return balance
    }
    
    func soma(valor1:Int,valor2:Int)-> Int{
        return valor1 + valor2
    }
    
    func subtracao(valor1:Int,valor2:Int)-> Int{
        return valor1 - valor2
    }
    
}
