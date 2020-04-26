#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
	int counter = 10;

	while (counter--)
	{
		printf("%d\n", counter);
	}

	if (strcmp(argv[1], "1234") == 0)
	{
		printf("Got it!\n\n");
	}
	else
	{
		printf("Nope!\n\n");
	}

	return 0;
}

