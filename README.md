<html>
         <h1>🚗 Hire To Go Tours - Car Rental Web App 🚙<h1>

   Overview🔖

Hire To Go Tours is a web-based car rental application designed for customers to easily rent vehicles for their travel needs. This README file provides information on setting up and running the application on your local development environment using XAMPP.


Hire To Go Tours is a web-based car rental application designed for customers to easily rent vehicles for their travel needs. This README file provides information on setting up and running the application on your local development environment using XAMPP.


  Prerequisites🧠

Before you begin, ensure you have met the following requirements:
1.XAMPP installed on your local machine.
2.Basic knowledge of PHP, MySQL, and web development.

  Getting Started🧰
 
Clone the Repository
  bash code
git clone https://github.com/larsensong/hire-to-go-tours.git
Navigate to the Project Directory:    
 bash code
cd hire-to-go-tours

   Database Setup💻

Create a MySQL database for the application (hire_to_go_tours) using phpMyAdmin or any MySQL client.
Import the database schema from the database.sql file included in the project.
Configuration:

Open the config.php file in the project's root directory.

Update the database connection settings with your MySQL credentials:

 php
Example of code
define('DB_HOST', 'localhost');
define('DB_USER', 'your_db_username');
define('DB_PASS', 'your_db_password');
define('DB_NAME', 'hire_to_go_tours');

  Run the Application🏃

Start XAMPP and ensure that Apache and MySQL services are running.
Place the project folder in the htdocs directory of your XAMPP installation (e.g., C:\xampp\htdocs\hire-to-go-tours).
Open a web browser and navigate to http://localhost/hire-to-go-tours to access the application.


  Usage🖥️
Users can sign up for an account, log in, and browse available cars for rent.
Registered users can make reservations and manage their bookings.
Admins can log in and manage cars, reservations, and user accounts through the admin panel.
Contributing
We welcome contributions to improve this project. Feel free to submit issues or pull requests to help us make Hire To Go Tours better.

         License📰
This project is licensed under the MIT License.

</html>
