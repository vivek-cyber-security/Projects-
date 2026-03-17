---------------------------------------------RoyalBanquett-------------------------------------------------

Step 1: Install XAMPP and PostgreSQL

Before enabling PostgreSQL extensions in PHP, you need to install XAMPP and PostgreSQL on your system.

1. Install XAMPP
--> Download XAMPP from the official website: https://www.apachefriends.org
--> Run the installer and follow the on-screen instructions to install XAMPP.
--> Once installed, open the XAMPP Control Panel and start Apache and PHP services.

2. Install PostgreSQL

--> Download PostgreSQL from the official website: https://www.postgresql.org/download/
--> Run the installer and complete the installation process.

During installation, you will be asked to set a password for the PostgreSQL superuser (postgres)—remember this password.
After installation, open SQL Shell(psql) to manage your databases.

------------------------------------------****************************-------------------------------------------

Step 2: Enable PostgreSQL Extensions in PHP
--> XAMPP does not include PostgreSQL (pgsql) extensions by default, so you need to enable them manually.
--> Enable pgsql and pdo_pgsql Extensions
--> open the php.ini file located in your XAMPP installation folder (e.g., C:\xampp\php\php.ini).
--> Open the file in a text editor.
--> Find the following lines and remove the ; at the beginning to enable them:

extension=pgsql
extension=pdo_pgsql

--> Save the file and restart Apache from the XAMPP Control Panel to apply the changes.

---------------------------------*******************************------------------------------------------

Step 3: Copy Source Code to the htdocs Folder
After installing XAMPP and PostgreSQL and enabling the necessary extensions, follow these steps:

--> Extract the downloaded project zip file.
--> Locate the source code folder (e.g., RoyalBanquett).
--> Copy the entire folder.
--> Paste it into the htdocs directory of your XAMPP installation.
--> Default path: C:\xampp\htdocs\
--> Ensure all project files are correctly placed inside htdocs to be accessible via the browser.

################################################################################################################################

Step 4: Import the SQL File into PostgreSQL
After copying the source code to the htdocs folder, you need to set up the database in PostgreSQL. Follow these steps:

1. Open the PostgreSQL SQL Shell (psql)

--> Search for SQL Shell (psql) in the Start menu and open it.
--> Enter the following details when prompted:
--> Server: Press Enter (default: localhost)
--> Database: Create a database with name royaldb
--> Port: Press Enter (default: 5432)
--> Username: Enter your PostgreSQL username (default: postgres)
--> Password: Enter the password you set during installation

Import the SQL File
Locate the roayalbanquet.sql file inside the SQL folder of the extracted project.

--> Open the SQL Shell (psql)
--> Open the royalbanquet file and copy all the content
--> past inside Sql shell and hit enter

---------------------------------------*******************************------------------------------


Step 5: Run the Project
After setting up the database, follow these steps to run the Royalbanquett Management System:

Start XAMPP Services

--> Open the XAMPP Control Panel.
--> Start Apache to enable the PHP server.
--> Ensure PostgreSQL is Running
--> Open pgAdmin or SQL Shell (psql) and verify that the PostgreSQL server is running.

Open the Project in a Browser
Open your web browser and enter the following URL:
--> http://localhost/RoyalBanquett
--> Replace RoyalBanquett with your actual project folder name if it's different.

----------------------******************************----------------------------------


Admin Credential
Username: admin
Password: Test@123

User Credential
Username: anvi@gmail.com
Password: Anvi@123
Or Register a new user.