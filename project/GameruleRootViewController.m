//
//  GameruleRootViewController.m
//  project
//
//  Created by 我好酷😎 on 2017/12/2.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "GameruleRootViewController.h"

@interface GameruleRootViewController ()

@end

@implementation GameruleRootViewController

//I've learnt how to use UIPageViewController on the following website:http://www.theappguruz.com/blog/uipageviewcontroller-in-ios

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.ruleimagearray = @[@"Rule1.png",@"Rule2.png",@"Rule3.png"];
    self.ruletextarray = @[@"HOW TO PLAY?",@"HOW TO PLAY?",@"HOW TO PLAY?"];
    
    // Create page view controller
    self.pageviewcontroller = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageviewcontroller.dataSource = self;
    
    GamerulePageContentViewController *startingViewController = [self viewcontrolleratindex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageviewcontroller setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
    self.pageviewcontroller.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
    
    [self addChildViewController:_pageviewcontroller];
    [self.view addSubview:_pageviewcontroller.view];
    [self.pageviewcontroller didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark pageviewcontroller datasource method
// tell what the previous page is
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((GamerulePageContentViewController *) viewController).pageindex;
    
    if ((index == 0) || (index == NSNotFound))
    {
        return nil;
    }
    index--;
    return [self viewcontrolleratindex:index];
}

// tell what the next page is
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    
    NSUInteger index = ((GamerulePageContentViewController*) viewController).pageindex;
    
    if (index == NSNotFound)
    {
        return nil;
    }
    
    index++;
    if (index == [self.ruleimagearray count])
    {
        return nil;
    }
    return [self viewcontrolleratindex:index];
}

# pragma mark the definition for viewcontrolleratindex:index method
- (GamerulePageContentViewController *)viewcontrolleratindex:(NSUInteger)index
{
    if (([self.ruleimagearray count] == 0) || (index >= [self.ruleimagearray count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    GamerulePageContentViewController *gamerulepagecontentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"GamerulePageContentViewController"];
    gamerulepagecontentViewController.imagefile = self.ruleimagearray[index];
    gamerulepagecontentViewController.ruletext = self.ruletextarray[index];
    gamerulepagecontentViewController.pageindex = index;
    
    return gamerulepagecontentViewController;
}


#pragma mark the method of page number
// the method to display the indicator (i.e.dots)
// tell how many pages are and which page must be presented first

-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return 3;
}

-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
