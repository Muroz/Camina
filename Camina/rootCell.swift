//
//  rootCell.swift
//  Camina
//
//  Created by Shawn Chen on 2017-08-04.
//  Copyright © 2017 proximastech.com. All rights reserved.
//



import UIKit

class rootCell: UICollectionViewCell {
    
    var navView : UINavigationController?
    
    var backgroundImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "cabotTower")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    
    
    var logoImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo_white")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Already have an Account? Log in", for: UIControlState())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    lazy var signupButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(hex: "00B16A")
        button.layer.cornerRadius = 5
        button.setTitle("Get Started", for: UIControlState())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.addTarget(self, action: #selector(handlesignup), for: .touchUpInside)
        return button
    }()
    
    
    
    var nav = UINavigationController()
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(backgroundImage)
        addSubview(logoImage)
        addSubview(signupButton)
        addSubview(loginButton)
        setupBackgroudImage()
        setupLogoImage()
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    
    func handleLogin(){
        let lvc = loginViewController()
        navView?.pushViewController(lvc, animated: true)
    }
    

    

    func setupBackgroudImage(){
        backgroundImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        backgroundImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        backgroundImage.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    
    func setupLogoImage(){
        logoImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        logoImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant:170).isActive = true
    }
    //signup  with their email
    func handlesignup(){
        
        print(12312)

        let svc = signupViewController()
        navView?.pushViewController(svc, animated: true)
    }
    
    func setupButton(){
        //login button constraint
        loginButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: widthAnchor, constant: -24).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //setup  email signup button constraint
        signupButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant:-30).isActive = true
        signupButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        signupButton.widthAnchor.constraint(equalTo: widthAnchor, constant: -24).isActive = true
        signupButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        
    }
    
}









