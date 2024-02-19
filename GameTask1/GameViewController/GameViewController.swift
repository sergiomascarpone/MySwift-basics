//
//  GameViewController.swift
//  GameTask1
//
//  Created by Sergio Mascarpone on 13.02.24.
//

import UIKit
import AVFoundation

final class GameViewController: UIViewController {
    
    var presenter: GamePresenterProtocol
    
    var player = AVAudioPlayer()
    var sequence: [UIButton] = []
    
//    private lazy var imageView: UIImageView = {
//        let imageView = UIImageView(frame: UIScreen.main.bounds)
//        imageView.image = UIImage(named: "gameBoard")
//        imageView.contentMode = .scaleAspectFill
//        
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
    
    //MARK: Buttons
    private lazy var backButtom: UIButton = {
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
    
    private lazy var redButton: UIButton = {
        let redButton = UIButton(type: .custom)
        redButton.backgroundColor = .red
        redButton.layer.cornerRadius = 2
        redButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        redButton.translatesAutoresizingMaskIntoConstraints = false
        return redButton
    }()
    
    private lazy var allTimeButton: UIButton = {
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
    
    private lazy var greenButton: UIButton = {
        let green = UIButton()
        green.backgroundColor = .green
        green.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        green.translatesAutoresizingMaskIntoConstraints = false
        return green
    }()
    
    private lazy var yellowButton: UIButton = {
        let yellow = UIButton(type: .custom)
        yellow.backgroundColor = .yellow
        yellow.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        yellow.translatesAutoresizingMaskIntoConstraints = false
        return yellow
    }()
    
    private lazy var blueButton: UIButton = {
        let blue = UIButton(type: .custom)
        blue.backgroundColor = .blue
        blue.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        blue.translatesAutoresizingMaskIntoConstraints = false
        return blue
    }()
    
    init(presenter: GamePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        self.presenter.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        playSequence()
        playSound()
//        randomButton()
    }
    
    private func setupUI() {
//        view.addSubview(imageView)
        view.addSubview(backButtom)
        view.addSubview(allTimeButton)
        view.addSubview(redButton)
        view.addSubview(greenButton)
        view.addSubview(blueButton)
        view.addSubview(yellowButton)
        self.view.backgroundColor = .yellow
//        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
//        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
//        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backButtom.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        backButtom.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150).isActive = true
        backButtom.heightAnchor.constraint(equalToConstant: 40).isActive               = true
        backButtom.widthAnchor.constraint(equalToConstant: 40).isActive               = true
  
        allTimeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        allTimeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
        allTimeButton.heightAnchor.constraint(equalToConstant: 40).isActive               = true
        allTimeButton.widthAnchor.constraint(equalToConstant: 120).isActive               = true
   
        redButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 310).isActive         = true
        redButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30).isActive = true
        redButton.heightAnchor.constraint(equalToConstant: 40).isActive                         = true
        redButton.widthAnchor.constraint(equalToConstant: 40).isActive                          = true
   
        greenButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 310).isActive        = true
        greenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 30).isActive = true
        greenButton.heightAnchor.constraint(equalToConstant: 40).isActive                        = true
   
        blueButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive         = true
        blueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30).isActive = true
        blueButton.heightAnchor.constraint(equalToConstant: 40).isActive                         = true
        blueButton.widthAnchor.constraint(equalToConstant: 40).isActive                          = true
   
        yellowButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive        = true
        yellowButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 30).isActive = true
        yellowButton.heightAnchor.constraint(equalToConstant: 40).isActive                        = true
        yellowButton.widthAnchor.constraint(equalToConstant: 40).isActive                         = true
    }
    
    func playSequence() {
        if presenter.currentIndex == 0 {
            sequence.append(randomButton())
        }
        
        enableButtons(false)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            for i in 0...self.presenter.currentIndex {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(i + 1)) {
                    let button = self.sequence[i]
                    self.highlightButton(button)
                    self.playSound()
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(self.presenter.currentIndex + 1)) {
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
        do {
            player = try AVAudioPlayer(contentsOf: url1!)
        } catch {
            print("error sound")
        }
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
        redButton.isUserInteractionEnabled = enabled
        greenButton.isUserInteractionEnabled = enabled
        blueButton.isUserInteractionEnabled = enabled
        yellowButton.isUserInteractionEnabled = enabled
    }
    
    
    @objc func buttonTapped(_ sender: UIButton) {
        var currentIndex = presenter.currentIndex
        if sender == sequence[currentIndex] {
            currentIndex += 1
            
            if currentIndex == sequence.count {
                currentIndex = 0
                sequence.append(randomButton())
                playSequence()
            }
            presenter.currentIndex = currentIndex
        } else {
            print("No")
        }
    }
    
    
    @objc private func backButtonTapped() {
        self.dismiss(animated: true)
    }
    
    @objc private func allTimeButtonTapped() {
//        let viewController = YouWinViewController()
//        viewController.modalPresentationStyle = .automatic
//        self.present(viewController, animated: true)
        
        self.presenter.setBgColor()
    }
}

//MARK: GamePresenterResultDelegate
extension GameViewController: GamePresenterResultDelegate {
    func updateBgColor() {
        self.view.backgroundColor = .systemPink
    }
}
