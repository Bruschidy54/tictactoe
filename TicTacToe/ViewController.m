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
@property NSMutableSet *playerOneSquares;
@property NSMutableSet *playerTwoSquares;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playerOneSquares = [[NSMutableSet alloc]init];
    self.playerTwoSquares = [[NSMutableSet alloc]init];
    self.whichPlayer.text = @"X";
    [self.whichPlayer setTextColor:[UIColor blueColor]];
    

}

- (IBAction)onButtonTapped:(UIButton *)sender {
    [sender setTitle:self.whichPlayer.text forState:UIControlStateNormal];
    if ([self.whichPlayer.text isEqual: @"X"]) {
        self.whichPlayer.text = @"O";
        [sender setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.whichPlayer setTextColor:[UIColor redColor]];
        [self.playerOneSquares addObject:[NSString stringWithFormat: @"%ld", (long)sender.tag]];
        NSLog(@"%@", self.playerOneSquares);
    } else {
        self.whichPlayer.text = @"X";
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self.whichPlayer setTextColor:[UIColor blueColor]];
        [self.playerTwoSquares addObject:[NSString stringWithFormat: @"%ld", (long)sender.tag]];
        NSLog(@"%@", self.playerTwoSquares);
    }
}

- (NSString *)whoWon {
    
    if ([self.playerOneSquares isEqualToSet:[NSMutableSet setWithObjects:(@"101", @"102", @"103"), nil]]) {
        NSLog(@"winner!");
    }
    return @"a";
}

@end
