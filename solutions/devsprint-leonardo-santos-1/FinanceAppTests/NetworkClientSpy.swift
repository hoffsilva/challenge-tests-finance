//
//  NetworkClientSpy.swift
//  FinanceAppTests
//
//  Created by Hoff Silva on 2022-06-24.
//

import Foundation

@testable import FinanceApp

final class NetworClientSpy: NetworkClientProtocol {
    
    private(set) var passedURL: URL?
    private(set) var performRequestCallCount: Int = 0
    
    func performRequest(with url: URL, completion: @escaping (Data?) -> ()) {
        passedURL = url
        performRequestCallCount += 1
    }
    
}

