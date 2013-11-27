/*
 * circular_buffer_lib.h
 *
 *  Created on: Nov 20, 2013
 *      Author: dmai
 */

#ifndef CIRCULAR_BUFFER_LIB_H_
#define CIRCULAR_BUFFER_LIB_H_

/*
 * circular_buffer_lib.c
 *
 *  Created on: Nov 19, 2013
 *      Author: dmai
 */


/**< Circular Buffer Types */
typedef unsigned char INT8U;
typedef INT8U KeyType ;
typedef struct {
    INT8U writePointer ; /**< write pointer */
    INT8U readPointer ;  /**< read pointer */
    INT8U size;         /**< size of circular buffer */
    INT8U mask;         /**< bit Mask of circular buffer size*/
    KeyType keys[0];    /**< Element of circular buffer */
} CircularBuffer ;


inline int CircularBufferIsFull(CircularBuffer* que);

inline int CircularBufferIsEmpty(CircularBuffer* que);

inline void CircularBufferEnque(CircularBuffer* que, KeyType k);

inline void CircularBufferDeque(CircularBuffer* que, KeyType* pK);

inline void CircularBufferPrint(CircularBuffer* que);




#endif /* CIRCULAR_BUFFER_LIB_H_ */
