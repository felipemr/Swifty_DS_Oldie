//
//  JumpSearch.swift
//  SwiftyDS
//
//  Created by Felipe Marques on 29/08/23.
//

import Foundation

func jumpSearch(in array: Array<Int>, for missing: Int) -> Bool {

    let step = sqrt(Double(array.count))
    var index = 0

    for i in stride(from: index, to: array.count, by: Int(step)) {
        if array[i] == missing {
            return true
        }
        if array[i] > missing {
            break
        }

        index = i
    }

    index -= Int(step)

    for i in stride(from: index, to: array.count, by: 1) {
        if array[i] == missing {
            return true
        }
    }

    return false
}
