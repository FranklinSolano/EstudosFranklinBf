//
//  EmptyTableViewCell.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 11/24/22.
//

import UIKit

class EmptyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageCell: UIImageView!
    
    
    @IBOutlet weak var informacaoLabel: UILabel!
    
    static let identifier: String = "EmptyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
        selectionStyle = .none
        
    }
    
    func configElements(){
        imageCell.image = UIImage(named: "roleta")
        informacaoLabel.text = "Insira os participantes para iniciar uma roleta russa:"
        informacaoLabel.textColor = .white
        contentView.backgroundColor = .black
        
    }
    
    func setupCell(){
        
    }
    
    
    
}
