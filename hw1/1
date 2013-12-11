/* 
 * File: hw1_lib.c
 * gcc -c hw1_lib.c -o hw1_lib.o
 * gcc -S hw1_lib.c -o hw1_lib.s
 * objdump -D hw1_lib.o
 */
#include "hw1_lib.h"

uint16_t gray_to_binary(uint16_t gray)
{
   	int i;
	uint16_t num1 = 32768;
	uint16_t num2 = 16384;

	uint16_t out16 = gray & num1;

	for(i = 14; i >= 0; i--)
	{

		if( ((out16 & num1)>>1)^(gray & num2) )
		{
			out16 = out16 | num2;
		}

		num1 = num1 >> 1;
		num2 = num2 >> 1;

	}
	gray = out16;
	return gray;
}

uint16_t binary_to_gray(uint16_t binary)
{
   	int i;
	uint16_t num1 = 32768;
	uint16_t num2 = 16384;

	uint16_t out16 = binary & num1;

	for(i = 14; i >= 0; i--)
	{

		if( ((binary & num1)>>1)^(binary & num2) )
		{
			out16 = out16 | num2;
		}

		num1 = num1 >> 1;
		num2 = num2 >> 1;

	}
	binary = out16;
	return binary;
}


