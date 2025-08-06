COLLEEN = Colleen
COLLEEN_SRC = Colleen.s
COLLEEN_OBJ = $(COLLEEN_SRC:.s=.o)
COLLEEN_TMP_OUT = tmp_$(COLLEEN)

TARGETS = $(COLLEEN)

all: $(TARGETS)

$(COLLEEN): $(COLLEEN_OBJ)
	@echo "Linking executable $@..."
	$(CC) -o $@ $^

test-colleen: $(COLLEEN)
	@echo "Testing $(COLLEEN)..."
	./$(COLLEEN) > $(COLLEEN_TMP_OUT)
	diff $(COLLEEN).s $(COLLEEN_TMP_OUT)
	$(RM) $(COLLEEN_TMP_OUT)

clean:
	@echo "Cleaning up..."
	$(RM) $(TARGETS) *.o $(COLLEEN_TMP_OUT)

.PHONY: all clean run-colleen test-colleen
