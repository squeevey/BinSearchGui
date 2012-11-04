//
//  BinSearchGuiViewController.h
//  BinSearchGui
//
//  Created by squeevey on 11/1/12.
//  Copyright (c) 2012 MichaleSevy. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BinSearchGuiViewController : NSViewController
- (IBAction)performClick:(id)sender;
@property (weak) IBOutlet NSTextField *iterativeLabel;
@property (weak) IBOutlet NSTextField *recursiveLabel;
@property (readonly,nonatomic) IBOutlet NSTextField *valueInput;
@property (readonly,nonatomic) IBOutlet NSTextField *arrayField;
@end
