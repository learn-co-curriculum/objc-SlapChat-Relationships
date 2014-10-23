//
//  Message.m
//  slapChat
//
//  Created by Joe Burgess on 6/30/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "Message.h"


@implementation Message

@dynamic content;
@dynamic createdAt;

+(instancetype)messageWithContext:(NSManagedObjectContext *)context
{
    Message *newMessage = [NSEntityDescription insertNewObjectForEntityForName:@"Message" inManagedObjectContext:context];
    return newMessage;
}

@end
