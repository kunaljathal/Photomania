//
//  Photographer+Create.m
//  Photomania
//
//  Created by Kunal Jathal on 1/30/15.
//  Copyright (c) 2015 Kunal Jathal. All rights reserved.
//

#import "Photographer+Create.h"

@implementation Photographer (Create)

+ (Photographer *)photographerWithName:(NSString *)name
                inManagedObjectContext:(NSManagedObjectContext *)context
{
    Photographer *photographer = nil;

    if ([name length])
    {
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photographer"];
    
        request.predicate = [NSPredicate predicateWithFormat:@"name = ", name];
        
        NSError *error;
        
        NSArray *matches = [context executeFetchRequest:request error:&error];
        
        if (!matches || error || [matches count] > 1) // If matches is nil, there's an error, or more than 1 match is found
        {
            // handle error
        }
        else if (![matches count]) // photographer doesn't exist i.e. we got back a 0 match count. So create the photographer
        {
            photographer =  [NSEntityDescription insertNewObjectForEntityForName:@"Photographer" inManagedObjectContext:context];
            photographer.name = name;
        }
        else // We got a match. Cool, photographer already exists.
        {
            photographer = [matches lastObject];
        }
    }
    
    return photographer;
}


@end
