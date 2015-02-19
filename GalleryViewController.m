//
//  GalleryViewController.m
//  iArt
//
//  Created by Claudia Oliva on 28/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "GalleryViewController.h"

@interface GalleryViewController ()

@end

@implementation GalleryViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
     imagenes = [NSArray arrayWithObjects:@"http://fipade.com/images/stories/abs01.jpg",@"http://fipade.com/images/stories/abs02.jpg",@"http://fipade.com/images/stories/abs03.jpg",@"http://fipade.com/images/stories/abs01.jpg",@"http://fipade.com/images/stories/abs04.jpg", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



#pragma mark - Metodos

bool esAbstract = FALSE;
bool esConceptual = FALSE;
bool esExpression = FALSE;
bool esFormalism = FALSE;
bool esImpresion = FALSE;
bool esPop = FALSE;
bool esRealism = FALSE;




-(IBAction)MostrarOpciones:(id)sender{
    
    //actionEstilos = [[UIActionSheet alloc] initWithTitle:@"Choose an Style" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Abstract", @"Conceptualism", @"Expressionism", @"Formalism", @"Impressionism", @"Pop", @"Realism", nil];
    
    actionEstilos = [[UIActionSheet alloc] initWithTitle:@"Choose Your Style" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Abstract", @"Conceptualism", @"Expressionism",@"Formalism",@"Impressionism",@"Pop",@"Realism", nil];
    
    [actionEstilos showInView:self.view];

    
}

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    
    //NSLog(@"Revisar %d", buttonIndex);
    
    switch (buttonIndex) {
        case 0:
            
            labelEstilo.text = @"Abstract";
            NSLog(@"Abstract");
            imagenCambio.image = [UIImage imageNamed:@"imageAbstract copia.jpeg"];
            
            [self makeFalse];
            
            esAbstract = TRUE;
            
            [self cargaArreglo];
            
            break;
            
        case 1:
            labelEstilo.text = @"Conceptualism";
            NSLog(@"Conceptualism");
            imagenCambio.image = [UIImage imageNamed:@"imageConceptual copia.jpeg"];
            
            [self makeFalse];
            
            esConceptual = TRUE;
            
            [self cargaArreglo];

            break;
            
        case 2:
            labelEstilo.text = @"Expressionism";
            NSLog(@"Expressionism");
            imagenCambio.image = [UIImage imageNamed:@"imageExpress copia.jpeg"];

            [self makeFalse];
            
            esExpression = TRUE;
            
            [self cargaArreglo];
            
            break;
            
        case 3:
            labelEstilo.text = @"Formalism";
            NSLog(@"Formalism");
            imagenCambio.image = [UIImage imageNamed:@"imageFormal copia.jpeg"];
            
            [self makeFalse];
            
            esFormalism = TRUE;
            
            [self cargaArreglo];

            break;
            
        case 4:
            labelEstilo.text = @"Impressionism";
            NSLog(@"Impressionism");
            imagenCambio.image = [UIImage imageNamed:@"imageImpression copia.jpeg"];
            
            [self makeFalse];
            
            esImpresion = TRUE;
            
            [self cargaArreglo];

            break;
            
        case 5:
            labelEstilo.text = @"Pop";
            NSLog(@"Pop");
            imagenCambio.image = [UIImage imageNamed:@"imagePop copia.jpeg"];
            
            [self makeFalse];
            
            esPop = TRUE;
            
            [self cargaArreglo];
            
            

            break;
            
        case 6:
            labelEstilo.text = @"Realism";
            NSLog(@"Realism");
            imagenCambio.image = [UIImage imageNamed:@"imageRealism copia.jpeg"];
            
            [self makeFalse];
            
            esRealism = TRUE;
            
            [self cargaArreglo];

            break;
            
            
            
    }
    
}


-(void)AbstractCambio:(BOOL)Bandera{
    
    if (Bandera == TRUE) {
        
        
        
        
    }
    
    
}

-(void)makeFalse{
    
    esAbstract = FALSE;
    esConceptual = FALSE;
    esExpression = FALSE;
    esFormalism = FALSE;
    esImpresion = FALSE;
    esPop = FALSE;
    esRealism = FALSE;
    
    
}




-(void)cargaArreglo{
    
   
    
    if (esAbstract == TRUE) {
        
        imagenes = [NSArray arrayWithObjects:@"http://fipade.com/images/stories/abs01.jpg",@"http://fipade.com/images/stories/abs02.jpg",@"http://fipade.com/images/stories/abs03.jpg",@"http://fipade.com/images/stories/abs04.jpg", nil];
        
    }
    if (esConceptual == TRUE) {
        
        imagenes = [NSArray arrayWithObjects:@"http://fipade.com/images/stories/concept01.jpg",@"http://fipade.com/images/stories/concept02.jpg",@"http://fipade.com/images/stories/concept03.jpg",@"http://fipade.com/images/stories/concept04.jpg", nil];
        
    }

    if (esExpression == TRUE) {
        
        imagenes = [NSArray arrayWithObjects:@"http://fipade.com/images/stories/expr01.jpg",@"http://fipade.com/images/stories/expr02.jpg",@"http://fipade.com/images/stories/expr03.jpg",@"http://fipade.com/images/stories/expr04.jpg", nil];
        
    }

    if (esFormalism == TRUE) {
        
        imagenes = [NSArray arrayWithObjects:@"http://fipade.com/images/stories/formal01.jpg",@"http://fipade.com/images/stories/formal02.jpg",@"http://fipade.com/images/stories/formal03.jpg",@"http://fipade.com/images/stories/formal04.jpg", nil];
        
    }

    if (esImpresion == TRUE) {
        
        imagenes = [NSArray arrayWithObjects:@"http://fipade.com/images/stories/impress01.jpg",@"http://fipade.com/images/stories/impress02.jpg",@"http://fipade.com/images/stories/impress03.jpg",@"http://fipade.com/images/stories/impress04.jpg", nil];
        
    }

    if (esPop == TRUE) {
        
        imagenes = [NSArray arrayWithObjects:@"http://fipade.com/images/stories/pop01.jpg",@"http://fipade.com/images/stories/pop02.jpg",@"http://fipade.com/images/stories/pop03.jpg",@"http://fipade.com/images/stories/pop04.jpg", nil];
        
    }

    if (esRealism == TRUE) {
        
        imagenes = [NSArray arrayWithObjects:@"http://fipade.com/images/stories/real01.jpg",@"http://fipade.com/images/stories/real02.jpg",@"http://fipade.com/images/stories/real03.png",@"http://fipade.com/images/stories/real04.jpg", nil];
        
    }

    
    
}

int i = 0;
NSString *nombreimagen = @"";

-(IBAction)Atras:(id)sender{
    
    if (i<1 || i == 4) {
        i = 2;
    }
    else {
        i = i + 1;
    }
    
    [self AsignarImagen];
    
    
    
}
-(IBAction)Adelante:(id)sender{
    
    if (i<1 || i == 4) {
        i = 2;
    }
    else {
        i = i + 1;
    }
    
    
    [self AsignarImagen];
    
    
}


-(void)AsignarImagen{
    
    if (i==4) {
        i = 1;
    }
    //Obtenemos la cadena
    nombreimagen = [imagenes objectAtIndex:i];
    
    NSURL *urlone= [NSURL URLWithString:nombreimagen];
    
    NSData *new=[NSData dataWithContentsOfURL:urlone];
    
    [imagenCambio setImage:[UIImage imageWithData:new]];
    
    //imagenCambio.image = [UIImage imageNamed:nombreimagen];

    
}




@end
