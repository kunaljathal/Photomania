//
//  Photographer+Create.h
//  Photomania
//
//  Created by Kunal Jathal on 1/30/15.
//  Copyright (c) 2015 Kunal Jathal. All rights reserved.
//

#import "Photographer.h"

@interface Photographer (Create)

+ (Photographer *)photographerWithName:(NSString *)name
        inManagedObjectContext:(NSManagedObjectContext *)context;
@end
