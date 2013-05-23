# Em::Http::Promise

Wraps EM::HttpRequest in the warm loving embrace of promises. Now you can just relax and enjoy asynchonous IO.

## Installation

Add this line to your application's Gemfile:

    gem 'em-http-promise'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install em-http-promise

## Usage

Gets rid of the callback pyramid. Moves all error handling to one location. Now you can just relax and enjoy asynchronous IO.

Old way: 
```ruby
    request = EM::HttpRequest.new(some_url).get
    request.callback = { |response| 
        ....
        request2 = EM::HttpRequest.new(some_other_url).get
        request2.callback = { |response2|
            #Deal with this here
        }
        request.errback = {
            #More error here
        }
    }
    request.errback = { |error|
        #error
    }
```

New way:
```ruby
    EM::HttpRequest.new(some_url).get.then { |response|
        ...
        EM::HttpRequest.new(some_other_url).get
    }.then(
        -> (response2) {
            #do something ehre
        },
        -> (error) {
            #This is like a throw
        }
    )
```


Curious what kind of cool things you can do?? Check this out:
https://github.com/joeljackson/sinatra-promises
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
