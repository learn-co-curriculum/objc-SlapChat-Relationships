//
//  Message+ConvenienceMethods.m
//  slapChat
//
//  Created by Chris Gonzales on 9/15/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "Message+ConvenienceMethods.h"

@implementation Message (ConvenienceMethods)

+(instancetype)messageWithContext:(NSManagedObjectContext *)context
{
    Message *newMessage = [NSEntityDescription insertNewObjectForEntityForName:@"Message" inManagedObjectContext:context];
    return newMessage;
}

@end
