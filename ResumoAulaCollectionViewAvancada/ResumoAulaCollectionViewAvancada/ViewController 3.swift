//
//  ViewController.swift
//  ResumoAulaCollectionViewAvancada
//
//  Created by Franklin  Stilhano on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var segundaImage: [String] = ["carol1","carol2","carol3"]
    var tercaImage: [String] = ["maysa1","maysa2","maysa3"]
    var quartaImage: [String] = ["karol1","karol2","karol3"]
    var quintaImage: [String] = ["andressa1","andressa2","andressa3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
            }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier,for: indexPath) as? CustomTableViewCell
            cell?.setupCell(title: "Caroline", imageView: segundaImage)
            
            return cell ?? UITableViewCell()
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier,for: indexPath) as? CustomTableViewCell
            cell?.setupCell(title: "Maysa", imageView: tercaImage)
            
            return cell ?? UITableViewCell()
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier,for: indexPath) as? CustomTableViewCell
            cell?.setupCell(title: "Karol", imageView: quartaImage)
            
            return cell ?? UITableViewCell()
        }
       
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier,for: indexPath) as? CustomTableViewCell
        cell?.setupCell(title: "Andressa", imageView: quintaImage)
        
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 470
    }
    
}
