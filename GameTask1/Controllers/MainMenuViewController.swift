//
//  MainMenuViewController.swift
//  GameTask1
//
//  Created by Sergio Mascarpone on 13.02.24.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImageView()
        setupViewSphere()
        setupFireView()
        setupSplashView()
        setupPlayButton()
        setupPrivacyButton()

    }
    
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.image = UIImage(named: "Main")
        imageView.contentMode = .scaleAspectFill
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    
    let imageViewSphere: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.image = UIImage(named: "Sphere")
        imageView.contentMode = .scaleAspectFill
        imageView.alpha = 0.7
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    
    let imageFireView: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.image = UIImage(named: "Fire")
        imageView.contentMode = .scaleAspectFill
        imageView.alpha = 0.6
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    
    let imageSplashView: UIImageView = {
        let loadingView = UIImageView(frame: CGRect(x: 0, y: 190, width: 390, height: 400))
        loadingView.image = UIImage(named: "Splash")
        loadingView.contentMode = .scaleAspectFit
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        
        return loadingView
    }()
    
    
    let playNowButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .green
        button.setTitle("Play Now", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let privacyButtom: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .green
        button.setTitle("Privacy Policy", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 30
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 8)
        button.addTarget(self, action: #selector(privacyButtonTapped), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    fileprivate func setupImageView() {
        view.addSubview(imageView)
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
    fileprivate func setupViewSphere() {
        view.addSubview(imageViewSphere)
        
        imageViewSphere.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        imageViewSphere.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        imageViewSphere.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        imageViewSphere.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
    fileprivate func setupFireView() {
        view.addSubview(imageFireView)
        
        imageFireView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        imageFireView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        imageFireView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        imageFireView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
    fileprivate func setupSplashView() {
        view.addSubview(imageSplashView)
        
        imageSplashView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        imageSplashView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        imageSplashView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        imageSplashView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
    func setupPlayButton() {
        view.addSubview(playNowButton)
        
        playNowButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -190).isActive = true
        playNowButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        playNowButton.heightAnchor.constraint(equalToConstant: 50).isActive               = true
        playNowButton.widthAnchor.constraint(equalToConstant: 300).isActive               = true
    }
    
    
    func setupPrivacyButton() {
        view.addSubview(privacyButtom)
        
        privacyButtom.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        privacyButtom.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 150).isActive = true
        privacyButtom.heightAnchor.constraint(equalToConstant: 60).isActive               = true
        privacyButtom.widthAnchor.constraint(equalToConstant: 60).isActive               = true
    }
    
    
    @objc private func playButtonTapped() {
        let viewController = GameViewController()
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true)

    }
    

    @objc func privacyButtonTapped(_ sender: UIButton) {
        let url = URL(string: "https://www.apple.com")!
        UIApplication.shared.open(url, options: [:])
      }
    
}
