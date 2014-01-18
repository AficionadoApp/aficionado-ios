//
//  AFIAppDelegate.h
//  aficionado
//
//  Created by James C on 1/18/14.
//  Copyright (c) 2014 coder-day-of-service. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AFIAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
