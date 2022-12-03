//
//  TableViewCell.swift
//  DesafioMarcaDeCarroTableView
//
//  Created by Franklin  Stilhano on 10/25/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCar: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    // ciclo de vida da celula -> como se fosse um viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        
    }

    func setupCell(marca:MarcaCar){
        imageCar.image = marca.car
        nameLabel.text = marca.name
    }
    
}
struct MarcaCar{
    
    var car: UIImage?
    var name: String
}


