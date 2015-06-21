//
//  PhotomaniaAppDelegate+MOC.h
//  Photomania
//
//  Created by Kunal Jathal on 2/1/15.
//  Copyright (c) 2015 Kunal Jathal. All rights reserved.
//

#import "PhotomaniaAppDelegate.h"

@interface PhotomaniaAppDelegate (MOC)

- (void)saveContext:(NSManagedObjectContext *)managedObjectContext;

- (NSManagedObjectContext *)createMainQueueManagedObjectContext;

@end