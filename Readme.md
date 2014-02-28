---
tags: forms, sinatra
languages: ruby, html
---

# Basic Forms!

## Deliverables

Fork this repository. Deliver your work in the master branch.

## Instructions

Create an edit form for the songs resource, utilize the params hash.

1) Bundle gems

`bundle`

2) Create the database schema

`rake db:migrate`

3) Seed the database with data

`rake db:seed`

### Create the edit route

Create an 'edit' route in app.rb and pass it a song id. This route is going to render the songs/edit template, so also create a song instance variable to pass to the view.

### Create the edit view

Create an edit view template in views/songs and build a form with named controls. The purpose of this form is to edit/update existing songs. These fields should have the songs current attributes set as their value so that they can be properly updated.

### Create the update route

Create an 'update' route in app.rb. The is is the route where you will post the data from the song edit form. Inside the controller block, use the params hash to update and save the changes to the song.

### Add the route action to your form

Make sure that the 'action' attribute of your form points to the correct route, and that the method is correct.

### Add the edit link

Add a link on each song show page that directs users to the edit view
and fix the songs!.
