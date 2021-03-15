NAME=$(shell basename $(CURDIR))
USB=$(shell test -c /dev/ttyUSB0 && echo --device=/dev/ttyUSB0)
all:
	echo $(NAME)
	echo $(USB)
	# docker run  --device=/dev/ttyUSB0 --rm -v "${PWD}"/..:/config --net host -it esphome/esphome -s name $(NAME) $(NAME)/program.yaml  run 
	docker run  $(USB) --rm -v "${PWD}"/..:/config --net host -it esphome/esphome -s name $(NAME) $(NAME)/program.yaml  run --upload-port $(NAME)
