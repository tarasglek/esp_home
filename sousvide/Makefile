NOLOGS=

all:
	cp program-ota.yaml program.yaml
	$(MAKE) docker NOLOGS=--no-logs
	cp program-full.yaml program.yaml
	$(MAKE) docker

docker:
	docker run --rm -v "${PWD}":/config --net host --dns 192.168.1.1 -it esphome/esphome program.yaml run $(NOLOGS)
