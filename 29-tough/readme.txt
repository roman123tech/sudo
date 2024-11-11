MediaWiki Setup with Docker
Create a new directory and navigate to it:

bash
Copy code
mkdir media-docker
cd media-docker
Paste the provided docker-compose.yml file into this directory.

Run the containers in the background:

bash
Copy code
docker-compose up -d
Open your browser and go to http://localhost:8080. Click on "continue to setup the wiki first."

In your terminal, check the running containers:

bash
Copy code
docker ps
Note the ID of the MySQL container, then run:

bash
Copy code
docker inspect <MySql container ID>
Scroll down to find and note the MySQL container's IP address (not the gateway IP).

Return to the MediaWiki setup page and enter the following details:

Hostname: <your_mysql_container_ip>:3306
Database Name: wiki_db
Database Prefix: wiki_db
Username: root
Password: root
Continue with the setup steps until you reach the page with the "Download LocalSettings.php" option. Download the file.

Open a terminal in the directory containing the downloaded LocalSettings.php file.

Use docker ps to find the name of the MediaWiki container (typically something like media-docker-mediawiki-1).

Copy LocalSettings.php into the MediaWiki container:

bash
Copy code
docker cp LocalSettings.php <your media wiki container name>:/var/www/html/
Go back to http://localhost:8080 and refresh. You should now see the main MediaWiki page.

Log in using the credentials you set up earlier. Click on "Log in," enter your credentials, and submit.

After logging in, go to the top-right corner, click on "Edit," make any desired edits, and click "Save Changes."

Reference article:
https://medium.com/@1993Tikku/deploying-mediawiki-mysql-using-docker-32a0626550f7
