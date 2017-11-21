![Phoenix from scratch](https://guides.nanobox.io/assets/quickstart-icons/phoenix.png)

This is a Phoenix quickstart provided by Nanobox that will generate a brand new Phoenix project and configure it for Nanobox. To run the quickstart locally, download and install Nanobox.

<a href="https://nanobox.io/download"><img src="https://guides.nanobox.io/assets/quickstart-icons/download.png" /></a>

## Clone the Repo

```bash
# clone the code
git clone https://github.com/nanobox-quickstarts/nanobox-phoenix.git

# cd into the phoenix app
cd nanobox-phoenix
```

## Run the Quickstart

```bash
# Add a convenient way to access your app from the browser
nanobox dns add local phx.local

# Run phoenix
nanobox run mix phx.server
```

## Check It Out

Visit your app at <a href="http://phx.local:4000" target="\_blank">phx.local:4000</a>

## Explore
With Nanobox, you have everything you need develop and run your phoenix app:

```bash
# drop into a Nanobox console
nanobox run

# where elixir is installed,
elixir -v

# your packages are available,
mix list

# and your code is mounted
ls

# exit the console
exit
```

## What Does This Quickstart Do?
When Nanobox starts, it will run the quickstart install script as part of the build process which does the following:

1. Downloads the phx_new package and generates a new Phoenix project.
2. Updates database connections to use the auto-generated environment variables.
3. Sets the production app endpoint port to 8080.

For the full details, you can take a look at [`quickstart/install.sh`](https://github.com/nanobox-quickstarts/nanobox-phoenix/blob/master/quickstart/install.sh).

## Now What?
For more details about running Phoenix apps with Nanobox, visit [Nanobox Phoenix Guides](https://guides.nanobox.io/elixir/phoenix/).

<a href="https://nanobox.io"><img src="https://guides.nanobox.io/assets/quickstart-icons/footer.png" /></a>
