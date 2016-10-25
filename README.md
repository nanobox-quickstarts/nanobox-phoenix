# Phoenix with Nanobox
This is the companion application for the [Phoenix: Getting Started](https://guides.nanobox.io/elixir/phoenix/) guide on [guides.nanobox.io](https://guides.nanobox.io) and is pre-configured and ready to run with [nanobox](https://nanobox.io/)!

## Up and Running

``` bash

# clone the code
git clone https://github.com/nanobox-quickstarts/nanobox-phoenix.git

# cd into the phoenix app
cd nanobox-phoenix

# start the dev environment
nanobox dev start

# add a convenient way to access your app from the browser
nanobox dev dns add phoenix.nanobox.dev

# console into the dev environment
nanobox dev console

# run the application
mix phoenix.server
```

Visit the app from your favorite browser at: `phoenix.nanobox.dev:8080`

## Now What?
For more details about how this works or for more advanced topics related to running Phoenix applications with nanobox visit [guides.nanobox.io/elixir/phoenix/](https://guides.nanobox.io/elixir/phoenix/)
