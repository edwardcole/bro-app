
install-deps:
	sudo apt-get install lua5.4 postgres luarocks
	sudo luarocks install xavante
	sudo luarocks install wsapi-xavante
	echo "Set password for postgresql"
	sudo passwd postgres

start-postgres:
	sudo service postgresql start

postgres-shell:
	sudo -u postgres psql
