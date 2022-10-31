#include <stdio.h>

int main(int argc, char *argv[])
{
	FILE *fp;
	char *filename = argv[1];
	char ch;

	// Open file in read-only mode
	fp = fopen(filename, "r");
	// If file opened successfully, then print the contents
	if (fp) {
		while ((ch = fgetc(fp)) != EOF) {
			printf("%c", ch);
		}
	}

	return (0);
}