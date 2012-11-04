//
//  ArrayFinder.h
//  BinSearch
//
//  Created by squeevey on 10/31/12.
//  Copyright (c) 2012 MichaleSevy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayFinder: NSObject

+ (NSInteger) findIterativeIndexOfArrayValue: (NSInteger)valueToFind arrayToSearch: (NSArray *)arrayToSearch;
+ (NSInteger) findRecursiveIndexOfArrayValue: (NSInteger)valueToFind arrayToSearch: (NSArray *)arrayToSearch startIndex: (NSInteger)startIndex endIndex: (NSInteger)endIndex;

@end
