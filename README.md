
<h1 align="center">
  <br>
  <a href="http://guides.rubyonrails.org/"><img src="http://logos-download.com/wp-content/uploads/2016/09/Ruby_on_Rails_logo.png" alt="Travel Destination API" width="400"></a>
  <br>
  :sailboat: Travel Destination API :airplane:
  <br>
</h1>

<h4 align="center">A API that returns destination and reviews built with <a href="http://guides.rubyonrails.org/" target="_blank">Ruby-On-Rails</a>.</h4>
<h6 align="center">A Rails API Building Tutorial Project.</h6>

<div align="center">

  [![Coverage Status](https://img.shields.io/coveralls/aterris/simplecov-shield.svg)](https://coveralls.io/r/aterris/simplecov-shield?branch=master)[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
</div>
<br>
<div align="center">
  <img align="center" src="https://thumbs.gfycat.com/ObeseDearestChrysalis-max-14mb.gif">
</div>


## Key Features :key:

* Destinations - Create, Update, return all, and return specific destination
  - Returns destination in JSON format.
* Reviews - Create, Update, return all, and return specific review for destination
  - Returns review in JSON format
* Search - Returns a list of destitions with a API call
* [BCrypt](https://github.com/codahale/bcrypt-ruby) authentication via API-Key for posting Reviews
* API call is returned in JSON format
* Readable API call messages that give user good feedback
* Option to seed fake data

## How To Use :wrench:

To clone and run this application, you'll need [Git](https://git-scm.com) and [Ruby](http://ruby-doc.org/) (which comes with [rails](http://guides.rubyonrails.org/)) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/DanDanilyuk/travel_api

# Go into the repository
$ cd travel_api

# Install dependencies
$ bundle

# Run the app
$ rails s

# open postman and make a sample post call to
http://localhost:3000/destinations/

# Read the JSON output
```

You can use this API with postman to make calls or you can clone this repo (https://github.com/hal2814/travel-api-frontend) to call through an Agular application.



Note: If you get any errors there might be some other problems.


## Download :arrow_down:

You can [download](https://www.getpostman.com/) latest installable version of Postman.

## Technologies Used :computer:

This software uses code from several open source packages.

- [Ruby](http://ruby-doc.org/)
- [Rails](http://guides.rubyonrails.org/)
- [Faker](https://github.com/stympy/faker)
- [BCrypt](https://github.com/codahale/bcrypt-ruby)
- [Rspec](https://github.com/rspec/rspec-rails)
- [Simplecov](https://github.com/colszowka/simplecov)
- Emojis are taken from [here](https://github.com/arvida/emoji-cheat-sheet.com)
- [PostMan](https://www.getpostman.com/)

---

> GitHub [@hal2814](https://github.com/hal2814) &nbsp;&middot;&nbsp;
> LinkedIn [/nateMcgreggor](https://www.linkedin.com/in/nate-mcgregor/)
<div align="center">
<img src="https://avatars0.githubusercontent.com/u/30516063?s=460&v=4" width="100px;"/><br /><sub>Nate McGregor</sub>
</div>


> GitHub [@DanDanilyuk](https://github.com/dandanilyuk) &nbsp;&middot;&nbsp;
> LinkedIn [/dandanilyuk](https://www.linkedin.com/in/dandanilyuk/)
<div align="center">
<img src="https://avatars2.githubusercontent.com/u/25314425?s=460&v=4" width="100px;"/><br /><sub>Dan Danilyuk</sub>
</div>



## License

[MIT](https://opensource.org/licenses/MIT)
