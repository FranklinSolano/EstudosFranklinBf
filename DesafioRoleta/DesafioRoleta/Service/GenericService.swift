//
//  GenericService.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/7/22.
//

import Foundation

protocol GenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
    
}
