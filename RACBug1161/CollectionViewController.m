//
//  CollectionViewController.m
//  RACBug1161
//
//  Created by Andrew German on 2014-03-13.
//  Copyright (c) 2014 RAC Bug Report. All rights reserved.
//

#import "CollectionViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];

	[[self rac_signalForSelector:@selector(collectionView:didSelectItemAtIndexPath:) fromProtocol:@protocol(UICollectionViewDelegate)] subscribeNext:^(RACTuple *arguments) {
		NSLog(@"If you see this, it worked");
    }];
}

/*Uncomment this to make the above rac_signalForSelector:fromProtocol: work.*/

//- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath { }







- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
	return 1;
}

- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
	UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];

	cell.contentView.backgroundColor = [UIColor orangeColor];

	return cell;
}


@end
