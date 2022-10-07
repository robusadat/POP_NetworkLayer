//
//  NetworkRouter.swift
//  POP_NetworkLayer
//
//  Created by Sadat on 10/7/22.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?,_ response: URLResponse?,_ error: Error?)->()

protocol NetworkRouter: AnyObject {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completetion: @escaping NetworkRouterCompletion)
    func cancel()
}
