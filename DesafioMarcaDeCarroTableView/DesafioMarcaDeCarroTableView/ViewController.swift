//
//  ViewController.swift
//  DesafioMarcaDeCarroTableView
//
//  Created by Franklin  Stilhano on 10/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    

    var Marca: [MarcaCar] = [MarcaCar(car: UIImage(named: "ford"), name: "Ford"),MarcaCar(car: UIImage(named: "fiat"), name: "Fiat"),MarcaCar(car: UIImage(named: "chevrolet"), name: "Chevrolet"),MarcaCar(car: UIImage(named: "bmw"), name: "BMW"),MarcaCar(car: UIImage(named: "volkswagen"), name: "Volkswagen")]
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

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Marca.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        
        cell?.setupCell(marca:Marca[indexPath.row])
        return cell ?? UITableViewCell()
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("O carro selecionado foi: \(Marca[indexPath.row].name)")
    }
}
