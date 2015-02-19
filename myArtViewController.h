//
//  myArtViewController.h
//  iArt
//
//  Created by Claudia Oliva on 29/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>


@interface myArtViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    
    IBOutlet UIImageView *imagenFoto;
    
}


-(IBAction)takePicture:(id)sender;

-(IBAction)showTweetSheet:(id)sender;

@end
