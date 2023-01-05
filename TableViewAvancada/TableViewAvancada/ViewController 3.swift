//
//  ViewController.swift
//  TableViewAvancada
//
//  Created by Franklin  Stilhano on 10/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
//    var oneCell: [User] = [User(name: "Franklin", image: UIImage(named: "user"))]
    
    var twoCell: [Employee] = [Employee(name: "Franklin", age: 21, profession: "Developer", salary: "4.500", imageUser: UIImage(named: "user"), isEnableHeart: true),Employee(name: "Caio", age: 23, profession: "Developer", salary: "4.500", imageUser: UIImage(named: "user"), isEnableHeart: true),Employee(name: "Lucas", age: 27, profession: "Developer", salary: "4.500", imageUser: UIImage(named: "user"), isEnableHeart: true),Employee(name: "Felipe", age: 29, profession: "Developer", salary: "4.500", imageUser: UIImage(named: "user"), isEnableHeart: true),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
    }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
        tableView.register(TableViewCell2.nib(), forCellReuseIdentifier: TableViewCell2.identifier)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoCell.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
            
            cell?.setupCell(user:User(name: "Users", image: UIImage(named: "user2")))
            return cell ?? UITableViewCell()
        }
            
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell2.identifier, for: indexPath) as? TableViewCell2
            
        cell?.setupCell(twoCell: twoCell[indexPath.row - 1])
            return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        100
    }
    
    
    
    
}
