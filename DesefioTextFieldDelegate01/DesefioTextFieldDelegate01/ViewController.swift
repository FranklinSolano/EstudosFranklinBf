//
//  ViewController.swift
//  DesefioTextFieldDelegate01
//
//  Created by Franklin  Stilhano on 9/27/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var endereçoTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBOutlet weak var cadastroButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configFontEndColrs()
    }
    
    func configFontEndColrs(){
        view.backgroundColor = .orange
        nameTextField.placeholder = "Digite seu nome:"
        endereçoTextField.placeholder = "Digite seu endereço"
        senhaTextField.placeholder = "Digite sua senha:"
        nameTextField.delegate = self
        endereçoTextField.delegate = self
        senhaTextField.delegate = self
        
        
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.borderWidth = 2
        
        endereçoTextField.layer.borderColor = UIColor.lightGray.cgColor
        endereçoTextField.layer.borderWidth = 2
        
        senhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        senhaTextField.layer.borderWidth = 2
        
        
        cadastroButton.setTitle("Cadastrar", for: .normal)
        cadastroButton.backgroundColor = .systemBlue
        cadastroButton.setTitleColor(.white, for: .normal)
        cadastroButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        
        
    }
    


    @IBAction func tappedCadastroButton(_ sender: UIButton) {
    }
    
}
extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText{
            textField.layer.borderColor = UIColor.lightGray.cgColor
        } else {
                textField.layer.borderColor = UIColor.red.cgColor
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    
}

