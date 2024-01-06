#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    // Check if a file name is provided in command line arguments
    if (argc != 2) {
        printf("Usage: %s <filename>\n", argv[0]);
        return 1; // Exit if file name is not provided
    }

    // Open the file for reading
    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        perror("Error opening file");
        return 1; // Exit if file cannot be opened
    }

    int num;
    const int threshold = 170;

    // Read integers from file, apply thresholding, and print them
    while (fscanf(file, "%d", &num) == 1) {
        if (num > threshold) {
            printf("255 ");
        } else {
            printf("0 ", num); // Print the original number if it's less than or equal to the threshold
        }
    }
    printf("\n");

    // Close the file
    fclose(file);

    return 0;
}