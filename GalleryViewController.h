//
//  GalleryViewController.h
//  iArt
//
//  Created by Claudia Oliva on 28/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryViewController : UIViewController <UIActionSheetDelegate>{
    
    IBOutlet UILabel *labelEstilo;
    IBOutlet UIImageView *imagenCambio;
    
    IBOutlet UIActionSheet *actionEstilos;
    
    NSArray *imagenes;
    
}

-(IBAction)Atras:(id)sender;

-(IBAction)Adelante:(id)sender;

-(IBAction)MostrarOpciones:(id)sender;

@end
