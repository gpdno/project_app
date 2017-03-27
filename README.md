# Project Layout

## User
#### Devise
* name:string
* email:string
* password:string
*
* has_many :projects
* has_many :tasks


## Project
* name:string
* description:string
* user_id:integer
* 
* has_many :tasks
* belongs_to :user


## Task
* action:string
* comments:text
* project_id:integer
* user_id:integet
* 
* belongs_to :project
* belongs_to :user
