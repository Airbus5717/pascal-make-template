.PHONY: build

SRC = src/main.lpr
OUT = main

FPC = fpc
FPC_FLAGS = -O4

build: ./bin
	@$(FPC) $(FPC_FLAGS) $(SRC) -o./bin/$(OUT)

./bin:
	@mkdir -p ./bin

clean: 
	@rm -rf ./bin/*

