# DevCon 2014 API

<bold>Warning</bold>: This is WIP project. 

The API is written in [Elixir](http://elixir-lang.org) language and uses [Phoenix Web Framework](https://github.com/phoenixframework/phoenix).


## Prerequisites
1. Install [Elixir](http://elixir-lang.org/install.html).
2. Install [Postgresql](www.postgresql.org).

To start application you have to:

1. Install dependencies with `mix deps.get`
2. You can change your postgres configuration at `lib\devcon\repo.ex`
3. Do database migrations with `mix ecto.migrate Repo`
2. Start Phoenix router with `mix phoenix.start`

Now you can visit `localhost:4000` from your browser. List all available commands with `mix help`


## Notes

* If you choose to change the application's structure, you could manually start the router from your code like this `Devcon.Router.start`


## Contributing

 1. Fork it
 2. Create your feature branch (`git checkout -b my-new-feature`)
 3. Commit your changes (`git commit -am 'Added some feature'`)
 4. Push to the branch (`git push origin my-new-feature`)
 5. Create new Pull Request

## License
[MIT](http://www.opensource.org/licenses/MIT)
