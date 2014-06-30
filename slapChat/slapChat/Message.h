//
//  Message.h
//  slapChat
//
//  Created by Joe Burgess on 6/30/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Message : NSManagedObject

@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSDate * createdAt;

+(instancetype) messageWithContext:(NSManagedObjectContext *)context;
@end
