//
//  ViewController.swift
//  primeiroProjetoTableView
//
//  Created by Franklin  Stilhano on 10/20/22.
//

import UIKit

class ViewController: UIViewController {
// Passo a passo
// criar a TableView
    // FAzer ligacao
    // configurar tableView
    // criar celula
    // configurar celula
    //  registrar a celula
    // configurar exibicao da celula
    

    @IBOutlet weak var tebleView: UITableView!
    
    var data: [String] = ["Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin","Caio", "Felipe", "Jean", "Lucas", "Franklin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView(){
        tebleView.delegate = self
        tebleView.dataSource = self
        tebleView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }


}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    
    //indicar a quantidade de linhas por sessao
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // popular a celula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
                
        cell?.setupCell(name:data[indexPath.row] )
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}
