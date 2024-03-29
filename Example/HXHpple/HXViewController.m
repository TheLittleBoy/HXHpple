//
//  HXViewController.m
//  HXHpple
//
//  Created by TheLittleBoy on 03/29/2024.
//  Copyright (c) 2024 TheLittleBoy. All rights reserved.
//

#import "HXViewController.h"
#import "TFHpple.h"

@interface HXViewController ()

@end

@implementation HXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *testFileUrl = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"html"];
    NSData  *data      = [NSData dataWithContentsOfURL:testFileUrl];

    TFHpple *doc       = [[TFHpple alloc] initWithHTMLData:data];
    NSArray *elements  = [doc searchWithXPathQuery:@"//a[@class='sponsor']"];

    TFHppleElement *element = [elements objectAtIndex:0];
    NSString *text = [element text];                               // The text inside the HTML element (the content of the first text node)
    NSLog(@"%@",text);
    
    NSString *tagName = [element tagName];                         // "a"
    NSLog(@"%@",tagName);
    
    NSDictionary *attributes = [element attributes];               // NSDictionary of href, class, id, etc.
    NSLog(@"%@",attributes);
    
    NSString * href = [element objectForKey:@"href"];              // Easy access to single attribute
    NSLog(@"%@",href);
    
    TFHppleElement * child = [element firstChildWithTagName:@"b"]; // The first "b" child node
    NSLog(@"%@",child);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
