//
//  NetworkError.swift
//  Image Feed
//
//  Created by Maxim Rustamov on 11.06.2023.
//

import Foundation

enum NetworkError: Error {
    case httpStatusCode(Int)
    case urlRequestError(Error)
    case urlSessionError
}

