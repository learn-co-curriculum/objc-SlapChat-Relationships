---
  tags: tutorial, intermediate, CoreData, Relationships
  languages: objc
---

Core Data SlapChat Relationships
=========

# Instructions


  1. Delete the existing SlapChat app from your iOS simulator. This will wipe
     any core data stuff you already have.
  1. Create a new Entity in your Data Model called 'Recipient'
  2. Recipient should have the following properties 
    - name 
    - email
    - phoneNumber 
    - twitterHandle 
  3. In your data model, 'Recipient' should have a to many relationship with 'Messages' and Message should have a to-one relationship with Recipient.  In other words, a recipient can have many messages but a message can only have one recipient. 
  4. Add a new `UITableViewController` that is made to list Recipients. So the standard fetchrequest stuff. Very similar to how you did the messagesTableViewController
  5. When a user selects a recipient. It should segue to the messages table view controller and just show the messages for the selected recipient.

# Extra Credit 

  * Add in another Search view controller that will search recipients/messages. Search by different fields


