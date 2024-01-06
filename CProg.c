#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    // Check if there are command line arguments
    if (argc <= 1) {
        printf("No elements provided in command line.\n");
        return 1; // Exit if no arguments are given
    }

    // Dynamically allocate memory to store the integer values
    int *numbers = malloc((argc - 1) * sizeof(int));
    if (numbers == NULL) {
        printf("Memory allocation failed.\n");
        return 1; // Exit if memory allocation fails
    }

    // Read elements from command line and convert to integers
    for (int i = 1; i < argc; i++) {
        numbers[i - 1] = atoi(argv[i]);
    }

    // Increment each element by 1 and print
    printf("Incremented numbers: ");
    for (int i = 0; i < argc - 1; i++) {
        numbers[i]++;
        printf("%d ", numbers[i]);
    }
    printf("\n");

    // Free dynamically allocated memory
    free(numbers);

    return 0;
}