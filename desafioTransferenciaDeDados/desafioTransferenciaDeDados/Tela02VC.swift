//
//  Tela02VC.swift
//  desafioTransferenciaDeDados
//
//  Created by Franklin  Stilhano on 10/18/22.
//

import UIKit

class Tela02VC: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var sobrenomeLabel: UILabel!
    
    @IBOutlet weak var idadeLabel: UILabel!
    
    @IBOutlet weak var profissaoLabel: UILabel!
    
   
    var pessoa: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pessoa?.nome
        sobrenomeLabel.text = pessoa?.sobrenome
        idadeLabel.text = pessoa?.idade
        profissaoLabel.text = pessoa?.profissa0
    }
    


}
