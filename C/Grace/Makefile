CC = gcc
CFLAGS = -Wall -Wextra -Werror
TARGET = Grace
SOURCES = Grace.c
OBJ_DIR = build
OBJECTS = $(addprefix $(OBJ_DIR)/, $(SOURCES:.c=.o))
TMP_OUTPUT = tmp_$(TARGET)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET)

$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

run:
	@echo "Executing the run command as requested..."
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCES)
	@echo "Running $(TARGET) and comparing output with $(SOURCES)..."
	./$(TARGET)
	diff $(TARGET).c Grace_kid.c
	@echo "Verification successful: Output matches source code."

clean:
	$(RM) -r $(OBJ_DIR)

fclean: clean
	$(RM) $(TARGET)

re: fclean all

.PHONY: all clean fclean re run
