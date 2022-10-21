//
//  NameTableViewCell.swift
//  primeiroProjetoTableView
//
//  Created by Franklin  Stilhano on 10/20/22.
//

import UIKit
// criar a celula
// criar identifier
// add identifier na xib
// criar metodo da Nib
//criar os elementos e fazer as suas ligacoes
// configurar Elementos
//criar metodo de Setup

class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    // ciclo de vida da celula -> como se fosse um viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(name:String){
        nameLabel.text = name
    }
    
}
