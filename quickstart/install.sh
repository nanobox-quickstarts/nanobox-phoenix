#!/bin/sh
set -e

# Installing Phoenix message
printf "\n+ Installing Phoenix (This may take a few minutes)...\n"

# cd into the /tmp dir to create an app
cd /tmp

# Install Phoenix
echo "Y" | mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez

# Generate a new Phoenix application
echo "n" | mix phx.new app

# cd back into the /app dir
# Enable the hidden files shell option
# Copy the generated app into the project dir
cd -
shopt -s dotglob
cp -a /tmp/app/* .

# Load app dependencies
mix deps.get

# Add Nanobox landing page and assets
cp quickstart/static/favicon.png assets/static/images/favicon.png
cp quickstart/static/styles.css assets/css/app.css
mv assets/css/phoenix.css assets/css/_phoenix.css
cp quickstart/static/app.html.eex lib/app_web/templates/layout/app.html.eex
cp quickstart/static/index.html.eex lib/app_web/templates/page/index.html.eex

# Load node dependencies and brunch build
cd assets
npm install
node_modules/brunch/bin/brunch build
cd ../

# Update the database connection in config files
sed -i -e "
s/^\s username.*$/  username: System.get_env(\"DATA_DB_USER\"),/g;
s/^\s password.*$/  password: System.get_env(\"DATA_DB_PASS\"),/g;
s/^\s database.*$/  database: \"gonano\",/g;
s/^\s hostname.*$/  hostname: System.get_env(\"DATA_DB_HOST\"),/g;
" config/{dev.exs,test.exs,prod.secret.exs}

# Update prod.secret.exs with database hostname
sed -i "/database:.*$/a \  hostname: System.get_env(\"DATA_DB_HOST\")," config/prod.secret.exs

# Update prod.exs to listen on 8080
sed -i "/^config :app, AppWeb.Endpoint,/a \  http: [port: 8080]," config/prod.exs

# Remove comments and quickstart extra_step from the boxfile.yml
sed -i -e "
1,4d;
19,20d;
s/# - cd assets.*$/- cd assets \&\& npm install/g;
" boxfile.yml
