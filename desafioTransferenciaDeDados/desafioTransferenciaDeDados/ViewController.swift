//
//  ViewController.swift
//  desafioTransferenciaDeDados
//
//  Created by Franklin  Stilhano on 10/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var textFieldSobrenome: UITextField!
    
    
    @IBOutlet weak var textFieldIdade: UITextField!
    
    @IBOutlet weak var textFieldProfissao: UITextField!
    
    @IBOutlet weak var tela02Button: UIButton!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    
    @IBAction func tappedTela02(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        let franklin = Pessoa(nome: textFieldName.text ?? "", sobrenome: textFieldSobrenome.text ?? "", idade: textFieldIdade.text ?? "", profissa0: textFieldProfissao.text ?? "")
        
        vc?.pessoa = franklin
        
        
        
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        
    }
    
  
}

struct Pessoa {
    var nome: String
    var sobrenome: String
    var idade: String
    var profissa0: String
}

