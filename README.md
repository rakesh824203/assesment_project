This project demonstrates how to perform web scraping using PHP and the cURL library. Below are the steps and instructions to set up and run the project.

Step 1 : Install and Set Up XAMPP:
            Download XAMPP.
            Install XAMPP and launch the Control Panel.
            Start the Apache and MySQL services.
Step 2 : Set Up the Project Files:
            create the assessment_project folder inside the htdocs directory of XAMPP and place
             the necessary files (config.php and index.php) in it.
                 xampp
                   └── htdocs
                         └── assessment_project
                                ├── config.php
                                └── index.php
Step 3 : Configure the Database:
           Open phpMyAdmin in your browser.
           Create a new database named rakesh.
Import the database file:
           Locate the database.sql file in the project directory.
           Click on Import in phpMyAdmin and upload the database.sql file.
Step 4 : Configure Project Settings:
           Open the config.php file in the project directory.
           Update the database credentials if necessary.
            define('DB_HOST', 'localhost');
            define('DB_NAME', 'rakesh');
            define('DB_USER', 'root');
            define('DB_PASS', '');
Step 5 : Start the Server    
            Open XAMPP Control Panel.
            Start Apache and MySQL.
            Open your web browser and navigate to:
               http://localhost/assesment_project/index.php
Additional Notes:
     Ensure your PHP installation has cURL enabled.
     







   
