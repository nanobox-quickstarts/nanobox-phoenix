![Phoenix from scratch](https://guides.nanobox.io/assets/quickstart-icons/phoenix.png)

#### Clone the repo

```bash
# clone the code
git clone https://github.com/nanobox-quickstarts/nanobox-phoenix.git

# cd into the phoenix app
cd nanobox-phoenix
```

#### Run the app

```bash
nanobox run mix phoenix.server
```

#### Check it out

```bash
# Add a convenient way to access your app from the browser
nanobox dns add local phoenix.dev
```

Visit your app at <a href="http://phoenix.dev" target="\_blank">phoenix.dev</a>

#### Explore
With Nanobox, you have everything you need develop and run your phoenix app:

```bash
# drop into a Nanobox console
nanobox run

# where php is installed,
elixir -v

# your packages are available,
mix list

# and your code is mounted
ls

# exit the console
exit
```

#### Now What?
For more details about running phoenix apps with nanobox visit [guides.nanobox.io/php/phoenix/](https://guides.nanobox.io/php/phoenix/)
