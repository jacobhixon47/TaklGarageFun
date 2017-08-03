Takl Car Garage
===============

It is best to create a Garage first, then Manufacturer(s), then a Model(s), then Car(s). That way you can associate the car with manufacturer, model, garage, etc.


Tasks
-----

* [Done] Fix the app so the tests dont fail
* [Done] Create an admin screen for Cars (Using ActiveAdmin, see app/admin/)
* [Done] Make it so a user can have many cars associated with them
* [Done] Add a year field so I can own a car from 2003, or maybe any year?
* [Done] Add a Garage model that I can store my cars in
* [Done] Make the Garage have a configurable number of spaces and enforce that I can't store too many cars in there.
* [Done] Make sure you have Admin UIs for the major models so I can, as an admin create, read, update and destroy cars, garages, manufacturers, etc...

Tips
----

We like automated tests at Takl, so you should use those. There are some examples in this repo, most work fine.

[Done: Added many more tests, converted to FactoryGirl, added SimpleCov]
[Currently tests show coverage at ~88.56%]

Don't feel like you must obey whats already in place, if you think theres a better way, go for it.

Order you do these tasks in doesn't matter, that's up to you.
If you want to add non-admin UI, go to town, it is not required. If you want to add images, better styling, fun javascript knock yourself out. We'd love to see what you're good at but we at least want to see the basics outlined above.

We're fans of simplicity and readability.

If you're super stuck or have questions: feel free to hit us up!

Totally Optional Tasks
----------------------
If you've got the time, try out these optional tasks, but don't neglect the main tasks for these:

* [Done] Change the DB over to Postgres
* Add pricing for a Garage that they charge per space
* Total up how much a user owes per month based off their usage and show it on the user show page
