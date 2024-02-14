//
//  PrivacyPolicyViewController.swift
//  GameTask1
//
//  Created by Sergio Mascarpone on 13.02.24.
//

import UIKit

class PrivacyPolicyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //setupPrivacyButton()

    }
   
//    let privacyButtom: UIButton = {
//        let button = UIButton(type: .custom)
//        button.backgroundColor = .green
//        button.setTitle("Privacy Policy", for: .normal)
//        button.setTitleColor(.black, for: .normal)
//        button.layer.cornerRadius = 30
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 8)
//        button.addTarget(self, action: #selector(privacyButtonTapped), for: .touchUpInside)
//        
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    func setupPrivacyButton() {
//        view.addSubview(privacyButtom)
//        
//        privacyButtom.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
//        privacyButtom.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 150).isActive = true
//        privacyButtom.heightAnchor.constraint(equalToConstant: 60).isActive               = true
//        privacyButtom.widthAnchor.constraint(equalToConstant: 60).isActive               = true
//    }
//    
//    @objc func privacyButtonTapped(_ sender: UIButton) {
//        let url = URL(string: "https://www.apple.com")!
//        UIApplication.shared.open(url, options: [:])
//      }
}
