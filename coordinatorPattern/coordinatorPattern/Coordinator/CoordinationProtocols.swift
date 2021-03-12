//
//  CoordinationProtocols.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import Foundation

typealias FirstCoordination = (ShowFirstDetails)

protocol ShowFirstDetails {
    func showFirstDetails(_ details: String?)
}
