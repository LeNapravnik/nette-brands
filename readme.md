Nette-brands
===================================

App for viewing list of brands. 

Brands can be added, edited, deleted, ordered by name ascending or descending.


Installation
------------

Set the database access data in the `config/local.neon` file:

```neon
database:
	dsn: 'mysql:host=127.0.0.1;dbname=nettebrands_db'
	user: ***
	password: ***
```

And create table in the database by importing the `db/structures/db.sql` file

For adding some starting data (brands) import the `db/data/dummy-data.sql` file

The simplest way to get started is to start the built-in PHP server in the root directory of your project:

```shell
php -S localhost:8000 www/index.php
```

Then visit `http://localhost:8000` in your browser to see the welcome page.

It requires PHP version 7.4 or newer.
