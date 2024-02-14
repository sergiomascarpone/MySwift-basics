//
//  GameViewController.swift
//  GameTask1
//
//  Created by Sergio Mascarpone on 13.02.24.
//

import UIKit
import AVFoundation

class GameViewController: UIViewController {
    
    var player = AVAudioPlayer()
    var sequence: [UIButton] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImageView()
        setupBackButton()
        setupAllTimeButton()
        setupRedButton()
        setupGreenButton()
        setupBlueButton()
        setupYellowButton()
        playSequence()
        playSound()
        randomButton()
    }
    
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.image = UIImage(named: "gameBoard")
        imageView.contentMode = .scaleAspectFill
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    fileprivate func setupImageView() {
        view.addSubview(imageView)
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
    let backButtom: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .green
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    func setupBackButton() {
        view.addSubview(backButtom)
        
        backButtom.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        backButtom.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150).isActive = true
        backButtom.heightAnchor.constraint(equalToConstant: 40).isActive               = true
        backButtom.widthAnchor.constraint(equalToConstant: 40).isActive               = true
    }
    
    
    let allTimeButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .green
        button.setTitle("ALL TIME", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        button.addTarget(self, action: #selector(allTimeButtonTapped), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupAllTimeButton() {
        view.addSubview(allTimeButton)
        
        allTimeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        allTimeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
        allTimeButton.heightAnchor.constraint(equalToConstant: 40).isActive               = true
        allTimeButton.widthAnchor.constraint(equalToConstant: 120).isActive               = true
    }
    
    
    //MARK: Buttons
    let redButton: UIButton = {
        let redButton = UIButton(type: .custom)
        redButton.backgroundColor = .red
        redButton.setTitleColor(.black, for: .normal)
        redButton.layer.cornerRadius = 2
        redButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        redButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        redButton.translatesAutoresizingMaskIntoConstraints = false
        return redButton
    }()
    
    func setupRedButton() {
        view.addSubview(redButton)
        
        redButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 310).isActive         = true
        redButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30).isActive = true
        redButton.heightAnchor.constraint(equalToConstant: 40).isActive                         = true
        redButton.widthAnchor.constraint(equalToConstant: 40).isActive                          = true
    }
    
    let greenButton: UIButton = {
        let green = UIButton(type: .custom)
        green.backgroundColor = .green
        green.setTitleColor(.black, for: .normal)
        green.layer.cornerRadius = 0
        green.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        green.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        green.translatesAutoresizingMaskIntoConstraints = false
        return green
    }()
    
    func setupGreenButton() {
        view.addSubview(greenButton)
        
        greenButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 310).isActive        = true
        greenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 30).isActive = true
        greenButton.heightAnchor.constraint(equalToConstant: 40).isActive                        = true
        greenButton.widthAnchor.constraint(equalToConstant: 40).isActive                         = true
    }
    
    let blueButton: UIButton = {
        let blue = UIButton(type: .custom)
        blue.backgroundColor = .blue
        blue.setTitleColor(.black, for: .normal)
        blue.layer.cornerRadius = 0
        blue.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        blue.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        blue.translatesAutoresizingMaskIntoConstraints = false
        return blue
    }()
    
    func setupBlueButton() {
        view.addSubview(blueButton)
        
        blueButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive         = true
        blueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30).isActive = true
        blueButton.heightAnchor.constraint(equalToConstant: 40).isActive                         = true
        blueButton.widthAnchor.constraint(equalToConstant: 40).isActive                          = true
    }
    
    let yellowButton: UIButton = {
        let yellow = UIButton(type: .custom)
        yellow.backgroundColor = .yellow
        yellow.setTitleColor(.black, for: .normal)
        yellow.layer.cornerRadius = 0
        yellow.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        yellow.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        yellow.translatesAutoresizingMaskIntoConstraints = false
        return yellow
    }()
    
    func setupYellowButton() {
        view.addSubview(yellowButton)
        
        yellowButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive        = true
        yellowButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 30).isActive = true
        yellowButton.heightAnchor.constraint(equalToConstant: 40).isActive                        = true
        yellowButton.widthAnchor.constraint(equalToConstant: 40).isActive                         = true
    }
    
    func playSequence() {
        if currentIndex == 0 {
            sequence.append(randomButton())
        }
        
        enableButtons(false)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            for i in 0...self.currentIndex {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(i+1)) {
                    let button = self.sequence[i]
                    self.highlightButton(button)
                    self.playSound()
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(self.currentIndex+1)) {
                self.enableButtons(true)
            }
        }
    }
    
    func highlightButton(_ button: UIButton) {
        button.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            button.alpha = 1.0
        }
    }
    
    func playSound() {
        let url1 = Bundle.main.url(forResource: "B", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url1!)
        player.play()
    }
    
    
    func randomButton() -> UIButton {
        let random = Int.random(in: 0...3)
        switch random {
        case 0:
            return redButton
        case 1:
            return greenButton
        case 2:
            return blueButton
        case 3:
            return yellowButton
        default:
            return redButton
        }
    }
    
    func enableButtons(_ enabled: Bool) {
        redButton.isEnabled = enabled
        greenButton.isEnabled = enabled
        blueButton.isEnabled = enabled
        yellowButton.isEnabled = enabled
    }
    
    
    @objc func buttonTapped(_ sender: UIButton) {
       if sender == sequence[currentIndex] {
           currentIndex += 1
           
           if currentIndex == sequence.count {
               currentIndex = 0
               sequence.append(randomButton())
               playSequence()
           }
       } else {
           
       }
   }
    
    
    @objc private func backButtonTapped() {
        let viewController = MainMenuViewController()
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true)
    }
    
    @objc private func allTimeButtonTapped() {
        let viewController = YouWinViewController()
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true)

    }
}
