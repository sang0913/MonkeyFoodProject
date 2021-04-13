
import  UIKit
protocol ReusableView {
   func initialize()
}
public class BaseViewcontroller:UIViewController,ReusableView {

    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initialize()
       
    }
    func initialize() {
   
      
        
    }
    
}
public class BaseUITableviewcell:UITableViewCell,ReusableView{
    func initialize() {
        
    }

    
    public override func layoutSubviews() {
        initialize()
    }
}
