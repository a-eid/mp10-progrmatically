import UIKit
class Success: UIViewController {
  
  let exit: UIButton = {
    let b = UIButton()
    b.setTitle("Exit", for: .normal)
    return b
  }()
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
    successExit()
  }

  func successSetup(){
    view.addSubview(success)
    success.anchorCenter(x: view.centerXAnchor, y: view.centerYAnchor)
    success.anchorWHC(width: 200, height: 200)
  }
  
  func successExit(){
    view.addSubview(exit)
    exit.anchorCenter(x: view.centerXAnchor, y: nil)
    exit.anchorWHC(width: 100, height: 50)
    exit.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
    exit.anchorEdges(top: nil, tConst: 0, left: nil, lConst: 0, right: nil, rConst: 0, bottom: view.bottomAnchor, bConst: -30)
    exit.addTarget(self, action: #selector(leave), for: .touchUpInside)
  }
  
  @objc func leave(){
    dismiss(animated: true, completion: nil)
  }
  
}
