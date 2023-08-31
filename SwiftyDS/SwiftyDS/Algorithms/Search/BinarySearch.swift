//
//  BinarySearch.swift
//  SwiftyDS
//
//  Created by Felipe Marques on 29/08/23.
//

import Foundation

func binarySearch(in array: Array<Int>, for missing: Int) -> Bool {
    var lowPoint = 0
    var highPoint = array.count

    while lowPoint < highPoint {
        let medianPoint = Int(lowPoint + (highPoint-lowPoint)/2)
        let v = array[medianPoint]

        if v == missing {
            return true
        }

        if v > missing {
            highPoint = medianPoint
        } else {
            lowPoint = medianPoint + 1
        }
    }

    return false
}

func binarySearchRecursive(in array: Array<Int>, for missing: Int) -> Bool {
    return binarySearchbinarySearchRecursiveAux(in: array, for: missing, low: 0, high: array.count)
}

func binarySearchbinarySearchRecursiveAux(in array: Array<Int>, for missing: Int, low: Int, high: Int) -> Bool {
    guard low < high else {
        return false
    }

    let medianPoint = Int(low + (high-low)/2)
    let v = array[medianPoint]

    if v == missing {
        return true
    }

    if v > missing {
        return binarySearchbinarySearchRecursiveAux(in: array, for: missing, low: low, high: medianPoint)
    } else {
        return binarySearchbinarySearchRecursiveAux(in: array, for: missing, low: medianPoint+1, high: high)
    }
}
