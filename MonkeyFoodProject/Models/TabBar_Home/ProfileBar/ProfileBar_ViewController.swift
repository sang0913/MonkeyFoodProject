//
//  ProfileBar_ViewController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 12/04/2021.
//

import UIKit

class ProfileBar_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //MARK:UI Elements
    let defaults = UserDefaults.standard
    var arrayUser:[User] = []
    
    private let myTable:UITableView = {
        let table = UITableView()
        
        table.register(Toptitle_ProfileBar_TableViewCell.self, forCellReuseIdentifier: Toptitle_ProfileBar_TableViewCell.identifier)
        table.register(InfoUser_ProfileBar_TableViewCell.self, forCellReuseIdentifier: InfoUser_ProfileBar_TableViewCell.identifier)
        table.register(textField_ProfileBar_TableViewCell.self, forCellReuseIdentifier: textField_ProfileBar_TableViewCell.identifier)
        table.register(ButtonSave_ProfileBar_TableViewCell.self, forCellReuseIdentifier: ButtonSave_ProfileBar_TableViewCell.identifier)
        return table
    }()
    
    //MARK:Object LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTable)
        loadDataUser()
        myTable.frame  = view.bounds
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    //MARK:Setup TableView Elements
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row  == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Toptitle_ProfileBar_TableViewCell.identifier, for: indexPath) as! Toptitle_ProfileBar_TableViewCell
            
            
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
        
        
        if indexPath.row  == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: InfoUser_ProfileBar_TableViewCell.identifier, for: indexPath) as! InfoUser_ProfileBar_TableViewCell
            
            let tap_lbl_Signout = UITapGestureRecognizer(target: self, action: #selector(tap_Button_SignOut))
            cell.lbl_SignOut_ProfileBar.addGestureRecognizer(tap_lbl_Signout)
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
        
        if indexPath.row  == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: textField_ProfileBar_TableViewCell.identifier, for: indexPath) as! textField_ProfileBar_TableViewCell
            
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
        if indexPath.row  == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier:ButtonSave_ProfileBar_TableViewCell.identifier) as! ButtonSave_ProfileBar_TableViewCell
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
        
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: textField_ProfileBar_TableViewCell.identifier  , for: indexPath)
            cell.separatorInset = .zero
            return cell
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return Demension.shared.largeVerticalMargin_60
        }
        
        if indexPath.row == 1 {
            return Demension.shared.largeVerticalMargin_245
            
        }
        if indexPath.row == 2 {
            return Demension.shared.largeVerticalMargin_438
            
        }
        if indexPath.row == 3 {
            return Demension.shared.largeVerticalMargin_75
        }
        return 0
    }
    
    
    //MARK:Action
    @objc public func tap_Button_SignOut(){
        print("tap_Button_SignOut")
        
        let defaults = UserDefaults.standard
        if let UserToken = defaults.string(forKey: "UserToken") {
            let url = URL(string: Config.serverURL + "/logout")
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            let sData = "Token=" + UserToken
            
            let postData = sData.data(using: .utf8)
            request.httpBody = postData
            let taskUserRegister = URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
                guard error == nil else { print("error"); return }
                guard let data = data else { return }
                
                do{
                    guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else { return }
                    print(json)
                    
                    if(json["kq"] as! Int == 1){
                        
                        
                        DispatchQueue.main.async {
                            let sb = UIStoryboard(name: "Main", bundle: nil)
                            _ = sb.instantiateViewController(identifier: "LoginScreen") as! LoginScreen
                            self.navigationController?.popViewController(animated: true)
                        }
                        print("Logout thanhf coong")
                        
                    }
                    else {
                        
                    }
                    
                    //if
                }catch let error { print(error.localizedDescription) }
            })
            taskUserRegister.resume()
        }
        
    }
    
    private func loadDataUser(){
        let defaults = UserDefaults.standard
        if let UserToken = defaults.string(forKey: "UserToken"){
            //co token
            let url = URL(string: Config.serverURL + "/verifyToken")
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            let sData = "Token=" + UserToken
            let postData = sData.data(using: .utf8)
            request.httpBody = postData
            
            let taskUserRegister = URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
                guard error == nil else { print("error"); return }
                guard let data = data else { return }
                
                do{
                    guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else { return }
                    if(json["kq"] as! Int == 1){
                        //Trùng Token
                        print(UserToken)
                        
                    }
                    else {
                        //alert that bai
                        print("Không Trùng Token")
                        
                    }
                    
                }catch let error { print(error.localizedDescription) }
            })
            taskUserRegister.resume()
            
        } else {
            //k co token
            //Đứng ở màn hình gốc
        }
    }
    
    
}
