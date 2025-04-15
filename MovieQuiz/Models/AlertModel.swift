//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by МAK on 04.04.2025.
//

import Foundation

struct AlertModel {
    let title: String
    let message: String
    let buttonText: String
    var completion: (()->Void)?
}
