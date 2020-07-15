#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char** argv)
{
	char localStr[4096];
	printf("This program prints what the user inputs.\n");
	if (argc >1)
	{
		strcpy(localStr, argv[1]);
		printf(localStr);
	}

	return 0;
}
