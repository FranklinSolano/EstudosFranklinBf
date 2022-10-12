//
//  Tela03VC.swift
//  navegacaoExercicio
//
//  Created by Franklin  Stilhano on 10/6/22.
//

import UIKit

class Tela03VC: UIViewController {
    
    
    @IBOutlet weak var backFrontLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        confingElemento()
    }
    
    func confingElemento(){
        
        backFrontLabel.text = "Back Front Academy"
        backFrontLabel.font = UIFont.boldSystemFont(ofSize: 20)
        backFrontLabel.textColor = .purple
        backFrontLabel.layer.borderWidth = 1
        backFrontLabel.layer.borderColor = UIColor.purple.cgColor
        backFrontLabel.clipsToBounds = true
        backFrontLabel.layer.cornerRadius = 10
    }
    



}
