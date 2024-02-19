//
//  GamePresenter.swift
//  GameTask1
//
//  Created by Sergio Mascarpone on 16.02.24.
//

import Foundation

protocol GamePresenterResultDelegate {
    func updateBgColor()
}

final class GamePresenter: GamePresenterProtocol {
    var delegate: GamePresenterResultDelegate?
    var currentIndex = 0
    
    func setBgColor() {
        self.delegate?.updateBgColor()
    }
}
