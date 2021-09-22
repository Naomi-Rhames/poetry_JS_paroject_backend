# README

Poetry Heaven is a simple web application that allows you to add or edit any poem and view all of them on one page.

#Installation
The backend repo can be found at https://github.com/Naomi-Rhames/poetry_heaven_backend.
After cloning both the frontend and backend repositories, run the following commands on the backend repo:

```
bundle install
rake db:migrate
rake db:seed
rails s
```

Go to this link http://localhost:3000/api/v1/poems to make sure that seed data has populated

In another terminal window, run the following command on the frontend repo to load the app in your browser window:

open index.html

#How to Use
Fill in the inputs to create your poem, Make sure that you have the Title, Genre, Image_url, Your Name and a selected category.

To edit a poem, click the edit button under the poem you like to edit. An edit form will appear on the bottom of the page.

#Features For Future Versions
. View a full poem
. Delete a Poem
. User authorization

#Contributing
Bug reports and pull request are welcome on Github at https://github.com/Naomi-Rhames/poetry_heaven_frontend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

#License
The gem is available as open source under the terms of the MIT License.