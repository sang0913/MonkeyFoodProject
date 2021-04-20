//
//  4CollectionViewTableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 10/04/2021.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var arrColection:[FoodCountry] = []
    
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
        
        loadDataColectionview()
        
        contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints({(make) in
            make.top.left.right.bottom.equalToSuperview()
        })
        print(arrColection)
        
    }
    
    private func loadDataColectionview(){
        let url = URL(string: Config.serverURL + "/FoodCountry")
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        let taskUserRegister = URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
            guard error == nil else { print("error"); return }
            guard let data = data else { return }
            
            let jsonDecoder = JSONDecoder()
            let listFoodCountry = try? jsonDecoder.decode(FoodCountryPostRoute.self, from: data)
            self.arrColection = listFoodCountry!.FoodList
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            print(listFoodCountry)
            
            
        }).resume()
    }
}




extension CollectionViewTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrColection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! customCell1
      
//        cell.lbl_ScrollView.text = "ay dat"
        
                    let urlhinh = Config.serverURL + "/upload/" + arrColection[indexPath.row].Image
                    do {
                        let data = try Data(contentsOf: URL(string: urlhinh)!)
                        cell.image.image = UIImage(data: data)
                    }catch { }
                      
                   
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 88, height: 113)
    }
    
}



class customCell1: UICollectionViewCell{
    
    fileprivate var image :UIImageView = {
        let image = UIImageView()
        
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    let lbl_ScrollView:UILabel = {
        let label = UILabel()
   
        label.textAlignment = .center
        
        return label
    }()
    func configure(){
        contentView.addSubview(image)
        contentView.addSubview(lbl_ScrollView)
        image.snp.makeConstraints({(make) in
            make.top.right.left.equalToSuperview()
            make.height.equalTo(88)
            
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

