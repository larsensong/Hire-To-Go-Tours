          🚗 Hire To Go Tours - Car Rental Web App 🚙

  Overview🔖

Hire To Go Tours is a web-based car rental application designed for customers to easily rent vehicles for their travel needs. This README file provides information on setting up and running the application on your local development environment using XAMPP.

  Prerequisites🧠
Before you begin, ensure you have met the following requirements:

1.XAMPP installed on your local machine.
2.Basic knowledge of PHP, MySQL, and web development.

  Getting Started🧰
Clone the Repository:
  bash
Copy code
git clone https://github.com/larsensong/hire-to-go-tours.git
Navigate to the Project Directory:

  bash
Copy code
cd hire-to-go-tours

  Database Setup💻

Create a MySQL database for the application (hire_to_go_tours) using phpMyAdmin or any MySQL client.
Import the database schema from the database.sql file included in the project.
Configuration:

Open the config.php file in the project's root directory.

Update the database connection settings with your MySQL credentials:

php
Copy code
define('DB_HOST', 'localhost');
define('DB_USER', 'your_db_username');
define('DB_PASS', 'your_db_password');
define('DB_NAME', 'hire_to_go_tours');

  Run the Application🏃

Start XAMPP and ensure that Apache and MySQL services are running.
Place the project folder in the htdocs directory of your XAMPP installation (e.g., C:\xampp\htdocs\hire-to-go-tours).
Open a web browser and navigate to http://localhost/hire-to-go-tours to access the application.


  Usage
Users can sign up for an account, log in, and browse available cars for rent.
Registered users can make reservations and manage their bookings.
Admins can log in and manage cars, reservations, and user accounts through the admin panel.
Contributing
We welcome contributions to improve this project. Feel free to submit issues or pull requests to help us make Hire To Go Tours better.

License📰
This project is licensed under the MIT License.



Photo by Zsolt Joo: https://www.pexels.com/photo/white-jeep-wrangler-on-asphalt-road-2882234/
Photo by Thuany Marcante: https://www.pexels.com/photo/red-and-black-ford-mustang-1805053/
Photo by Matheus Bertelli: https://www.pexels.com/photo/forced-perspective-photography-of-cars-running-on-road-below-smartphone-799443/]
Photo by Trace Constant: https://www.pexels.com/photo/photo-of-white-bmw-e46-707046/
Photo by Tom Fisk: https://www.pexels.com/photo/top-view-photo-of-junkyard-1615548/
Photo by Kampus Production: https://www.pexels.com/photo/white-van-on-brown-dirt-road-7476889/

Photo by Lukas Žvikas: https://www.pexels.com/photo/person-laying-in-front-of-silver-sedan-1075947/
Photo by Pixabay: https://www.pexels.com/photo/close-up-of-electric-lamp-against-black-background-248747/
