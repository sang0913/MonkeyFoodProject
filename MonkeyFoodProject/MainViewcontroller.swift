//
//  ViewController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 06/04/2021.
//

import UIKit

class MainViewcontroller: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet var txtUserName: UITextField!
    @IBOutlet var txtPassWord: UITextField!
    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtAddress: UITextField!
    @IBOutlet var txtPhoneNumber: UITextField!
    @IBOutlet var imghinh: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseimg(_ sender: Any) {
        let image = UIImagePickerController()
        image.sourceType = .photoLibrary
        image.allowsEditing = false
        image.delegate = self
        self.present(image, animated: true
                     , completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue:  UIImagePickerController.InfoKey.originalImage.rawValue)] as? UIImage{
            self.imghinh.image = image
        }
        else {
            print("cant choose your image from photoGallery!")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func upload(_ sender: Any) {
        var url = URL(string: "http://192.168.1.3:3000/uploadFile")
        let boundary = UUID().uuidString
        let session = URLSession.shared
        
        var urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        
        var data = Data()
        data.append("\r\n--\(boundary)\r\n".data(using: .utf8)!)
        data.append("Content-Disposition: form-data; name=\"hinhdaidien\"; filename=\"avatar.png\"\r\n".data(using: .utf8)!)
        data.append("Content-Type: image/png\r\n\r\n".data(using: .utf8)!)
        data.append((imghinh.image?.pngData())!)
        data.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)
        
        session.uploadTask(with: urlRequest,
                           from: data,
                           completionHandler: { responseData, response, error in
                            if error == nil {
                                
                                let jsonData = try? JSONSerialization.jsonObject(with: responseData!, options: .allowFragments)
                                if let json  = jsonData as? [String: Any]{
                                    
                                    if(json["kq"] as! Int == 1){
                                        let urlHinh = json["urlFile"] as? [String:Any]
                                        print(urlHinh!["filename"])
                                        //co  du lieu tam hinh
                                        DispatchQueue.main.async {
                                            
                                            url = URL(string: "http://192.168.1.3:3000/register")
                                            var request = URLRequest(url: url!)
                                            request.httpMethod = "POST"
                                            
                                            let fileName = urlHinh!["filename"] as! String
                                            var sData = "Username=" + self.txtUserName.text!
                                            sData += "&Password=" + self.txtPassWord.text!
                                            sData += "&Name=" +  self.txtName.text!
                                            sData += "&Image=" + fileName
                                            sData += "&Email=" + self.txtEmail.text!
                                            sData += "&Address=" + self.txtAddress.text!
                                            sData += "&PhoneNumber" + self.txtPhoneNumber.text!
                                            
                                            let postData = sData.data(using: .utf8)
                                            request.httpBody = postData
                                            
                                            let taskUserRegister = URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
                                                guard error == nil else { print("error"); return }
                                                guard let data = data else { return }
                                                
                                                do{
                                                    guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else { return }
                                                    print(json)
                                                    
                                                }catch let error { print(error.localizedDescription) }
                                            })
                                            taskUserRegister.resume()
                                        }
                                        
                                        
                                    }else{
                                        print("Upload failed!")
                                        
                                    }
                                    
                                }
                                
                            }
                           }).resume()
    }
    
}

