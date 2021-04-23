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
        setup_collectionView()
        
        loadDataColectionview()
        
    }
    
    //MARK: setup view
    private func setup_collectionView(){
        contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints({(make) in
            make.top.left.right.bottom.equalToSuperview()
        })
    }
    //MARK: Post data to server
    private func loadDataColectionview(){
        let url = URL(string: Config.serverURL + "/FoodCountry")
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
            guard error == nil else { print("error"); return }
            guard let data = data else { return }
            
            let jsonDecoder = JSONDecoder()
            let listFoodCountry = try? jsonDecoder.decode(FoodCountryPostRoute.self, from: data)
            self.arrColection = listFoodCountry!.FoodList
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
            
            
        }).resume()
    }
}



//MARK:UI tableview elements
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
        
        cell.lbl_ScrollView.text = arrColection[indexPath.row].Country
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 88, height: 113)
    }
    
}



class customCell1: UICollectionViewCell{
    //MARK:UI Elements
    
        let image :UIImageView = {
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
    
    //MARK:Object LifeCycle
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setup_cellColectionView()
    }
    
    //MARK:Setup UI Element
    func setup_cellColectionView(){
        contentView.addSubview(image)
        contentView.addSubview(lbl_ScrollView)
        image.snp.makeConstraints({(make) in
            make.top.right.left.equalToSuperview()
            make.height.equalTo(Demension.shared.largeVerticalMargin_88)
            
        })
        lbl_ScrollView.snp.makeConstraints({(make) in
            make.bottom.equalToSuperview()
            make.width.equalTo(image)
        })
    }
}

