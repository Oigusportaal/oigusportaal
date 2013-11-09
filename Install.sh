echo Beginning installing neccessary programs and services.

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java7-set-default
sudo apt-get install maven git tomcat7 postgresql

echo Cloning Oigusportaal\'s repository
# Clone repository
git clone https://github.com/Oigusportaal/oigusportaal.git
cd oigusportaal

echo Packaging app
# Package app
mvn package -DskipTests

echo Adding app to Webapps folder
# Add it to Webapps folder
sudo cp target/portaal-3.0.war /var/lib/tomcat7/webapps/oigusportaal.war

echo Making changes to database and adding data
# Alter postgresql
sudo -u postgres createdb lawportal
sudo -u postgres psql lawportal << EOF
alter user postgres with password '1234Abcd';
EOF
sudo -u postgres psql lawportal < WebContent/DB/lawportal.sql
sudo cp Install/pg_hba.conf /etc/postgresql/9.1/main/pg_hba.conf

echo Starting services
# Start Tomcat and postgresql
sudo service tomcat7 start
sudo service postgresql start

echo Install succeeded
echo Open your favorite web browser at "localhost://8080/oigusportaal"



