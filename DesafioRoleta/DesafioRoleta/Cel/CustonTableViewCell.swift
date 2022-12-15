//
//  CustonTableViewCell.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 12/13/22.
//

import UIKit

class CustonTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var localLabel: UILabel!
    @IBOutlet weak var imageLocal: UIImageView!
    
    var data: [String] = [ ]
    var local: [String] = [ ]
    
    
    static let identifier: String = "CustonTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(data: HistoryAccountList){
        nameLabel.text = data.name
        localLabel.text = "R$: \(data.date ?? "")"
        imageLocal.image = UIImage(named: data.iconImage ?? "")
        
        
        
    }
}
