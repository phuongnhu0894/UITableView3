//
//  ViewController.m
//  UITableView
//
//  Created by student on 11/16/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation ViewController {
    NSMutableArray *models;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.tableView.dataSource = self;
    //self.tableView.delegate = self;
    //[self.tableView registerClass:[UITableViewCell class ]forCellReuseIdentifier:@"Cell"];
    self.title = @"Beautiful Girls";
    models = [[NSMutableArray alloc]init];
    Model *model1 = [Model new];
    model1.name = @"Ngoc Trinh";
    model1.measure = @"100-100-100";
    model1.imageFile = @"ngoctrinh.png";
    [models addObject:model1];
    Model *model2 = [Model new];
    model2 = [Model new];
    model2.name = @"Taylor";
    model2.measure = @"100-100-100";
    model2.imageFile = @"taylor.png";
    [models addObject:model2];
    Model *model3 = [Model new];
    model3.name = @"Rebecca";
    model3.measure = @"100-100-100";
    model3.imageFile = @"rebecca.png";
    [models addObject:model3];
    self.tableView.separatorColor = [UIColor redColor];
    
    
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return models.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    Model *model = [models objectAtIndex:indexPath.row];
    UIImageView *modelImageView = (UIImageView *)[cell viewWithTag:100];
    modelImageView.image = [UIImage imageNamed:model.imageFile];
    
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:101];
    nameLabel.text = model.name;
    
    UILabel *measureLabel = (UILabel *)[cell viewWithTag:102];
    measureLabel.text = model.measure;
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
//    cell = [cell initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:@"Cell"];
//    cell.textLabel.text = @"Techmaster";
//    cell.textLabel.textColor = [UIColor blueColor];
//    cell.detailTextLabel.text = @"what the fox";
//    cell.imageView.image = [UIImage imageNamed:@"ball"];
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}
@end
