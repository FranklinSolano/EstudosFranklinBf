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
    var alert: Alert?
    let imagePicker: UIImagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self)
        configTableView()
        configElements()
        configTextField()
    }
    
    @IBAction func tappedButtonAdicionar(_ sender: UIButton) {
        if nameTextField.text?.isEmpty ?? true ||  nameTextField.text?.hasPrefix(" ") ?? true{
            self.alert?.alertInformation(title: "Atenção", message: "Preencher o campo Nome")
        }else {
            data.append(Perfil(name: nameTextField.text ?? "", imagePerfil: imageView.image))
            nameTextField.text = ""
            tableView.reloadData()
            
        }
    }
    
    @IBAction func tappedEditarFoto(_ sender: UIButton) {
        
        
    }
    func configImagePicker(){
        imagePicker.delegate = self
    }
    
    func configTextField(){
        nameTextField.delegate = self
    }
    
    func  configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    func configElements(){
        imageView.image = UIImage(systemName: "person.circle")
        nameTextField.placeholder = "Digite seu nome:"
        editarButton.setTitle("Editar", for: .normal)
        editarButton.backgroundColor = .systemBlue
        editarButton.layer.cornerRadius = 15
        editarButton.clipsToBounds = true
        nameLabel.text = "Nome:"
        adicionarButton.setTitle("Adicionar", for: .normal)
        adicionarButton.backgroundColor = .systemBlue
        adicionarButton.layer.cornerRadius = 15
        adicionarButton.clipsToBounds = true
        adicionarButton.isEnabled = false
        
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
}
extension Tela01ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension Tela01ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{ self.imageView.image = image}
    }
}
