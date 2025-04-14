//
//  StatisticServiceProtocol.swift
//  MovieQuiz
//
//  Created by МAK on 04.04.2025.
//

import Foundation

protocol StatisticService {
    var gamesCount: Int { get }
    var bestGame: GameResult { get }
    var totalAccuracy: Double { get }
    
    func store(correct count: Int, total amount: Int)
}
