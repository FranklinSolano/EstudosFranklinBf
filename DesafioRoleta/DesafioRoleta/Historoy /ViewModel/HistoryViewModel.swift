//
//  HistoryViewModel.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/7/22.
//

import UIKit

protocol HistoryViewModelProtocol {
    func success()
    func error(detail:String)
}

class HistoryViewModel {
    
    private let service: HistoryService = HistoryService()
    private var history: History?
    private var delegate: HistoryViewModelProtocol?
    
    func delegate(delegate: HistoryViewModelProtocol?){
        self.delegate = delegate
    }
    
    func fetchHistory() {
        
        service.getHistoryAlamofire { result, failure in
            if let result = result{
                print(result)
                self.history = result
                self.delegate?.success()
            } else {
                print("deu ruim")
                self.delegate?.error(detail: failure?.localizedDescription ?? "")
            }
        }
        
    }
    
    var numberOfRowsInSection: Int {
        return history?.historyAccountList?.count ?? 0
    }
    
    func loadCurrentHistoryAccountList(indexPath: IndexPath) -> HistoryAccountList {
        return history?.historyAccountList?[indexPath.row] ?? HistoryAccountList()
    }
    
    var heightForRowAt: CGFloat {
        return 140
    }
    
    
}
