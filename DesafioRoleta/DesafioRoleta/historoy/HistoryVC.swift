//
//  HistoryVC.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/7/22.
//

import UIKit

class HistoryVC: UIViewController {
    
    let viewModel: HistoryViewModel = HistoryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.fetchHistory()
    }
    
}
