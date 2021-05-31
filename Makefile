NAME=$(shell basename $(CURDIR))
USB=$(shell test -c /dev/ttyUSB0 && echo --device=/dev/ttyUSB0)
UPLOAD_PORT=$(shell test -c /dev/ttyUSB0 && echo /dev/ttyUSB0 || echo $(NAME))
PROGRAM=program.yaml
all:
	echo $(NAME)
	echo $(USB)
	# docker run  --device=/dev/ttyUSB0 --rm -v "${PWD}"/..:/config --net host -it esphome/esphome -s name $(NAME) $(NAME)/program.yaml  run 
	docker run  $(USB) --rm -v "${PWD}"/..:/config --net host -it esphome/esphome -s name $(NAME) $(NAME)/$(PROGRAM)  run --upload-port $(UPLOAD_PORT)
