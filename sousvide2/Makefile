NAME=$(shell basename $(CURDIR))
USB=--device=/dev/ttyUSB0
all:
	echo $(NAME)
	# docker run  --device=/dev/ttyUSB0 --rm -v "${PWD}"/..:/config --net host -it esphome/esphome -s name $(NAME) $(NAME)/program.yaml  run 
	docker run  $(USB) --rm -v "${PWD}"/..:/config --net host -it esphome/esphome -s name $(NAME) $(NAME)/program.yaml  run 
