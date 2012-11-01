//
//  BinSearchGuiAppDelegate.h
//  BinSearchGui
//
//  Created by squeevey on 11/1/12.
//  Copyright (c) 2012 MichaleSevy. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BinSearchGuiAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end
