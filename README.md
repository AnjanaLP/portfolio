# Personal Website
https://anjana-portfolio.herokuapp.com

## Features

- friendly_id gem to implement slugs for blogs (ie what appears in the url bar instead of params)
- enum to change the state of a blog from draft to published
- custom scopes to avoid database queries in the controller and have them in the model instead
- use of includes instead of all to optimise database query performance
- nested attributes to add technologies to a portfolio item
- use of view helpers, model concerns and controller concerns
