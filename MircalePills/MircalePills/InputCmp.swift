import UIKit

class InputCmp: UIView {
  
  var labelText: String? {
    willSet{
      label.text = newValue
    }
  }

  var placeHolder: String? {
    willSet{
      input.placeholder = newValue
    }
  }
  
  let label: UILabel = {
    let l = UILabel()
    l.font = UIFont.systemFont(ofSize: 12)
    return l
  }()
  
  let input: UITextField = {
    let i = UITextField()
    i.leftViewMode = .always
    i.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 40))
    i.layer.cornerRadius = 5
    i.layer.borderWidth = 1
    i.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    return i
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupViews(){
    addSubview(label)
    addSubview(input)
    self.anchorWHC(width: nil, height: 60)
    
    label.anchorEdges(top: topAnchor, tConst: 0, left: leftAnchor, lConst: 0, right: rightAnchor, rConst: 0, bottom: nil, bConst: 0)
    label.anchorWHC(width: nil, height: 20)
    
    input.anchorEdges(top: nil, tConst: 0, left: leftAnchor, lConst: 0, right: rightAnchor, rConst: 0, bottom: bottomAnchor, bConst: 0)
    input.anchorWHC(width: nil, height: 40)
  }
  
}
















