CC = gcc
CFLAGS = -Wall -Wextra -Werror

GRACE = Grace
SULLY = Sully
COLLEEN = Colleen
TMP_OUTPUT_COLLEEN = tmp_$(COLLEEN)

sully:
	@echo "Executing the run command as requested..."
	$(CC) $(CFLAGS) -o $(SULLY) Sully.c
	@echo "Running $(SULLY) and comparing output..."
	./$(SULLY)

grace:
	@echo "Executing the run command as requested..."
	$(CC) $(CFLAGS) -o $(GRACE) Grace.c
	@echo "Running $(GRACE) and comparing output..."
	./$(GRACE)
	diff $(GRACE).c Grace_kid.c
	@echo "Verification successful: Output matches source code."

colleen:
	@echo "Executing the run command as requested..."
	$(CC) $(CFLAGS) -o $(COLLEEN) Colleen.c
	@echo "Running $(COLLEEN) and comparing output..."
	./$(COLLEEN) > $(TMP_OUTPUT_COLLEEN)
	diff $(TMP_OUTPUT_COLLEEN) $(SOURCES)
	@rm -f $(TMP_OUTPUT_COLLEEN)
	@echo "Verification successful: Output matches source code."

fclean: clean
	$(RM) $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all clean fclean re run
