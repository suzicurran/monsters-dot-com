# MonsterS.com

[ ![Codeship Status for suzicurran/monsters-dot-com](https://codeship.com/projects/84754160-bf10-0134-0a5c-7a625a3fabd4/status?branch=master)](https://codeship.com/projects/196487)
![Code Climate](https://codeclimate.com/github/suzicurran/monsters-dot-com.png)
![Coverage Status](https://coveralls.io/repos/suzicurran/monsters-dot-com/badge.png)

NOTE: This project is no longer being maintained, may have broken features and/or insecure dependencies. The repository is made available for reference purposes only.

## [Live on Heroku!](https://monsters-dot-com.herokuapp.com)

## Overview

MonsterS.com, a send-up of a well-known job search site, allows users to post photos and descriptions of famous monsters who are "looking for work.” Users can rate them on various sliding-scale characteristics, such as scariness or silliness, and/or search for the best monsters for a “job” based on those characteristics. We enjoyed the technical challenges of crafting back-end logic for a variety of complex features, like up and downvoting reviews, sorting monsters by their traits, and user searches, as well as styling the site using a combination of Foundation and vanilla CSS.

This group project was built with peer developers using daily standup meetings, pair programming, and test-driven development on various aspects of the web site.

## Technologies

* Ruby on Rails
* JavaScript
* ReactJS
* PostgreSQL
* Devise
* Internal API

## Local Setup

To start:
```
git clone https://github.com/suzicurran/monsters-dot-com.git
```

From the directory:
```
bundle install
npm install
rake db:create && rake db:migrate && rake db:seed
```
