.PHONY: build

SRC = src/*.pas
OUT = main

FPC = fpc
FPC_FLAGS = -O4

build: ./bin
	@$(FPC) $(FPC_FLAGS) $(SRC) -o./bin/$(OUT)

./bin:
	@mkdir -p ./bin

clean: clean_obj
	@rm -rf ./bin/$(OUT)

clean_obj:
	@rm -rf ./bin/*.o
