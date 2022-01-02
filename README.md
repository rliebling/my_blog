# NOTES

1. after cloning, need to run
    ```
    git submodule init
    git submodule update
    ```
    This is to get the theme.  Else, `hugo` will not generate any HTML files.

2.  To debug templates use this: ``` {{ partial "debugprint.html" (slice .Kind .Title) }}<br>```
