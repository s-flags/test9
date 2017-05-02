//
//  testView.m
//  test9
//
//  Created by sander on 19.09.16.
//  Copyright © 2016 Flagstone. All rights reserved.
//

#import "testView.h"
#import <PureLayout/PureLayout.h>

IB_DESIGNABLE

@interface testView ()
@property (nonatomic) UILabel *titleLabel;
@property (nonatomic) UIButton *button;
@property (nonatomic) UIImageView *im;
@property (nonatomic) UILabel *moreLabel;
@end


@implementation testView

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self setup];
  }
  return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];

  if (self) {
    [self setup];
  }
  return self;
}


- (void)setup {
  self.backgroundColor = [UIColor yellowColor];
  [self setupConstraints];
  [self setNeedsUpdateConstraints];
}

- (UILabel *)titleLabel {
  if(!_titleLabel) {
    _titleLabel = [UILabel newAutoLayoutView];
    _titleLabel.numberOfLines = 0;
    _titleLabel.backgroundColor = [UIColor redColor];
    _titleLabel.textColor = [UIColor whiteColor];
    _titleLabel.text = @"In older versions of Xcode, you can edit the user-defined runtime attributes to change properties of an object (e.g. layer.cornerRadius) in Interface Builder. The problem is you have to key in the exact name of the properties.";
    [self addSubview:_titleLabel];
  }
  return _titleLabel;
}

- (UIImageView *)im {
  if (!_im) {
    _im = [UIImageView newAutoLayoutView];
    _im.contentMode = UIViewContentModeScaleAspectFit;
    _im.backgroundColor = [UIColor greenColor];
    [self addSubview:_im];
  }
  return _im;
}

- (void)setupConstraints{
  [self.titleLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self withOffset:10.0];
  [self.titleLabel autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self withOffset:10.0];
  [self.titleLabel autoPinEdge:ALEdgeTrailing toEdge:ALEdgeTrailing ofView:self withOffset:-10.0];
  [self.im autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.titleLabel withOffset:10.0];
  [self.im autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self withOffset:10.0];
   [self.im autoSetDimensionsToSize:CGSizeMake(50.0, 50.0)];

}

@end
