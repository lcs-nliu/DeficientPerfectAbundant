//
//  main.swift
//  DeficientPerfectAbundant
//
//  Created by Liu, Bojun on 2020-03-09.
//  Copyright © 2020 Liu, Nicole. All rights reserved.
//

import Foundation

// INPUT SECTION OF PROGRAM
// variables needed in the program
var positiveInt = -1
var sumOfProperDiv = 0

// Loop until valid input provided by user (positive integer that is withinr ange of 1 to 32500)
while true {
    
    // Ask for input
    print("Choose a positive integer.")
    guard let inputGiven = readLine() else {
        
        // No input given, return to top of loop and ask again
        continue
    }
    
    // Attempt to make input into an integer
    guard let integerGiven = Int(inputGiven) else {
        
        // Could not make input into an integer, so return to top and ask again
        continue
        
    }
    
    // Check that integer is in desired range
    guard integerGiven > 0, integerGiven < 325001 else {
        
        // Integer not in desired range, return to top and ask again
        continue
        
    }
    
    guard integerGiven != 1 else {
        print("1 is a deficient ")
    exit(0)
    }
    
    // If we've made it here, the input is valid
    positiveInt = integerGiven
    
    // Stop looping
    break
    
}
// Function to find the sum of proper divisors
func sumProperDiv() -> Int {
    
    for y in 1...positiveInt-1 {
        let remainder = positiveInt%y
        // If statement to determine if remainder is equal to zero
        if remainder == 0 {
            sumOfProperDiv += y
        } else {
            continue
        }
    }
    
    
    return sumOfProperDiv
}



// If statement to determine if the integer given is deficient, perfect, or abundant
if sumProperDiv() == positiveInt {
    print ("\(positiveInt) is a perfect number.")
} else if sumOfProperDiv < positiveInt {
    print ("\(positiveInt) is a deficient number.")
} else {
    print("\(positiveInt) is an abundant number.")
}



