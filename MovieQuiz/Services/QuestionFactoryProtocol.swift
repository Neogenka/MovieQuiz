//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by МAK on 01.04.2025.
//

import Foundation

protocol QuestionFactoryProtocol {
    func requestNextQuestion()
    func resetUsedIndex()
    func loadData()
}
