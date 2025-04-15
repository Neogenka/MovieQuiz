//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by МAK on 03.04.2025.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
}
