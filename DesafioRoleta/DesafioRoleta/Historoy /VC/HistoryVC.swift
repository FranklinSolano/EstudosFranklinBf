//
//  HistoryVC.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/7/22.
//

import UIKit

class HistoryVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel: HistoryViewModel = HistoryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        viewModel.fetchHistory()
        
    }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(CustonTableViewCell.nib(), forCellReuseIdentifier: CustonTableViewCell.identifier)
        tableView.separatorStyle = .none
    }
    
}
extension HistoryVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustonTableViewCell.identifier, for: indexPath) as? CustonTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentHistoryAccountList(indexPath: indexPath))
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
    
    
}
extension HistoryVC: HistoryViewModelProtocol {
    func success() {
        configTableView()
    }
    
    func error(detail: String) {
        print("Error")
    }
    
    
}
