//
//  ViewController.swift
//  tableView+CollectionView
//
//  Created by Franklin  Stilhano on 11/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var carList: [String] = ["car3","car2","car1","car4","car5","car6"]
    var bikeList: [String] = ["moto1","moto2","moto3","moto4","moto5","moto6",]
    var skateList: [String] = ["skate1","skate2","skate3","skate4","skate5","skate6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
        tableView.separatorStyle = .none
    }

}

extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier,for: indexPath) as? CarTableViewCell
            cell?.setupCell(name1: carList, name: "Veiculos")
            return cell ?? UITableViewCell()
            
        }else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier,for: indexPath) as? CarTableViewCell
            cell?.setupCell(name1: bikeList, name: "Motos")
            return cell ?? UITableViewCell()
        }else  {
            let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier,for: indexPath) as? CarTableViewCell
            cell?.setupCell(name1: skateList, name: "Skates")
            return cell ?? UITableViewCell()
        }
            
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
        
    }
    
}
