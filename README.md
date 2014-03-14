#Demo from ReactiveCocoa bug #1161

When you tap the orange cell you should see

    "If you see this, it worked"

printed to the console.

Expected Result: You'll see the message

Actual Result: You don't see the message

When you un-comment line 31 of CollectionViewController.m, and re-run the app, the approprate log message is printed to the console.
