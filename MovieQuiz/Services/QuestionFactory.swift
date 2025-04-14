//
//  QuestionFactory.swift
//  MovieQuiz
//
//  Created by МAK on 01.04.2025.
//

import Foundation

final class QuestionFactory: QuestionFactoryProtocol {
    weak var delegate: QuestionFactoryDelegate?
    
    private var usedQuestionsIndex = [Int]()
    private let questions: [QuizQuestion] = [
        QuizQuestion(
            image: "The Godfather",
            correctAnswer: true),
        QuizQuestion(
            image: "The Dark Knight",
            correctAnswer: true),
        QuizQuestion(
            image: "Kill Bill",
            correctAnswer: true),
        QuizQuestion(
            image: "The Avengers",
            correctAnswer: true),
        QuizQuestion(
            image: "Deadpool",
            correctAnswer: true),
        QuizQuestion(
            image: "The Green Knight",
            correctAnswer: true),
        QuizQuestion(
            image: "Old",
            correctAnswer: false),
        QuizQuestion(
            image: "The Ice Age Adventures of Buck Wild",
            correctAnswer: false),
        QuizQuestion(
            image: "Tesla",
            correctAnswer: false),
        QuizQuestion(
            image: "Vivarium",
            correctAnswer: false)
    ]

    func requestNextQuestion() {
        guard var index = (0..<questions.count).randomElement() else {
            delegate?.didReceiveNextQuestion(question: nil)
            return
        }
        
        if questions.count != 0 {
            while usedQuestionsIndex.contains(index) {
                index = (0..<questions.count).randomElement()!
            }
        }
        
        usedQuestionsIndex.append(index)
        
        let question = questions[safe: index]
        delegate?.didReceiveNextQuestion(question: question)
    }
    
    func setup(delegate: QuestionFactoryDelegate) {
        self.delegate = delegate
    }
    
    func resetUsedIndex() {
        usedQuestionsIndex.removeAll()
    }
}
