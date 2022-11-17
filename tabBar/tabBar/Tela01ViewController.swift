//
//  ViewController.swift
//  tabbar
//
//  Created by Franklin  Stilhano on 11/10/22.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var editarButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var adicionarButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var data: [Perfil] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configElements()
    }

    func  configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    func configElements(){
        imageView.image = UIImage(systemName: "person.circle")
        nameTextField.placeholder = "Digite seu nome:"
        editarButton.titleLabel?.text = "Editar Foto"
        editarButton.backgroundColor = .systemBlue
        editarButton.layer.cornerRadius = 15
        editarButton.clipsToBounds = true
        nameLabel.text = "Nome:"
        adicionarButton.titleLabel?.text = "Adicionar"
        adicionarButton.backgroundColor = .systemBlue
        adicionarButton.layer.cornerRadius = 15
        adicionarButton.clipsToBounds = true
        
    }
    
    
    @IBAction func tappedButtonAdicionar(_ sender: UIButton) {
        data.append(Perfil(name: nameTextField.text ?? "", imagePerfil: imageView.image))
        nameTextField.text = ""
        tableView.reloadData()
    }
    
   

}

extension Tela01ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(perfil: data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         data.remove(at: indexPath.row)
         tableView.reloadData()
    }
    
}
