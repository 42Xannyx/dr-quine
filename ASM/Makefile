COLLEEN = Colleen
COLLEEN_SRC = Colleen.s
COLLEEN_OBJ = $(COLLEEN_SRC:.s=.o)
COLLEEN_TMP_OUT = tmp_$(COLLEEN)

GRACE = Grace
GRACE_SRC = Grace.s
GRACE_OBJ = $(GRACE_SRC:.s=.o)

SULLY = Sully
SULLY_SRC = Sully.s
SULLY_OBJ = $(SULLY_SRC:.s=.o)

TARGETS = $(COLLEEN) $(GRACE) $(SULLY)

all: $(TARGETS)

$(GRACE): $(GRACE_OBJ)
	@echo "Linking executable $@..."
	$(CC) -o $@ $^

$(COLLEEN): $(COLLEEN_OBJ)
	@echo "Linking executable $@..."
	$(CC) -o $@ $^

$(COLLEEN): $(COLLEEN_OBJ)
	@echo "Linking executable $@..."
	$(CC) -o $@ $^

test-sully: $(SULLY)
	@echo "Testing $(SULLY)..."
	./$(SULLY)

test-colleen: $(COLLEEN)
	@echo "Testing $(COLLEEN)..."
	./$(COLLEEN) > $(COLLEEN_TMP_OUT)
	diff $(COLLEEN).s $(COLLEEN_TMP_OUT)
	$(RM) $(COLLEEN_TMP_OUT)

test-grace: $(GRACE)
	@echo "Testing $(GRACE)..."
	./$(GRACE)
	diff $(GRACE).s Grace_kid.s
	$(RM) Grace_kid.s

clean:
	@echo "Cleaning up..."
	$(RM) $(TARGETS) *.o $(COLLEEN_TMP_OUT)

.PHONY: all clean run-colleen test-colleen
