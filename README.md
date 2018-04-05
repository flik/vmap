
## Installation

Apache rewrite module must be enable.

PDO and mysql and mysqli extentions must be enabled

Just clone the project in in your www or htdocs directory.

Go into laravel folder
Then you can install all dependencies via Composer by running this command:
```bash
composer install

```
Composer detail:
http://rapidsol.blogspot.com/2015/03/download-composerphar.html


# Setup Database

Create new db and import sql file which is in db folder.

Then modify .env file with database name, user and password of your mysql server
 
then run commands from your project root directory:
```bash

- php artisan config:clear
- php artisan cache:clear 
- php artisan view:clear
- php artisan key:generate


```

# Unit Testing 
Start your XWAMP or LAMP servers.

//all test are in ./laravel/tests/unit

Before run the app, run unit test command from laravel folder. 

```bash
./vendor/bin/phpunit
```
If tests are running perfectly without error then 

your backend is ready just open index.html in your browser.
