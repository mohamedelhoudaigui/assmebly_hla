# Makefile for assembling and linking an assembly program

# The assembler and linker commands
AS = nasm
LD = ld

# The assembler flags
ASFLAGS = -f elf

# The linker flags
LDFLAGS = -o

# The target executable
TARGET = hello

# The source and object files
SRC = test.asm
OBJ = $(SRC:.asm=.o)

# Default target
all: $(TARGET)

# Rule to assemble the source file into an object file
$(OBJ): $(SRC)
	$(AS) $(ASFLAGS) -o $(OBJ) $(SRC)

# Rule to link the object file into an executable
$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) $(TARGET) $(OBJ)

# Clean up build files
clean:
	rm -f $(OBJ) $(TARGET)
