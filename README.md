
## Installation

Apache rewrite module must be enable.
Just clone the project in in your www or htdocs directory.

Then you can install all dependencies via Composer by running this command in your terminal in the root of your project:
```bash
composer install
```
Composer detail:
http://rapidsol.blogspot.com/2015/03/download-composerphar.html


# SETUP DATABASE
```bash 
install db in mysql from db folder. sql file is available here. then modify .env file for db name, user and pass
```

# UNIT TEST BEFORE RUN THE APP, IF IT WORKS THEN YOU CAN JUST OPEN INDEX.HTML
```bash
//all test are in ./laravel/tests/unit
./vendor/bin/phpunit
```

