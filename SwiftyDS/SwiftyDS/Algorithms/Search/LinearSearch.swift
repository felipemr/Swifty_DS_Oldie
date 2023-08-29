//
//  LinearSearch.swift
//  SwiftyDS
//
//  Created by Felipe Marques on 29/08/23.
//

import Foundation

/// The most basic of all searches, the idea here is to go from the first position to the end checking if it is what you are looking for, if not you go to the very next one.
/// - Parameters:
///   - array: A Collection
///   - missing: What we are lookingfor
/// - Returns: if it was found
func linearSearch(in array: Array<Int>, for missing: Int) -> Bool {
    for number in array {
        if number == missing {
            return true
        }
        continue
    }
    return false
}
