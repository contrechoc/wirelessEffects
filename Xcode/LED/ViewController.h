//
//  ViewController.h
//  LED
//
//  Created by Beam on 20/05/13.
//  Copyright (c) 2013 Beam. All rights reserved.
//

#import <UIKit/UIKit.h>


 IBOutlet UILabel *label;
 IBOutlet UITextView *resultTxt;
 NSMutableData *receivedData;
NSURLConnection *connection;

NSMutableData *responseData ;


@interface ViewController : UIViewController

@property (nonatomic,retain) IBOutlet UITextField *movieURLTextField;

@property (nonatomic,retain) NSMutableData *receivedData;
@property (nonatomic,retain) NSMutableData *responseData;
@property (nonatomic,retain) NSURLConnection *connection;

-(IBAction)ledONButtonPressed:(id)sender;

-(IBAction)ledOFFButtonPressed:(id)sender;

-(IBAction)pattern1Button:(id)sender;
-(IBAction)pattern2Button:(id)sender;
-(IBAction)pattern3Button:(id)sender;
-(IBAction)pattern4Button:(id)sender;
-(IBAction)pattern5Button:(id)sender;
-(IBAction)pattern6Button:(id)sender;

-(IBAction)getStatus:(id)sender;

@end
