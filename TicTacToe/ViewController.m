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
        [sender setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.whichPlayer setTextColor:[UIColor redColor]];
        [self.playerOneSquares addObject:[NSString stringWithFormat: @"%ld", (long)sender.tag]];
        [self whoWon:self.playerOneSquares];
        
        // Alert code
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[NSString stringWithFormat: @“Player %@ Wins!”, [self whoWon]
                                                                                                            message: Good job! :simple_smile: preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *newGame = [UIAlertAction actionWithTitle:@“New Game" style:UIAlertActionStyleCancel handler:nil];
                                  [alertController addAction:newGame];
                                  [self presentViewController:alertController animated:YES completion:nil];
                                                                                                                     
        self.whichPlayer.text = @"O";
    } else {
      
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self.whichPlayer setTextColor:[UIColor blueColor]];
        [self.playerTwoSquares addObject:[NSString stringWithFormat: @"%ld", (long)sender.tag]];
        [self whoWon:self.playerTwoSquares];
        self.whichPlayer.text = @"X";
    }
  
}

- (NSString *)whoWon: (NSMutableSet *)set {
    
    if ([[NSMutableSet setWithObjects:@"101", @"102", @"103", nil] isSubsetOfSet:set]) {
        return self.whichPlayer.text;
    } else if ([[NSMutableSet setWithObjects:@"104", @"105", @"106", nil] isSubsetOfSet:set]) {
        return self.whichPlayer.text;
    } else if ([[NSMutableSet setWithObjects:@"107", @"108", @"109", nil] isSubsetOfSet:set]) {
        return self.whichPlayer.text;
    } else if ([[NSMutableSet setWithObjects:@"101", @"104", @"107", nil] isSubsetOfSet:set]) {
        return self.whichPlayer.text;
    } else if ([[NSMutableSet setWithObjects:@"102", @"105", @"108", nil] isSubsetOfSet:set]) {
        return self.whichPlayer.text;
    } else if ([[NSMutableSet setWithObjects:@"103", @"106", @"109", nil] isSubsetOfSet:set]) {
        return self.whichPlayer.text;
    } else if ([[NSMutableSet setWithObjects:@"101", @"105", @"109", nil] isSubsetOfSet:set]) {
        return self.whichPlayer.text;
    } else if ([[NSMutableSet setWithObjects:@"103", @"105", @"107", nil] isSubsetOfSet:set]) {
        return self.whichPlayer.text;
}
    return @"";
}

@end
