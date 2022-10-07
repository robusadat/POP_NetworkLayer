//
//  EndPointType.swift
//  POP_NetworkLayer
//
//  Created by Sadat on 10/6/22.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
