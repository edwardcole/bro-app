
install-deps:
	sudo apt-get install lua5.4 postgres luarocks libpq-dev
	sudo lua rocks install luapgsql
    sudo luarocks install luapgsql PQ_INCDIR=/usr/include/postgresql
	sudo luarocks install xavante
	sudo luarocks install wsapi-xavante

setup-postgres:	
	echo "Set password for postgresql"
	sudo passwd postgres

start-postgres:
	sudo service postgresql start

postgres-shell:
	sudo -u postgres psql

