# Word Definer
## By: Lela Smith

### Description
#### Children's website that allows children to create new words and add a definition for their made-up words. A project to practice routing with Sinatra and Test Driven Development in Ruby.

### Specs/CRUD functionality
|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|
|GET|/words|READ|Get list of words|
|GET|/words/:id|READ|Look at detail page for a single word|
|POST|/words|CREATE|Add new word to the list of words|
|PATCH|/words/:id|UPDATE|Update a single word|
|DELETE|/words/:id|DELETE|Delete a word from the list|
|GET|/words/new|READ|Go to the form page for adding a new word to the list|
|GET|/words/:id/edit|READ|Go to the form page for editing a word


|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|
|GET|/words/:id/definitions/:definition_id|READ|Look at detail page for a single definition|
|POST|/words/:id/definitions/:definition_id|CREATE|Add new definition to the list of definitions|
|PATCH|/words/:id/definitions/:definition_id|UPDATE|Update a single definition|
|DELETE|/words/:id/definitions/:definition_id|DELETE|Delete a definition from the list|

### Known Bugs
#### None

### Setup
* Clone this repository: https://github.com/Leels/word_definer.git
* from _C:\Users\exampleUser\exampleCloneLocation\example-project-title>_  
1. $ bundle install
2. $ ruby app.rb
  * This project is fully deployed on **Heroku** [here](https://gentle-lowlands-10115.herokuapp.com/)

### Technologies Used
* HTML
* CSS
* Bootstrap
* Ruby
* Sinatra

### License
#### This software is licensed under the MIT license.

#### Copyright (c) 2019 Lela Smith
