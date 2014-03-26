//
//  DetailViewController.h
//  CoreDataExample
//
//  Created by Cesar Perez Laguna on 27/03/14.
//  Copyright (c) 2014 Cesar Perez Laguna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
