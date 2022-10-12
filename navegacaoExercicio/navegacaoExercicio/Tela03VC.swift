//
//  Tela03VC.swift
//  navegacaoExercicio
//
//  Created by Franklin  Stilhano on 10/6/22.
//

import UIKit

class Tela03VC: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    var sobrenome:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        nameLabel.text = name
        
    }
    
 



}
