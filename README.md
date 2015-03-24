# KYShareMenu
带弹性动画的分享菜单

![](demo.gif)


##Usage

本Demo使用了[onevcat](https://github.com/onevcat)的[VVBlurPresentation](https://github.com/onevcat/VVBlurPresentation)实现present之后背景模糊。


```
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    KYShareViewController *shareVC = segue.destinationViewController;
    shareVC.delegate = self;
    shareVC.blurStyle = UIBlurEffectStyleDark;
}
```

或者

```
-(IBAction)showMenu:(id)sender{
    KYShareViewController *shareVC = segue.destinationViewController;
    shareVC.delegate = self;
    shareVC.blurStyle = UIBlurEffectStyleDark;
    [self presentViewController:shareVC animated:YES completion:nil];
}
```
