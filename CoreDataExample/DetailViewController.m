//
//  DetailViewController.m
//  CoreDataExample
//
//  Created by Cesar Perez Laguna on 27/03/14.
//  Copyright (c) 2014 Cesar Perez Laguna. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.nameField.text = [[self.detailItem valueForKey:@"name"] description];
        self.addressField.text = [[self.detailItem valueForKey:@"address"] description];
        self.phoneField.text = [[self.detailItem valueForKey:@"phone"] description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)save:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    NSManagedObject *contact;
    if(_detailItemEdition == NO)
    {
        contact = [NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:context];
    } else {
        contact = self.detailItem;
    }
    
    [contact setValue:self.nameField.text forKey:@"name"];
    [contact setValue:self.addressField.text forKey:@"address"];
    [contact setValue:self.phoneField.text forKey:@"phone"];
                   
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
