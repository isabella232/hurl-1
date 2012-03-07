Hurl
====

Hurl was created for the Rails Rumble 2009 in 48 hours.
Now Hurl is an open source project for your enjoyment.

<http://hurl.it/>

This Fork
---------

* [benatkin](https;//github.com/benatkin) forked hurl to work on Heroku & CouchDB.
* [localtoast](https;//github.com/localtoast) forked it to make it single user.
* [brianjlandau](https;//github.com/brianjlandau) changed some of the copy & removed the examples and added HTTP Basic auth for creating and deleting hurls.

Installation
------------

Hurl requires Ruby 1.8.6+

First download hurl and cd into the directory:

    git clone git://github.com/defunkt/hurl
    cd hurl

Or download [the zip](http://github.com/defunkt/hurl/zipball/master).

Next make sure you have [RubyGems](https://rubygems.org/pages/download) installed.

Then install [Bundler](http://gembundler.com/):

    gem install bundler

Now install Hurl's dependencies:

    bundle install


Run On Heroku & CouchDB
-----------------------

First get a CouchDB database and get the url, including auth. I got my
DB from [Cloudant](https://cloudant.com/).

    git clone git://github.com/vigetlabs/hurl.git
    cd hurl
    heroku create my-clever-name --stack cedar
    heroku addons:add cloudant:oxygen
    git push heroku master

Now you can go to [http://my-clever-name.herokuapp.com/](http://my-clever-name.herokuapp.com/)


Screenshot
----------

[![Hurl](http://img.skitch.com/20091020-xtiqtj4eajuxs43iu5h3be7upj.png)](http://hurl.it)


Authors
-------

* [Leah Culver][2]
* [Chris Wanstrath][3]


[1]: http://r09.railsrumble.com/
[2]: http://github.com/leah
[3]: http://github.com/defunkt
