//
//  CustomTableViewCell.swift
//  ResumoAulaCollectionViewAvancada
//
//  Created by Franklin  Stilhano on 11/10/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    var data: [String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
        selectionStyle = .none
            
        }

    func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
    }
    
    func setupCell(title:String, imageView: [String]){
        titleLabel.text = title
        data = imageView
    }
    
   

  
    
}
extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupCell(titleImage: data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: contentView.frame.width, height: collectionView.frame.height)
        
    }
}
