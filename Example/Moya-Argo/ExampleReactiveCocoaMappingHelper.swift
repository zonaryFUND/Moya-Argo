//
//  ExampleReactiveCocoaMappingHelper.swift
//  Moya-Argo
//
//  Created by Sam Watts on 23/01/2016.
//  Copyright © 2016 Sam Watts. All rights reserved.
//

import Foundation
import ReactiveSwift
import Moya
import Argo

extension SignalProducerProtocol where Value == Moya.Response, Error == Moya.Error {
    
    func mapUsers() -> SignalProducer<[ArgoUser], Self.Error> {
        
        return mapArray(type: ArgoUser.self, rootKey: "users")
    }
    
    func mapUser() -> SignalProducer<ArgoUser, Self.Error> {
        
        return mapObject(type: ArgoUser.self)
    }
}
