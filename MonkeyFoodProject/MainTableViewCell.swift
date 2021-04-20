//
//  MainTableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 10/04/2021.
//

import UIKit

class MainTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
 
static let identifier = "MainTableViewCell"
   
    private let collectionView1 :UICollectionView = {
       let collec = UICollectionView()
        
        return collec
       
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        collectionView1.dataSource = self
        collectionView1.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    

}
