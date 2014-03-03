---
  tags: tutorial, intermediate, CoreData, Relationships
  languages: objc
---

Core Data SlapChat Relationships
=========

# Instructions


  1. Create a new Entity in your Data Model called 'Recipient'
  2. Recipient should have the following properties 
  - name 
  - email
  - phoneNumber 
  - twitterHandle 
  3. In your data model, 'Recipient' should have a to many relationship with 'Messages' and Message should have a to-one relationship with Recipient.  In other words, a recipient can have many messages but a message can only have one recipient. 

  4. After the user selects an image, you should present a modal view controller that allows them to fill in a form of recipient data (name, email, phoneNumber, twitterHandle).  A relationship between the Message and the recipient should be created upon pressing a submit button on this viewController.  

  5. Embed your View Controller Stack into a Tab Bar Controller.  In the second tab, create a tableViewController that displays a list of all Recipients. Selecting a Recipient should segue to another tableview that displays all of the Messages for that Recipient.   


# Extra Credit 

Add a search bar to the Recipient tableview controller that allows you to filter the list of recipients.  Research UISearchBar, UISearchBarDelegate, and NSPredicate to make this happen.   



