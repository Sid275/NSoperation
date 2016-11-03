//
//  ViewController.h
//  NSoperation
//
//  Created by Student-001 on 12/09/16.
//  Copyright © 2016 Student-003. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgview;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

- (IBAction)downloadbtn:(id)sender;


@property(nonatomic,retain)NSOperationQueue *queue;

@end

