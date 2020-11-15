NAME=$(shell basename $(CURDIR))
all:
	echo $(NAME)
	docker run --rm -v "${PWD}"/..:/config --net host -it esphome/esphome -s name $(NAME) $(NAME)/program.yaml run
