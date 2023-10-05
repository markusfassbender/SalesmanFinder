//
//  SearchRepository.swift
//  SalesmanFinder
//
//  Created by Markus on 05.10.23.
//

import Foundation

protocol SearchRepositoryProtocol {
    func getSalesmanList() async throws -> [Salesman]
}

struct SearchRepository: SearchRepositoryProtocol {
    func getSalesmanList() async throws -> [Salesman] {
        [
            .init(name: "Artem Titarenko", areas: ["76133"]),
            .init(name: "Bernd Schmitt", areas: ["7619*"]),
            .init(name: "Chris Krapp", areas: ["762*"]),
            .init(name: "Alex Uber", areas: ["86*"]),
        ]
    }
}

#if DEBUG
public enum SearchRepositoryMockError: Error {
    case notImplemented
}

struct SearchRepositoryMock: SearchRepositoryProtocol {
    func getSalesmanList() async throws -> [Salesman] {
        throw SearchRepositoryMockError.notImplemented
    }
}
#endif
