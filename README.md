# private Events

This is an Event management application where users can create events and manage them.

- Here we created the User, Event, and Attendee models and their associated controllers.
- We created a sign-up, sign in, and create event forms and we ensured the sign-in form does not require a password.
- Implemented one_to_many and many_to_many associations.
- Displayed a single event and all events on the User's show page.
- Applied #build method of the association in the #create method of events controller.
- Displayed a list of attendees on the event's show page.
- Separated upcoming events from previous events, (we also achieved this purpose using class method and scopes).


## Environment Set Up Requirements

To run this project, you need ruby installed in your environment
Run the following command:

```
$ ruby -v
```

You should have a result similar to this:
s
```
ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]
```

If you don't get that result, follow this [link](https://www.ruby-lang.org/en/documentation/installation/) and install Ruby in your local environment.

## Getting Started

**Need web browser.** to download Repository

**Need Terminal** to run the code

To get a local copy up and running follow these simple example steps.

- Clone this [repository](git@github.com:jamezjaz/private-events.git)
- open Terminal
- cd private-events
- Once in root folder;
- run `bundle install`, this action will install the required dependencies
- run `rake db:create`
- run `rake db:migrate`
- Run `rails server` or just `rails s`
- Then in your browser, type localhost:3000/ in address bar and punch enter.


## Built With

- Ruby
- Ruby on Rails

## Authors

👤 **James C. Odufu**

- Github: [@githubhandle](https://github.com/jamezjaz)
- Twitter: [@twitterhandle](https://twitter.com/jamezjaz90)
- Linkedin: [@linkedin](https://linkedin.com/in/james-odufu-ba2a4a125)

👤 **Muhammad Fahad Umer**

- Github: [@MFahadUmer](https://github.com/MFahadUmer)
- Twitter: [@engfahadumer](https://twitter.com/engfahadumer)
- Linkedin: [linkedin](https://www.linkedin.com/in/engineer-muhammad-fahad-e-umer-08813055/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jamezjaz/private-events/issues).

## Show your support

Give a ⭐️ if you like this project!
