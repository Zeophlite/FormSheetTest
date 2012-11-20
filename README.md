This project demonstrates an issue with `UIModalPresentationFormSheet` that only appears to occur with iPad mini's.


## App Flow

The app delegate listens for `UIKeyboard{Will,Did}{Hide,Show}Notification` and `UIKeyboard{Will,Did}ChangeFrameNotification` .

The rootViewController presents a Form Sheet:

    UIViewController *loginController = ...
    loginController.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:loginController animated:YES completion:^{ }];

The Form Sheet has a textfield, and on touching, on touching, it presents the keyboard

## Results

Open app in iPad 2 (Model 10A403), and iPad mini (Model MD528X)

When opening in an iPad 2, the form sheet moves up to touch the status bar.  On the iPad mini, the keyboard stays stationary.

`UIKeyboard{Will,Did}{Hide,Show}Notification` and `UIKeyboard{Will,Did}ChangeFrameNotification` fire for iPad2
But only `UIKeyboard{Will,Did}ChangeFrameNotification` fire for iPad Mini


iPad2
![iPad2](http://i.imgur.com/vyPy2.png "iPad2")

iPad2+Keyboard
![iPad2+Keyboard](http://i.imgur.com/UHXtP.png "iPad2+Keyboard")

Mini
![Mini](http://i.imgur.com/GqVAU.png "Mini")

Mini+Keyboard
![Mini+Keyboard](http://i.imgur.com/uqyeW.png "Mini+Keyboard")
