NOLOGS=
MODE=run
FILE=program.yaml

all:
	$(MAKE) docker FILE=program-full.yaml MODE=config > /dev/null
	$(MAKE) docker NOLOGS=--no-logs FILE=program-ota.yaml
	$(MAKE) docker FILE=program-full.yaml

docker:
	docker run --rm -v "${PWD}":/config --net host --dns 192.168.1.1 -it esphome/esphome $(FILE) $(MODE) $(NOLOGS)
