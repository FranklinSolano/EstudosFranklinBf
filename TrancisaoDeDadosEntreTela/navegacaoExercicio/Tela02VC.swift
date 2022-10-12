//
//  Tela02VC.swift
//  navegacaoExercicio
//
//  Created by Franklin  Stilhano on 10/6/22.
//

import UIKit

class Tela02VC: UIViewController {

    @IBOutlet weak var backFrontLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        configLayout()

     
    }
    
    func configLayout(){
        backFrontLabel.text = "Back Front Academy"
        backFrontLabel.font = UIFont.boldSystemFont(ofSize: 20)
        backFrontLabel.textColor = .green
        backFrontLabel.layer.borderWidth = 1
        backFrontLabel.layer.borderColor = UIColor.green.cgColor
        backFrontLabel.clipsToBounds = true
        backFrontLabel.layer.cornerRadius = 10
    }
 

}
