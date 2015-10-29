#Rails Cocoon Demo

A rails app that uses Cocoon, CarrierWave, and RMagick to create a nested form with unlimited image uploads.

On a previous project, my client wanted an online form where the user could upload images for the IDs of all
LLC members in his/her company, or all shareholders. Since the number of LLC members/shareholders would vary 
with each application, I needed a function that would add new fields at the click of a button. That's where 
Cocoon comes to the rescue with an easy method for adding nested fields to a form. CarrierWave and RMagick 
handle image uploads.

See the documentation for each gem:

Cocoon: https://github.com/nathanvda/cocoon

CarrierWave: https://github.com/carrierwaveuploader/carrierwave 

RMagick: https://github.com/rmagick/rmagick

Note: RMagick installation can be tricky and requires extra steps for Ubuntu. See the documentation for help.

#Installation

1. git clone https://github.com/wstevo4891/rails_cocoon_demo.git

2. Run bundle install

That's it! Start up a rails server, go to the home page, create a user account, and start the application form.
You will be able to add as many instances of the member fields as you want.

Files to note:

User, Document, and Member models

Documents Controller's strong parameters (at the bottom of the file)

Documents form, of course, and _member_fields.html.erb

documents.coffee (this is what creates the nice fade in effect)

custom.css.scss for the styles

IMPORTANT!: For Cocoon to work, your form code MUST BE INDENTED PROPERLY. If you slap everything on the first column
with no indentation, the nested fields will NEVER save to the database. They will show up in the browser, but never
save when the user clicks submit. Follow Rails Best Practices.
