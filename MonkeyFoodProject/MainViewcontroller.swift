//
//  ViewController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 06/04/2021.
//

import UIKit



class MainViewcontroller: UIViewController{
    var array = ["Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo"]
    let collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(customCell.self, forCellWithReuseIdentifier: "cell")
        
        return cv
    }()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints({(make) in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.height.equalTo(113)
            
        })
        
    }
}


extension MainViewcontroller: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! customCell
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 88, height: 113)
    }
    
    
}

class customCell: UICollectionViewCell{
  
    fileprivate var image :UIImageView = {
        let image = UIImageView()
        
        image.isUserInteractionEnabled = true
       
        image.image = UIImage(named: "Logo")
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    let label:UILabel = {
      let label = UILabel()
        label.text = "abc"
        label.textAlignment = .center
        
        return label
    }()
 
    override func layoutSubviews() {
        contentView.addSubview(image)
        contentView.addSubview(label)
         image.snp.makeConstraints({(make) in
            make.top.right.left.equalToSuperview()
            make.height.equalTo(88)
            let tapgs = UITapGestureRecognizer(target: self, action: #selector(ttappss))
            image.addGestureRecognizer(tapgs)
        })
        label.snp.makeConstraints({(make) in
            make.top.equalTo(image.snp.bottom).offset(2)
            make.bottom.left.equalToSuperview()
            make.width.equalTo(40)
          })
        
    }
    @objc func ttappss(){
        print("ttappss")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
     
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class CustomCell2:UIViewController{
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func callapi(){
        print("callAPI")
    }
    
}
protocol call {
    func calll()
}
//dône

//
//    var array = ["Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo","Logo"]
//
//    private let myTable:UITableView = {
//        let table = UITableView()
//        table.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
//
//        return table
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(myTable)
//        //        myTable.register(HomeScreenTableViewCell.self, forCellReuseIdentifier: "HomeScreenTableViewCell")
//        myTable.frame  = view.bounds
//        myTable.dataSource = self
//        myTable.delegate = self
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//
//        return array.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//
//            let cell1 = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
//        cell1.imageView?.image = UIImage(named: array[indexPath.row])
//
//            cell1.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
//            return cell1
//        }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 150
//    }
//
//}
//
//extension MainViewcontroller:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 2
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 500, height: 500)
//    }


