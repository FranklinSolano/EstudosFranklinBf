//
//  ViewController.swift
//  tableViewEstudos
//
//  Created by Franklin  Stilhano on 11/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = ["Franklin", "Caio", "Gaby", "Fabio", "Marta"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }


    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(name: data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    
}
