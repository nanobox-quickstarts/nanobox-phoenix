![Phoenix from scratch](https://guides.nanobox.io/assets/quickstart-icons/phoenix.png)

# Phoenix from scratch

Run a Phoenix app locally, install nothing besides nanobox.

<a href="https://nanobox.io/download"><img src="https://guides.nanobox.io/assets/quickstart-icons/download.png" /></a>


## Clone the repo

```bash
# clone the code
git clone https://github.com/nanobox-quickstarts/nanobox-phoenix.git

# cd into the phoenix app
cd nanobox-phoenix
```

## Run the app

```bash
# Add a convenient way to access your app from the browser
nanobox dns add local phoenix.local

# Run phoenix
nanobox run mix phx.server
```

## Check it out

Visit your app at <a href="http://phoenix.local" target="\_blank">phoenix.local</a>

## Explore
With Nanobox, you have everything you need develop and run your phoenix app:

```bash
# drop into a Nanobox console
nanobox run

# which elixir is installed
elixir -v

# your packages are available,
mix list

# and your code is mounted
ls

# exit the console
exit
```

## Now What?
For more details about running phoenix apps with nanobox visit [guides.nanobox.io/elixir/phoenix/](https://guides.nanobox.io/elixir/phoenix/)

<a href="https://nanobox.io"><img src="https://guides.nanobox.io/assets/quickstart-icons/footer.png" /></a>
