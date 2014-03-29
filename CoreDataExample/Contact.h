//
//  Contact.h
//  CoreDataExample
//
//  Created by Cesar Perez Laguna on 28/03/14.
//  Copyright (c) 2014 Cesar Perez Laguna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Contact : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * phone;

@end
