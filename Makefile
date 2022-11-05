
install-deps:
	sudo apt-get install lua5.4 postgres luarocks
	echo "Set password for postgresql"
	sudo passwd postgres

start-postgres:
	sudo service postgresql start

postgres-shell:
	sudo -u postgres psql
