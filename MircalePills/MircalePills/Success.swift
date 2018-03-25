import UIKit
class Success: UIViewController {
  let success: UIImageView = {
    let iv = UIImageView()
    iv.contentMode = .scaleAspectFit
    iv.image = #imageLiteral(resourceName: "successIndicator")
    
    return iv
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    successSetup()
  }
  
  
  func successSetup(){
    view.addSubview(success)
    self.success.anchorCenter(x: self.view.centerXAnchor, y: self.view.centerYAnchor)
    self.success.anchorWHC(width: 200, height: 200)
  }
}
