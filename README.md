---
  tags: tutorial, intermediate, CoreData, Relationships
  languages: objc
---

Core Data SlapChat Relationships
=========

# Instructions

  1. Create a new **Empty Project** and select the Core Data stuff
  2. Create a new Singleton Data Store class and copy over these three
     segments:
     * In FISAppDelegate.h: lines 15-20
     * In FISAppDelegate.m: Lines 15-17 and 56-149
  4. In your .xcdatamodeld make a new entity called Message. It should have two attributes: image and createdAt
  5. Generate the NSManagedObject subclass
  6. Make a new UITableViewController. In your basic cell, set the `textLabel.text` to the date of your `Message` objects.
  7. Add a property to your UITableViewController of type `NSArray` that will be an NSArray of `Message` objects.
  8. Add a plus button to a UINavigationController and link that to an `IBAction`.
  9. When that `IBAction` gets tapped, present modally a new `UIImagePickerController`
  10. After the user selects an image, Create a new `Message` object, add the current date and convert the `UIImage` to an `NSData` object by running `UIImagePNGRepresentation(image)`.
  11. Save the context and refetch from the `NSManagedObjectContext` to show the added item.

# Extra Credit

  1. Create another `ViewController` that when you tap on the `UITableViewCell` it shows the image stored.
  2. In that additional viewcontroller, create a `UIBarButtonItem` to change the image, and resave without changing the created at date.
