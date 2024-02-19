//
//  GamePresenterProtocol.swift
//  GameTask1
//
//  Created by Sergio Mascarpone on 16.02.24.
//

import Foundation

protocol GamePresenterProtocol {
    var delegate: GamePresenterResultDelegate? { get set }
    var currentIndex: Int { get set }
    
    func setBgColor()
}
