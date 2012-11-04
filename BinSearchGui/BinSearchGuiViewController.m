//
//  BinSearchGuiViewController.m
//  BinSearchGui
//
//  Created by squeevey on 11/1/12.
//  Copyright (c) 2012 MichaleSevy. All rights reserved.
//

#import "BinSearchGuiViewController.h"
#import "ArrayFinder.h"

@interface BinSearchGuiViewController ()


@end

@implementation BinSearchGuiViewController

+ (NSString*) outputString:(NSInteger)indexOfValue valueToFind:(NSInteger)valueToFind
{
	NSString *labelValue = [[NSString alloc]init];
	if (indexOfValue == -1 ) {
        labelValue = @"Value was not found";
    } else {
        labelValue = [NSString stringWithFormat:@"The Value %li was found at Array Index %li", valueToFind, indexOfValue];
    }
	return (NSString *)labelValue;
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}


- (IBAction) performClick:(id)sender {
	[self commitEditing];
	NSString *arrayString = [NSString stringWithFormat:@"%@", _arrayField];
	NSArray *inputArray = [[arrayString stringByTrimmingCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet]invertedSet]] componentsSeparatedByString:@","];
	NSInteger iterativeOutput = [ArrayFinder findIterativeIndexOfArrayValue:[[self valueInput] integerValue]
															  arrayToSearch:inputArray];
	
	NSString *iterativeString = [BinSearchGuiViewController outputString:iterativeOutput
															  valueToFind:[[self valueInput] integerValue]];
	
	NSInteger recursiveOutput = [ArrayFinder findRecursiveIndexOfArrayValue:[[self valueInput] integerValue]
															  arrayToSearch:[[arrayString stringByTrimmingCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet]invertedSet]] componentsSeparatedByString:@","] startIndex:0 endIndex:[inputArray count]-1];
	
	NSString *recursiveString = [BinSearchGuiViewController outputString:recursiveOutput
															  valueToFind:[[self valueInput] integerValue]];
	
	[self.iterativeLabel setStringValue:[NSString stringWithFormat:@"%@", iterativeString]];
	[self.recursiveLabel setStringValue:[NSString stringWithFormat:@"%@", recursiveString]];
	
}

@end
