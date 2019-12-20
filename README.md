|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|---|
|GET|/words|READ|Get list of words|
|GET|/words/:id|READ|Look at detail page for a single word|
|POST|/words|CREATE|Add new word to the list of words|
|PATCH|/words/:id|UPDATE|Update a single word|
|DELETE|/words/:id|DELETE|Delete a word from the list|
|GET|/words/new|READ|Go to the form page for adding a new word to the list|
|GET|/words/:id/edit|READ|Go to the form page for editing a word


|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|---|
|GET|/words/:id/definitions/:definition_id|READ|Look at detail page for a single definition|
|POST|/words/:id/definitions/:definition_id|CREATE|Add new definition to the list of definitions|
|PATCH|/words/:id/definitions/:definition_id|UPDATE|Update a single definition|
|DELETE|/words/:id/definitions/:definition_id|DELETE|Delete a definition from the list|
