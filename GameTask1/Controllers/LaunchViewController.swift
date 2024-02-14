//
//  ViewController.swift
//  GameTask1
//
//  Created by Sergio Mascarpone on 13.02.24.
//

import UIKit

class LaunchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        view.addSubview(imageViewSphere)
        view.addSubview(imageLoadingView)
        view.addSubview(imageSplashView)
        
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
            imageView.contentMode = .center
            imageView.alpha = 0.8
            imageView.translatesAutoresizingMaskIntoConstraints = false
    
            return imageView
        }()
    
    private let imageLoadingView: UIImageView = {
        let loadingView = UIImageView(frame: CGRect(x: 150, y: 500, width: 100, height: 60))
        
        loadingView.image = UIImage(named: "loading")
        loadingView.contentMode = .scaleAspectFill
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        
        return loadingView
    }()
    
    var imageSplashView: UIImageView = {
        let loadingView = UIImageView(frame: CGRect(x: 150, y: 400, width: 90, height: 50))
        loadingView.image = UIImage(named: "Splash")
        loadingView.contentMode = .scaleAspectFill
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        
        return loadingView
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            self.animate()
        })
    }
    
    private func animate() {
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 3
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            
            self.imageSplashView.frame = CGRect(
                x: -(diffX/2),
                y: diffY/2,
                width: size,
                height: size
            )
        })
        
        UIView.animate(withDuration: 0.8, animations: {
            self.imageSplashView.alpha = 0
        }, completion: { done in
            if done {
                DispatchQueue.main.asyncAfter(wallDeadline: .now(), execute: {
                    let viewController = MainMenuViewController()
                    viewController.modalTransitionStyle = .crossDissolve
                    viewController.modalPresentationStyle = .fullScreen
                    self.present(viewController, animated: true)
                })
               }
        })
    }
}
