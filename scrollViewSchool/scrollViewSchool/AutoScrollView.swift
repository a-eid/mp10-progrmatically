import UIKit

class AutoScrollView: UIViewController {
  
  let sv: UIScrollView = {
    let sv = UIScrollView()
    sv.alwaysBounceVertical = true
    sv.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    sv.contentInsetAdjustmentBehavior = .never
    return sv
  }()
  
  let v1: UIView = {
    let v = UIView()
    v.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
    return v
  }()

  let v2: UIView = {
    let v = UIView()
    v.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    return v
  }()
  
  let v3: UIView = {
    let v = UIView()
    v.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
    return v
  }()

  let container: UIView = {
    let v = UIView()
    v.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
  }
  
  func setupViews(){
    svSetup()
    containerSetup()
    v1Setup()
    v2Setup()
    v3Setup()
  }

  func svSetup(){
    view.addSubview(sv)
    sv.anchorEdges(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor)
  }
  
  func containerSetup(){
    sv.addSubview(container)
    container.anchorEdges(top: sv.topAnchor, left: sv.leftAnchor, right: sv.rightAnchor, bottom: sv.bottomAnchor)
    container.anchorWH(width: sv.widthAnchor, height: nil)
  }
  
  func v1Setup(){
    container.addSubview(v1)
    v1.anchorEdges(top: container.topAnchor, left: container.leftAnchor, right: container.rightAnchor, bottom: nil)
    v1.anchorWHC(width: nil, height: 500)
  }
  
  func v2Setup(){
    container.addSubview(v2)
    v2.anchorEdges(top: v1.bottomAnchor, left: container.leftAnchor, right: container.rightAnchor, bottom: nil)
    v2.anchorWHC(width: nil, height: 500)
  }
  
  func v3Setup(){
    container.addSubview(v3)
    v3.anchorEdges(top: v2.bottomAnchor, left: container.leftAnchor, right: container.rightAnchor, bottom: container.bottomAnchor)
    v3.anchorWHC(width: nil, height: 500)
  }
}






























