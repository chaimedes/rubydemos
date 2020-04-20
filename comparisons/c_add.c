#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
	FILE *file;
	char filename[32];
	char num_raw[6];
	char *residual;
	long sum;
	long num;

	file = fopen(argv[1], "r");

	if (file) {
		while (fgets(num_raw, 6, file) != NULL) {
			num = strtol(num_raw, &residual, 10);
			//printf("Current num: %li, current sum: %li\r\n", num, sum);
			sum += num;
		}
	}

	fclose(file);
	printf("%li\r\n", sum);
	return 0;
}
