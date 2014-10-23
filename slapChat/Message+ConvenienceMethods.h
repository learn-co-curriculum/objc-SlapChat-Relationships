//
//  Message+ConvenienceMethods.h
//  slapChat
//
//  Created by Chris Gonzales on 9/15/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "Message.h"

@interface Message (ConvenienceMethods)

+(instancetype)messageWithContext:(NSManagedObjectContext *)context;

@end
