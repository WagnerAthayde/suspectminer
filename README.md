# Suspect Miner

Simple tool to collect and process information of interest.

It uses Javascript to exchange information between client (any site with the mining.js Javascript library embedded) and server

For more information regarding the Javascript library please visit: https://github.com/WagnerAthayde/testingsite

## Installation

Git clone the application:

```console
git clone https://github.com/WagnerAthayde/suspectminer.git
```

Change to application directory:

```console
cd suspectminer
```

Run the following command to install dependencies:

```console
bundle install
```

Execute the database script

```console
rake db:migrate
```

## Running the application

Start HTTP web server:

```console
rails server
```

Access the address at any browser:

```console
http://localhost:3000/
```



