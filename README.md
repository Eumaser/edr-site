# EDR Archives App

This is a pet project that I experimented to learn to in and outs of ruby on rails and also as a portfolio page of some sort. The demo app is hosted on heroku- [Demo App](https://edrarchives.herokuapp.com)

The application uses devise as a user-authentication and only a registered user can add, delete and edit the list.

Functionality to add (short term)
- Add image upload on the anime list
- Add hyperlink to the anime list
- Revised the view page
- At the anime index page, if image upload is completed, changed the layout, removed table and use column based with image on it


Functionality to add (long term)
- Allow other people to register and then create their own collection. Doing so would mean this app will no longer be used by one person.
- If the objective above is completed, allow users to view the other user's list.
- Create new module location, for users to add their own HDD location etc.

# Installation
____________________________________________
- Clone project into your directory https://github.com/Eumaser/edr-site.git
- Access the app, run bundle install in your cmd.
- If you have postgres installed, go to config/database.yml and changed the username and password  for development and test environment.
- If you don't plan on using postgres, changed the gemfile, gem pg to gem sqlite or something similar. Execute bundle install.
- Run rake db:migrate.
- Run rails server.
