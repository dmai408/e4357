/*
 ============================================================================
 Name        : homework3.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include "circular_buffer_lib.h"

int main(void) {
	int i;
	int queSize = 16;
	CircularBuffer *que =
			(CircularBuffer *)malloc(sizeof(CircularBuffer) + queSize);
	que->size = queSize;
	que->readPointer = 0;
	que->writePointer = 0;
	que->mask = queSize-1;

	for(i = 2; i < 24; i++)
		CircularBufferEnque(que, i);

	if(CircularBufferIsFull(que))
		printf("Buffer full \n");
	else
		printf("Buffer not full \n");

	printf("\n!!!De-queuing !!!\n");
	CircularBufferPrint(que);

	free(que);
	return EXIT_SUCCESS;
}
