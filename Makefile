# Makefile for assembling and linking a 64-bit assembly program

# The assembler and linker commands
AS = nasm
LD = ld

# The assembler flags
ASFLAGS = -f elf64

# The linker flags
LDFLAGS = -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2

# The target executable
TARGET = main

# The source and object files
SRC = ft_strdup.s
OBJ = $(SRC:.s=.o)

# Default target
all: $(TARGET)

# Rule to assemble the source file into an object file
$(OBJ): $(SRC)
	$(AS) $(ASFLAGS) -o $(OBJ) $(SRC)

# Rule to link the object file into an executable
$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) -o $(TARGET) $(OBJ) -e _start

# Clean up build files
clean:
	rm -f $(OBJ) $(TARGET)

re: clean all
