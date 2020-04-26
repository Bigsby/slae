#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void UnlockSecret(void)
{
	printf("The secret is 42\n\n\n");
}

int IsPasswordCorrect(char *userInput, char *password)
{
	int result;
	result = strcmp(userInput, password);

	if (result == 0)
	{
		return 1;
	}
	return 0;
}

int main(int argc, char **argv)
{
	int checkPass = 0;

	if (argc < 2)
	{
		printf("Usage:\n\n");
		printf("%s <password>\n\n", argv[0]);
		return 1;
	}

	checkPass = IsPasswordCorrect(argv[1], "\x09\x01\x02\x03");
	if (checkPass == 1)
	{
		UnlockSecret();
	}
	else
	{
		printf("\n\nPassword incorrect! Try again!\n\n");
	}

	return 0;
}
