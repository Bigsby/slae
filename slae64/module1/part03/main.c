#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
	char *pass = "password";

	if (strcmp(argv[1], pass) == 0)
	{
		printf("Password correct");
	}
	else
	{
		printf("Wrong password");
	}

	return 0;
}
