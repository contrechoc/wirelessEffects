//
//  ViewController.m
//  LED
//
//  Created by Beam on 20/05/13.
//  Copyright (c) 2013 Beam. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()


@end
 

@implementation ViewController

@synthesize receivedData;
@synthesize connection;
@synthesize responseData;


- (void)viewDidLoad
{

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pattern1Button:(id)sender{
    
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.contrechoc.com/exovest/setLED.php?value=1"] cachePolicy:NSURLRequestUseProtocolCachePolicy
                              timeoutInterval:10.0];
    
    
    
}
-(IBAction)pattern2Button:(id)sender{
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.contrechoc.com/exovest/setLED.php?value=2"] cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:10.0];
    
   
    
}
-(IBAction)pattern3Button:(id)sender{
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.contrechoc.com/exovest/setLED.php?value=3"] cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:10.0];
        
}
-(IBAction)pattern4Button:(id)sender{
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.contrechoc.com/exovest/setLED.php?value=4"] cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:10.0];
    
   
    
}
-(IBAction)pattern5Button:(id)sender{
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.contrechoc.com/exovest/setLED.php?value=5"] cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:10.0];
    
   
    
}
-(IBAction)pattern6Button:(id)sender{
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.contrechoc.com/exovest/setLED.php?value=6"] cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:10.0];
    
        

}

/* Handle touches to the 'Play Movie' button. */
-(IBAction)ledONButtonPressed:(id)sender
{
 
    
    // Create the request.
    
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.contrechoc.com/exovest/setLED0.php"]
                              
                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                              
                                          timeoutInterval:10.0];
    

    
}
 

/* Handle touches to the 'Play Movie' button. */
-(IBAction)ledOFFButtonPressed:(id)sender
{
    
    
    // Create the request.
    
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.contrechoc.com/exovest/setLED1.php"]
                              
                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                              
                                          timeoutInterval:10.0];
    
    // create the connection with the request
    
    // and start loading the data
    
    NSURLConnection *theConnection=[[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    
    if (theConnection) {
        
        // Create the NSMutableData to hold the received data.
        
        // receivedData is an instance variable declared elsewhere.
        
        // receivedData = [[NSMutableData data] retain];
        
    } else {
        
        // Inform the user that the connection failed.
        
    }
    
}

/* Handle touches to the 'Play Movie' button. */
-(IBAction)getStatus:(id)sender
{
    
    // Create the request.
 
    NSURL *url = [NSURL URLWithString:@"http://www.contrechoc.com/exovest/checkStatusLED.php"];
    
    NSData *returnData = [NSData dataWithContentsOfURL:url];
   // NSString* newStr = [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding];
    
   // if(newStr != nil)
    {
        //NSLog(newStr);
           // resultTxt.text = newStr;
       
    }
    
    
}

-(void) requestPage
{
    NSString *urlString = @"http://www.contrechoc.com/exovest/checkStatusLED.php";
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLCacheStorageAllowed timeoutInterval:20.0f];
    
    responseData = [[NSMutableData alloc] init];
    connection = [NSURLConnection connectionWithRequest:request delegate:self];
 
}


- (void) connection:(NSURLConnection *)connection
 didReceiveResponse:(NSURLResponse *)response {
    // connection is starting, clear buffer
    [self.receivedData setLength:0];
}

- (void) connection:(NSURLConnection *)connection
     didReceiveData:(NSData *)data {
    // data is arriving, add it to the buffer
    [self.receivedData appendData:data];
}

- (void)connection:(NSURLConnection*)connection
  didFailWithError:(NSError *)error {
    // something went wrong, clean up interface as needed
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    // all done, we are ready to rock and roll
    // do something with self.receivedData
}




@end
