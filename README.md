# CustomFont
How to add a non-system font to the iOS bundle.


Simple program to demonstrate how to install a non-system Font on an app.

First, get the Roboto font from Google.
Drag the .ttf files to the project.
Go to SupportingFiles/Info.plist
Add a row with the key "Fonts Provide by the application"
Add each font as a item.
In the code add:

```
self.textView.font = [UIFont fontWithName:@"Roboto-Light" size:25];
```

In order to check if the new font is included in the bundle try this:
```
 for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
```
