all:
	cp ../secrets.yaml .
	docker run --rm -v "${PWD}":/config --net host --dns 192.168.1.1 -it esphome/esphome poolpump.yaml run
	rm -f secrets.yaml