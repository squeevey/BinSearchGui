//
//  ArrayFinder.m
//  BinSearch
//
//  Created by squeevey on 10/31/12.
//  Copyright (c) 2012 MichaleSevy. All rights reserved.
//

#import "ArrayFinder.h"

@implementation ArrayFinder 


+ (NSInteger) findIterativeIndexOfArrayValue:(NSInteger)valueToFind arrayToSearch:(NSArray *)arrayToSearch {
    NSInteger  valueIndex = -1;
    NSInteger  lengthOfArray = [arrayToSearch count];
    NSInteger  lowIndex = 0;
    NSInteger  highIndex = (NSInteger)lengthOfArray-1;
    while (highIndex >= lowIndex)
    {
        NSInteger  currentIndex = (highIndex+lowIndex) >> 1;
        NSInteger indexValue = [[arrayToSearch objectAtIndex:currentIndex] integerValue];
        if (indexValue > valueToFind) {
            highIndex = currentIndex-1;
        } else if (indexValue < valueToFind){
            lowIndex = currentIndex+1;
        } else {
            valueIndex = currentIndex;
            break;
        }

        
    }
    return valueIndex;
}

+ (NSInteger) findRecursiveIndexOfArrayValue:(NSInteger)valueToFind arrayToSearch:(NSArray *)arrayToSearch startIndex:(NSInteger)startIndex endIndex:(NSInteger)endIndex
{
    //set the value to return -1 if it's not found;
    NSInteger  valueIndex = -1;
    
    //Check if the indices are within bounds.
   if (endIndex >= startIndex && startIndex >= 0) {
       // Find the middle index between - Bitwise operation to divid by two
       NSInteger  currentMiddleIndex = (startIndex+endIndex) >> 1;
       NSInteger indexValue = [[arrayToSearch objectAtIndex:currentMiddleIndex] integerValue];
    
        /*
         if the indexValue is greater than the value to find then call the function again and pass the currentMiddleIndex-1 as the new end index.
         
         if it is less than the value then set the start index to the currentMiddleIndex+1
         
         else return the current valueIndex.
         */
    
        if (indexValue > valueToFind) {
            valueIndex = [self findRecursiveIndexOfArrayValue:valueToFind arrayToSearch:arrayToSearch startIndex:startIndex endIndex:currentMiddleIndex-1];
        } else if (indexValue < valueToFind){
           valueIndex = [self findRecursiveIndexOfArrayValue:valueToFind arrayToSearch:arrayToSearch startIndex:currentMiddleIndex+1 endIndex:endIndex];
        } else if (indexValue == valueToFind){
            valueIndex = currentMiddleIndex;
        }
    }
    return valueIndex;
}

@end
