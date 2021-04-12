//
//  4CollectionViewTableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 10/04/2021.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
  
    
    static let identifier = "CollectionViewTableViewCell"
    //MARK:UI Elements
  
    let collectionView:UICollectionView = {
           let layout = UICollectionViewFlowLayout()
           layout.scrollDirection = .horizontal
           let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
           cv.translatesAutoresizingMaskIntoConstraints = false
           cv.register(customCell1.self, forCellWithReuseIdentifier: "cell")
 
           return cv
       }()
       
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints({(make) in
            make.top.left.right.bottom.equalToSuperview()
    })
}
}


extension CollectionViewTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! customCell1
        cell.backgroundColor = .red
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 88, height: 113)
    }
    
    
}
class customCell1: UICollectionViewCell{
    
    fileprivate var image :UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .red
        return image
    }()
    let lbl_ScrollView:UILabel = {
      let label = UILabel()
        label.text = "abc"
        label.textAlignment = .center
        
        return label
    }()
    func configure(){
        contentView.addSubview(image)
        contentView.addSubview(lbl_ScrollView)
        image.snp.makeConstraints({(make) in
            make.top.right.left.equalToSuperview()
            make.height.equalTo(88)
            image.backgroundColor = .red
        })
        lbl_ScrollView.snp.makeConstraints({(make) in
            make.bottom.equalToSuperview()
            make.width.equalTo(image)
            
        })
      
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        configure()
    
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
   
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    //MARK:Object LifeCycle

    
    //MARK:Setup UI Elements
//
//    func setupUI() {
//        self.addSubview(collectionview)
//        collectionview.snp.makeConstraints({(make) in
//            make.bottom.left.equalToSuperview()
//            make.height.width.equalToSuperview()
//            collectionview.backgroundColor = .red
//        })
//        collectionview.addSubview(lbl_topTextTitle)
//        lbl_topTextTitle.snp.makeConstraints({(make) in
//            make.bottom.left.equalToSuperview()
//            make.height.width.equalToSuperview()
//            lbl_topTextTitle.backgroundColor = .green
//        })
//
//    }


//extension CollectionViewTableViewCell:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 100, height: 90)
//    }
//
//}
//let img_TopTitile:UIImageView = {
//    let image = UIImageView()
//    image.image = Resource.SourceImage.SourceImageHomeScreen.img_Shopping
//    image.backgroundColor = .red
//    image.isUserInteractionEnabled = true
//
//
//    return image
//}()
//let lbl_topTextTitle:UILabel = {
//    let lable = UILabel()
//    lable.text = "Good morning Sang!"
//    lable.textAlignment = .center
//    lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_20)
//    return lable
//}()
