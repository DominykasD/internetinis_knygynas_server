# internetinis_knygynas_server
Server side for an Android app that is used for ordering books and getting them delivered to your address. Link to the app: https://github.com/DominykasD/internetinis-knygynas

## What does the server do?
From the app (client side) server gets a request to complete a add, delete, get or update operation. The server connects to the database completes the requested operation and returns a result (response) to the app.

## Set up
Steps for using the app the first time:
 1) Install XAMPP
 2) Run Apache, MySQL
 3) Open MySQL(phpMyAdmin) on localhost and import database using internetinis_knygynas.sql file
 4) Go to the xampp htdocs folder (default location: C:\xampp\htdocs), open the terminal and use git clone https://github.com/DominykasD/internetinis_knygynas_server.git command or paste the folder manually from GitHub.
 5) Follow the app client-side set up instructions, and run the app on Android Studio.


Steps for using the app next time and every other time:
 1) Open XAMPP and run Apache and Mysql
 2) Run the app on Android Studio

## Links
XAMPP: https://www.apachefriends.org/ <br>
App (client side): https://github.com/DominykasD/internetinis-knygynas <br>
App (server side): https://github.com/DominykasD/internetinis-knygynas-server <br>
