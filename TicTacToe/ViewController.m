//
//  ViewController.m
//  TicTacToe
//
//  Created by Dylan Bruschi on 3/17/16.
//  Copyright © 2016 Dylan Bruschi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayer.text = @"X";
    [self.whichPlayer setTextColor:[UIColor blueColor]];

}

- (IBAction)onButtonTapped:(UIButton *)sender {
    [sender setTitle:self.whichPlayer.text forState:UIControlStateNormal];
    if ([self.whichPlayer.text isEqual: @"X"]) {
        self.whichPlayer.text = @"O";
        [sender setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.whichPlayer setTextColor:[UIColor redColor]];
    } else {
        self.whichPlayer.text = @"X";
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self.whichPlayer setTextColor:[UIColor blueColor]];
    }
}

-(NSString *)whoWon {
    NSMutableSet *playerOneSquares = [[NSMutableSet alloc] init];
    NSMutableSet *playerTwoSquares = [[NSMutableSet alloc] init];
    
    if ([playerOneSquares containsObject:(self.button1.titleLabel && self.button2.titleLabel && self.button3.titleLabel)]) {
        NSLog(@"winner!");
    }
    
}

@end
