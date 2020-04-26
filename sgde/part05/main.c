#include <stdio.h>
#include <string.h>

void EchoInput(char *userInput)
{
	char buffer[20];
	strcpy(buffer, userInput);
	printf("\n\n%s\n\n", buffer);
}

int main(int argc, char **argv)
{
	if (argc != 2)
	{
		printf("1 (and only 1) arguments is requeried!\n\n");
		return 1;
	}
	EchoInput(argv[1]);
	return 0;
}
