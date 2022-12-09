//
//  HistoryViewModel.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/7/22.
//

import UIKit

class HistoryViewModel {
    
    private let service: HistoryService = HistoryService()
    func fetchHistory() {
        
        service.getHistoryURLSession { result, failure in
            if let result = result{
                print(result)
            } else {
                print("deu ruim")
            }
        }
        
    }
}
