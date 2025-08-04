CC = gcc
CFLAGS = -Wall -Wextra -Werror

GRACE = Grace
SULLY = Sully
COLLEEN = Colleen
TMP_OUTPUT_COLLEEN = tmp_$(COLLEEN)

all: sully grace colleen

sully:
	$(CC) $(CFLAGS) -o $(SULLY) Sully.c
	@echo "Running $(SULLY)..."
	./$(SULLY)

grace:
	$(CC) $(CFLAGS) -o $(GRACE) Grace.c
	@echo "Running $(GRACE) and comparing output..."
	./$(GRACE)
	diff $(GRACE).c Grace_kid.c
	@echo "Verification successful: Output matches source code."

colleen:
	$(CC) $(CFLAGS) -o $(COLLEEN) Colleen.c
	@echo "Running $(COLLEEN) and comparing output..."
	./$(COLLEEN) > $(TMP_OUTPUT_COLLEEN)
	diff $(TMP_OUTPUT_COLLEEN) Colleen.c
	@rm -f $(TMP_OUTPUT_COLLEEN)
	@echo "Verification successful: Output matches source code."

fclean: clean
	$(RM) $(COLLEEN) $(GRACE) $(SULLY)
	$(RM) Sully_5.c Sully_4.c Sully_3.c Sully_2.c Sully_1.c Sully_0.c
	$(RM) Sully_5 Sully_4 Sully_3 Sully_2 Sully_1 Sully_0
	$(RM) Grace_kid.c

re: fclean all

.PHONY: all clean fclean re run
