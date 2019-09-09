TEMPFILE := $(shell mktemp -u)

all: ldap_replication.png cluster.png

%.png : %.dot
	dot -Tpng $< -o $@

clean:
	rm *.png
