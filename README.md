# blankgollum

by Remi Plourde

<http://github.com/remino/blankgollum>

The people at GitHub wrote [Gollum][], a Ruby gem allowing you store wiki pages in a Git repo and, with the help of [Sinatra][], edit them using a Web interface.

You can clone this repo and fork it into your own as a template for a new wiki powered by Gollum:

    $ git clone git://github.com/remino/blankgollum.git newwiki
    $ cd newwiki
    $ git remote rm origin
    $ git remote add origin git@github.com:example/newwiki.git
    $ git push -u origin master

It has a ````Gemfile```` for you to call Bundler and install Gollum and all necessary gems to get starting:

    $ bundle install

To start Gollum locally, type in the following and point your browser to <http://localhost:4567>:

    $ ./start-gollum

The repo is already capified, so you can edit the ````config/deploy.rb```` to fit the deployment of your project. Once ready, deploy it:

    $ cap deploy

There is a ````config.ru```` file for Passenger to run. Just point the public directory for Apache to the ````public```` in this repo, and the Passenger module will do the rest to make this Gollum site go live.

[Gollum]: https://github.com/github/gollum
[Sinatra]: http://www.sinatrarb.com/
