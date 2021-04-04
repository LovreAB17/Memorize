//
//  Array+Only.swift
//  Memorize
//
//  Created by Lovre Budimir on 28/10/2020.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
