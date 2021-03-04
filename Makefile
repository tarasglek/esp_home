NAME=$(shell basename $(CURDIR))
USB=--device=/dev/ttyUSB0
all:
	echo $(NAME)
	docker run $(USB) --rm -v "${PWD}"/..:/config --net host -it esphome/esphome -s name $(NAME) $(NAME)/program.yaml run
