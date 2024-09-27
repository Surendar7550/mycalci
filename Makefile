# Makefile for Simple Calculator

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Werror

# Source files
SRC = calculator.c

# Output executable
OUT = calculator

# Default target
all: $(OUT)

# Build the executable
$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)

# Clean up build files
clean:
	rm -f $(OUT)

.PHONY: all clean

