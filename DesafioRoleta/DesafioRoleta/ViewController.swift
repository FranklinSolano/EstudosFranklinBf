//
//  ViewController.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 11/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageCartao: UIImageView!
    
    
    @IBOutlet weak var texteFieldName: UITextField!
    
    @IBOutlet weak var sortearButton: UIButton!
    
    @IBOutlet weak var tableview: UITableView!
    
    var listPerson: [Person] = []
    var listImage: [String] = ["Image","Image-1","Image-2","Image-3","Image-4","Image-5",]
    var alert: Alert?
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self)
        configElements()
        configTableView()
        blockedDrawNumberButton()
        
        
    }
    
    
    @IBAction func tappedSortearButton(_ sender: UIButton) {
        self.person = listPerson.randomElement()
    }
    
    func configElements(){
        imageCartao.image = UIImage(named: "card")
        texteFieldName.placeholder = "Digite seu nome:"
        sortearButton.setTitle("Sortear", for: .normal)
        sortearButton.backgroundColor = .systemBlue
        sortearButton.setTitleColor(.white, for: .normal)
        view.backgroundColor = .black
        tableview.backgroundColor = .black
        tableview.separatorStyle = .none
        texteFieldName.delegate = self
        
    }
    
    func configTableView(){
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(EmptyTableViewCell.nib(), forCellReuseIdentifier: EmptyTableViewCell.identifier)
        tableview.register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
    }
    
    func blockedDrawNumberButton(){

        if listPerson.isEmpty {
            sortearButton.isEnabled = false
            sortearButton.alpha = 0.5
        } else {
            sortearButton.isEnabled = true
            sortearButton.alpha = 1
        }
    }
}
// ddddd


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if listPerson.count == 0 {
            return 1
        } else{
            return listPerson.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if listPerson.count == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmptyTableViewCell.identifier,for: indexPath) as? EmptyTableViewCell
            return cell ?? UITableViewCell()
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier) as? PersonTableViewCell
            cell?.setupCell(data: listPerson[indexPath.row])
            
            return cell ?? UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if listPerson.count == 0 {
            return 220
        }else {
            return 90
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        listPerson.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if self.listPerson[indexPath.row] === self .person{
            alert?.alertInformation(title: "Muito bom", message: "Agora é sua vez, pague a conta")
            listPerson.removeAll()
            
        } else {
            listPerson.remove(at: indexPath.row)
            
        }
        blockedDrawNumberButton()
        tableView.reloadData()
    }
    
    
}
extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if !(textField.text?.isEmpty ?? false){
            listPerson.append(Person(name: texteFieldName.text ?? "", image: listImage.randomElement() ?? "" ))
            tableview.reloadData()
        }
        texteFieldName.text = ""
        return true
    }
}
