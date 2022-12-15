//
//  ViewController.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 11/24/22.
//

import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var imageCartao: UIImageView!
    
    
    @IBOutlet weak var texteFieldName: UITextField!
    
    @IBOutlet weak var sortearButton: UIButton!
    
    @IBOutlet weak var tableview: UITableView!
    
    var viewModel: HomeViewModel = HomeViewModel()
    var alert: Alert?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self)
        configElements()
        configTableView()
        blockedDrawNumberButton()
        
        
    }
    
    
    @IBAction func tappedSortearButton(_ sender: UIButton) {
        viewModel.SortearButton()
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

        if viewModel.isListPersonEmpty {
            sortearButton.isEnabled = false
            sortearButton.alpha = 0.5
        } else {
            sortearButton.isEnabled = true
            sortearButton.alpha = 1
        }
    }
}



extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if viewModel.isListPersonEmpty {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmptyTableViewCell.identifier,for: indexPath) as? EmptyTableViewCell
            return cell ?? UITableViewCell()
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier) as? PersonTableViewCell
            cell?.setupCell(data:viewModel.loadCurrentPerson(indexPath: indexPath) )
            
            return cell ?? UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        viewModel.removePerson(indexPath: indexPath)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if  viewModel.checkPersonPayer(indexPath: indexPath) {
            alert?.alertInformation(title: "Muito bom", message: "Agora é sua vez, pague a conta")
            viewModel.removeAll()
            
        } else {
            viewModel.removePerson(indexPath: indexPath)
            
        }
        blockedDrawNumberButton()
        tableView.reloadData()
    }
    
    
}
extension HomeVC: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if !(textField.text?.isEmpty ?? false){
            viewModel.addPerson(name: textField.text ?? "")
            tableview.reloadData()
            blockedDrawNumberButton()
        }
        texteFieldName.text = ""
        return true
    }
}
