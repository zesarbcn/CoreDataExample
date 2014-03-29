//
//  MasterViewController.h
//  CoreDataExample
//
//  Created by Cesar Perez Laguna on 27/03/14.
//  Copyright (c) 2014 Cesar Perez Laguna. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>
#import "CoreDataTableViewController.h"

@interface MasterViewController : CoreDataTableViewController

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
