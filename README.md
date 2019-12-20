<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://www.microverse.org/">
    <img src="doc/microverse.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Members only</h3>

  <p align="center">
    This is webapp similar to a private Eventbrite which allows users to create events and then manage user signups.
    <br />
    <a href="https://github.com/collinsugwu/private-events/blob/master/README.md"><strong>Explore the docs �</strong></a>
    <br />
    <br />
    <a href="https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks.">Assigment</a>
    �
    <a href="https://github.com/collinsugwu/private-events/issues">Report Bug</a>
    �
    <a href="https://github.com/collinsugwu/private-events/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->
This is webapp similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and send invitations and parties (sound familiar?). Events take place at a specific date and at a location (which you can just store as a string, like “Andy’s House”).

### Built With
This progam was made using this technologies
* [Ruby](https://www.ruby-lang.org/en/)
* [Rails](https://rubyonrails.org/)
* [Rubocop](https://github.com/rubocop-hq/rubocop)
* [Stickler](https://stickler-ci.com/)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

* Ruby
You can easily install Ruby on your Linux computer by using [Homebrew](https://docs.brew.sh/) and [Chruby](https://github.com/postmodern/chruby)
```sh
brew install chruby
brew install ruby-install
ruby-install ruby
```

* Rails
  You can easily install Rails by using [the odin project's giude](https://www.theodinproject.com/courses/web-development-101/lessons/your-first-rails-application) or directly from the [rails site](https://rubyonrails.org/)

```sh
  gem install rails
```

### Installation

<!-- 1. Get a free API Key at [https://example.com](https://example.com) -->
1. Clone the repo
```sh
git clone https://github.com/collinsugwu/private-events
```
2. Install all necessary gems
```
$ bundle install --without production
```
3. migrate the database:
```
$ rails db:migrate
```
4. run the test suite to verify that everything is working correctly:
```
$ rails test
```
5. If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

<!-- USAGE EXAMPLES -->
## Usage
1. Sign up or Login
2. Create, Update, Edit and Delete Events
3. Apply for Events
4. Get list of Event Attendees
5. Get list of Past and Upcoming Events


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/collinsugwu/private-events/issues) for a list of proposed features (and known issues).


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.


<!-- CONTACT -->
## Contact


* Collins Ugwu: [Github](https://github.com/collinsugwu), [Twitter](https://twitter.com/collinsugwu_me)
* Abubarkar Diallo: [Github](https://github.com/abruzy)

Project Link: [https://github.com/collinsugwu/private-events](https://github.com/collinsugwu/private-events)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/collinsugwu/private-events
[contributors-url]: https://github.com/collinsugwu/private-events/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/collinsugwu/private-events
[forks-url]: https://github.com/collinsugwu/private-events/network/members
[stars-shield]: https://img.shields.io/github/stars/collinsugwu/private-events
[stars-url]: https://github.com/collinsugwu/private-events/stargazers
[issues-shield]: https://img.shields.io/github/issues/collinsugwu/private-events
[issues-url]: https://github.com/collinsugwu/private-events/issues
[license-shield]: https://img.shields.io/github/license/collinsugwu/private-events
[license-url]: https://github.com/collinsugwu/private-events/blob/master/LICENSE.txt
