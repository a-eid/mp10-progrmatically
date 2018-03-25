//
//  ViewController.swift
//  MircalePills
//
//  Created by Ahmed Eid on 25/03/2018.
//  Copyright © 2018 Ahmed Eid. All rights reserved.
//

import UIKit

class Home: UIViewController {
  
  let sv: UIScrollView = {
    let sv = UIScrollView()
    sv.contentInsetAdjustmentBehavior = .never
    return sv
  }()
  
  let container: UIView = {
    let v = UIView()
    return v
  }()
  
  let divider: UIView = {
    let v = UIView()
    v.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    return v
  }()
  
  let logo: UIImageView = {
    let iv = UIImageView()
    iv.image = #imageLiteral(resourceName: "miraclePillEmoji")
    iv.contentMode = .scaleAspectFit
    return iv
  }()
  
  let header: UITextView = {
    let tv = UITextView()
    let text = NSMutableAttributedString(string: "MIRACLE PILLS", attributes: [
      NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1),
      NSAttributedStringKey.font : UIFont.systemFont(ofSize: 22)
    ])
    
    let price = NSMutableAttributedString(string: "\n$150", attributes: [
      NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1),
      NSAttributedStringKey.font : UIFont.systemFont(ofSize: 22)
    ])
    text.append(price)
    tv.attributedText = text
    tv.backgroundColor = .clear
    tv.textAlignment = .center
    tv.isEditable = false
    tv.isScrollEnabled = false
    tv.isSelectable = false
    return tv
  }()
  
  let nameInput: InputCmp = {
    let i = InputCmp()
    i.placeHolder = "Enter Your Name"
    i.labelText = "Full Name"
    return i
  }()
  
  let emailInput: InputCmp = {
    let i = InputCmp()
    i.placeHolder = "Enter Your Email"
    i.labelText = "Email"
    return i
  }()

  let cityInput: InputCmp  = {
    let i = InputCmp()
    i.placeHolder = "Enter City Name"
    i.labelText = "City"
    return i
  }()
  
  let streetInput: InputCmp = {
    let i = InputCmp()
    i.placeHolder = "Enter Street Name"
    i.labelText = "Street"
    return i
  }()
  
  let countryInput: InputCmp = {
    let i = InputCmp()
    i.placeHolder = "Enter Country Name"
    i.labelText = "Country"
    return i
  }()
  
  let zipInput: InputCmp  = {
    let i = InputCmp()
    i.placeHolder = "Enter Zipcode"
    i.labelText = "Zipcode"
    return i
  }()
  
  let buyNowButton: UIButton = {
    let b = UIButton()
    b.setImage(#imageLiteral(resourceName: "buyNowBtn"), for: .normal)
    return b
  }()
  
  let ai: UIActivityIndicatorView = {
    let ai = UIActivityIndicatorView()
    ai.hidesWhenStopped = true
    return ai
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    setupViews()
  }

}

// setupViews

extension Home {
  func setupViews(){
    svSetup()
    containerSetup()
    logoSetup()
    headerSetup()
    setupDivider()
    setupInputs()
    setupButton()
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
  
  func logoSetup(){
    container.addSubview(logo)
    logo.anchorCenter(x: container.centerXAnchor, y: nil)
    logo.anchorEdges(top: container.topAnchor, tConst: 40, left: nil, lConst: 0, right: nil, rConst: 0, bottom: nil, bConst: 0)
    logo.anchorWHC(width: 230, height: 110)
  }
  
  func headerSetup(){
    container.addSubview(header)
    header.anchorEdges(top: logo.bottomAnchor, tConst: 16, left: nil, lConst: 0, right: nil, rConst: 0, bottom: nil, bConst: 0)
    header.anchorCenter(x: container.centerXAnchor, y: nil)
    header.anchorWHC(width: 250, height: nil)
    header.sizeToFit()
  }
  
  func setupDivider(){
    container.addSubview(divider)
    divider.anchorEdges(top: header.bottomAnchor, tConst: 20, left: container.leftAnchor, lConst: 30, right: container.rightAnchor, rConst: -30, bottom: nil, bConst: 0)
    divider.anchorWHC(width: nil, height: 1)
  }
  
  func setupInputs(){
    container.addSubview(nameInput)
    container.addSubview(emailInput)
    container.addSubview(streetInput)
    container.addSubview(cityInput)
    container.addSubview(countryInput)
    container.addSubview(zipInput)
    container.addSubview(buyNowButton)
    
    nameInput.anchorEdges(top: divider.bottomAnchor, tConst: 20, left: divider.leftAnchor, lConst: 0, right: divider.rightAnchor, rConst: 0, bottom: nil, bConst: 0)

    emailInput.anchorEdges(top: nameInput.bottomAnchor, tConst: 20, left: divider.leftAnchor, lConst: 0, right: divider.rightAnchor, rConst: 0, bottom: nil, bConst: 0)
    
    streetInput.anchorEdges(top: emailInput.bottomAnchor, tConst: 20, left: divider.leftAnchor, lConst: 0, right: divider.rightAnchor, rConst: 0, bottom: nil, bConst: 0)
    
    cityInput.anchorEdges(top: streetInput.bottomAnchor, tConst: 20, left: divider.leftAnchor, lConst: 0, right: divider.rightAnchor, rConst: 0, bottom: nil, bConst: 0)
    
    countryInput.anchorEdges(top: cityInput.bottomAnchor, tConst: 20, left: divider.leftAnchor, lConst: 0, right: divider.rightAnchor, rConst: 0, bottom: nil, bConst: 0)
    
    zipInput.anchorEdges(top: countryInput.bottomAnchor, tConst: 20, left: divider.leftAnchor, lConst: 0, right: divider.rightAnchor, rConst: 0, bottom: nil, bConst: 0)
    
  }
  
  func setupButton(){
    buyNowButton.anchorEdges(top: zipInput.bottomAnchor, tConst: 20, left: divider.leftAnchor, lConst: 0, right: divider.rightAnchor, rConst: 0, bottom: container.bottomAnchor , bConst: -20)
    buyNowButton.addTarget(self, action: #selector(submit), for: .touchUpInside)
    
    container.addSubview(ai)
    ai.anchorCenter(x: buyNowButton.centerXAnchor, y: buyNowButton.centerYAnchor)
  }
  
  @objc func submit(){
    view.endEditing(true)
    ai.startAnimating()
    container.isUserInteractionEnabled = false
    DispatchQueue.main.asyncAfter(deadline: .now() +  2) {
      self.container.isUserInteractionEnabled = false
      self.ai.startAnimating()
      let s = Success()
      self.present(s, animated: true , completion: nil)
    }
  }

}









