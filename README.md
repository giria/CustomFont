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
Now in the console check that the Roboto font is listed:
```
2015-03-19 16:01:16.883 CustomFont[1508:170360]   OriyaSangamMN-Bold
2015-03-19 16:01:16.884 CustomFont[1508:170360] Roboto
2015-03-19 16:01:16.886 CustomFont[1508:170360]   Roboto-MediumItalic
2015-03-19 16:01:16.886 CustomFont[1508:170360]   Roboto-Regular
2015-03-19 16:01:16.889 CustomFont[1508:170360]   Roboto-Thin
2015-03-19 16:01:16.889 CustomFont[1508:170360]   Roboto-Medium
2015-03-19 16:01:16.891 CustomFont[1508:170360]   Roboto-Black
2015-03-19 16:01:16.892 CustomFont[1508:170360]   Roboto-LightItalic
2015-03-19 16:01:16.894 CustomFont[1508:170360]   Roboto-BlackItalic
2015-03-19 16:01:16.895 CustomFont[1508:170360]   Roboto-Light
2015-03-19 16:01:16.896 CustomFont[1508:170360]   Roboto-Bold
2015-03-19 16:01:16.897 CustomFont[1508:170360]   Roboto-Italic
2015-03-19 16:01:16.899 CustomFont[1508:170360]   Roboto-ThinItalic
2015-03-19 16:01:16.900 CustomFont[1508:170360] Didot
```
