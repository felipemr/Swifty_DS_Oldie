//
//  main.swift
//  SwiftyDS
//
//  Created by Felipe Marques on 29/08/23.
//

import Foundation

print("Hello, World!")

print("Linear Search:")

var arr = [0,1,2,3,4,5,6,7,8,9]

print(linearSearch(in: arr, for: 8))
print(linearSearch(in: arr, for: 18))

print("Binary Search:")
print(binarySearch(in: arr, for: 8))
print(binarySearchRecursive(in: arr, for: 8))

print("Jump Search:")
print(jumpSearch(in: arr, for: 8))
print(jumpSearch(in: arr, for: 18))
