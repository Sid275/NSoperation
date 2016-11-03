//
//  ViewController.m
//  NSoperation
//
//  Created by Student-001 on 12/09/16.
//  Copyright © 2016 Student-003. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadbtn:(id)sender {
    NSString *imgpath=@"http://weknowyourdreams.com/images/animals/animals-01.jpg";
    
    [_indicator startAnimating];
    NSURL *url=[NSURL URLWithString:imgpath];
    

    NSBlockOperation *op1=[NSBlockOperation blockOperationWithBlock:^{
       
        NSData *data=[NSData dataWithContentsOfURL:url];
        UIImage *img=[UIImage imageWithData:data];
        
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            _imgview.image=img;
            [_indicator stopAnimating];
            
        }];
    }];
    [_queue addOperation:op1] ;
}



@end
