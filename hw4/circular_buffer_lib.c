/*
 * circular_buffer_lib.c
 *
 *  Created on: Nov 19, 2013
 *      Author: dmai
 */

#include "circular_buffer_lib.h"

inline int CircularBufferIsFull(CircularBuffer* que)
{
	return ( que->readPointer - ((que->writePointer) & que->mask) == 1);
}

inline int CircularBufferIsEmpty(CircularBuffer* que)
{
	return (((que->writePointer) & que->mask) == (que->readPointer));
}

inline void CircularBufferEnque(CircularBuffer* que, KeyType k)
{
	que->keys[(que->writePointer++) & que->mask] = k;

	if(((que->writePointer) & que->mask) == (que->readPointer))
		que->readPointer++;
}

inline void CircularBufferDeque(CircularBuffer* que, KeyType* pK)
{
	*pK = que->keys[que->readPointer];
	que->readPointer = (que->readPointer + 1) % que->size;
}

inline void CircularBufferPrint(CircularBuffer* que)
{
	KeyType key;
	if(!CircularBufferIsEmpty(que))
	{
		while(!CircularBufferIsEmpty(que))
		{
			CircularBufferDeque(que, &key);
			printf("%d \n", key);

		}
		CircularBufferDeque(que, &key);
		printf("%d \n", key);
	}

}


