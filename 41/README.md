Start the Docker containers:



docker-compose up -d
This command will build and start all containers in detached mode.

Check the status of the containers:



docker-compose ps
Accessing the Application
Login Page: Access the login page at http://localhost or http://your_vps_ip.

Login Credentials:
Username: admin
Password: password
phpMyAdmin: Manage the database directly using phpMyAdmin at http://localhost:8080 or http://your_vps_ip:8080.

MySQL Credentials:
Username: root
Password: root_password
Adding Users via Command Line
To add a new user to the MySQL database:

Access the MySQL container:



docker exec -it lamp-docker-db-1 mysql -u root -p
Enter the MySQL root password: root_password.

Select the lamp_db database:



USE lamp_db;
Insert a new user:



INSERT INTO users (username, password) VALUES ('new_user', 'password123');
Verify the user was added:



SELECT * FROM users;
Stopping the Application
To stop the Docker containers, run:



docker-compose down
This will stop and remove the containers but keep the data in the mysql_data directory intact.

