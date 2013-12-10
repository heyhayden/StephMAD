//
//  MADViewController.h
//  Music
//
//
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *musicPicker;
@property (weak, nonatomic) IBOutlet UILabel *choiceLabel;

@property(strong, nonatomic) NSArray *genre;

@property(strong, nonatomic) NSArray *decade;

@end
