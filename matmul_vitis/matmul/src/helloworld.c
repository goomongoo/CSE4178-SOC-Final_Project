/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

/*******************************************************************************/
/*                                                                             */
/* Description:                                                                */
/* This program performs 4x4 matrix multiplication using AXI-Lite interface.   */
/* It configures and sends matrix A and matrix B data to the hardware module,  */
/* retrieves the result, and prints it. It also checks for input out-of-range  */
/* warnings and overflow conditions.                                           */
/*                                                                             */
/*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xuartps.h"
#include "xuartps_hw.h"

// Register offsets for matrix A and B
#define A_R0_Reg 0x0
#define A_R1_Reg 0x4
#define A_R2_Reg 0x8
#define A_R3_Reg 0xC
#define B_R0_Reg 0x10
#define B_R1_Reg 0x14
#define B_R2_Reg 0x18
#define B_R3_Reg 0x1C

// Base address for result registers
#define RESULT_BASEADDR 0xA0000400

static void input_row(unsigned int *row)
{
	int input;
	bool warning_flag = false;

	*row = 0;

	for (int i = 0; i < 4; i++)
	{
		scanf("%d", &input);
		printf("%d ", input);

		if (input < -128 || input > 127)
			warning_flag = true;

		*row |= ((unsigned int)(int8_t)input) << (8 * i); // Pack into row
	}
	printf("\n");

	if (warning_flag)
		printf("Warning: Some of input values out of range (-128 to 127). May not get intended result.\n");
}

static void print_result()
{
	unsigned int result_flat[8];
	int16_t result[4][4];
	bool overflow;

	// Read result data and overflow flag from hardware
	for (int i = 0; i < 8; i++)
		result_flat[i] = *(volatile unsigned int *)(RESULT_BASEADDR + (4 * i));

	overflow = (bool)*(volatile unsigned int *)(RESULT_BASEADDR + 32);

	// Unpack the 4x4 matrix from the flat result data
	for (int i = 0; i < 8; i++)
	{
		result[i / 2][(i % 2) * 2] = (int16_t)(result_flat[i] >> 16);
		result[i / 2][(i % 2) * 2 + 1] = (int16_t)(result_flat[i] & 0xFFFF);
	}

	printf("\n-- Result --\n");

	if (overflow == true)
		printf("Overflow Detected! May not show intended result.\n");

	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4; j++)
			printf("%05d ", (int)result[i][j]);
		printf("\n");
	}
	printf("\n");
}

static void ConfigMatMul(unsigned int *A, unsigned int *B)
{
	// Write matrix A data to hardware
	Xil_Out32((XPAR_AXI_LITE_TEMPLATE_TOP_0_BASEADDR+A_R0_Reg), A[0]);
	Xil_Out32((XPAR_AXI_LITE_TEMPLATE_TOP_0_BASEADDR+A_R1_Reg), A[1]);
	Xil_Out32((XPAR_AXI_LITE_TEMPLATE_TOP_0_BASEADDR+A_R2_Reg), A[2]);
	Xil_Out32((XPAR_AXI_LITE_TEMPLATE_TOP_0_BASEADDR+A_R3_Reg), A[3]);

	// Write matrix B data to hardware
	Xil_Out32((XPAR_AXI_LITE_TEMPLATE_TOP_0_BASEADDR+B_R0_Reg), B[0]);
	Xil_Out32((XPAR_AXI_LITE_TEMPLATE_TOP_0_BASEADDR+B_R1_Reg), B[1]);
	Xil_Out32((XPAR_AXI_LITE_TEMPLATE_TOP_0_BASEADDR+B_R2_Reg), B[2]);
	Xil_Out32((XPAR_AXI_LITE_TEMPLATE_TOP_0_BASEADDR+B_R3_Reg), B[3]);
}

int main()
{
    init_platform();

    unsigned int A[4]; // Array to store packed rows of matrix A
    unsigned int B[4]; // Array to store packed rows of matrix B

    while (1)
    {
    	printf("######## 4x4 Matrix Multiplication (A x B = C) ########\n");
    	printf("-- If you want to input matrices smaller than 4x4, please use zero padding. --\n\n");

    	printf("Please input values of matrix A\n");
    	printf("Enter the elements of 0th row of matrix A : ");
    	input_row(&A[0]);
    	printf("Enter the elements of 1st row of matrix A : ");
    	input_row(&A[1]);
    	printf("Enter the elements of 2nd row of matrix A : ");
    	input_row(&A[2]);
    	printf("Enter the elements of 3rd row of matrix A : ");
    	input_row(&A[3]);

    	printf("Please input values of matrix B\n");
    	printf("Enter the elements of 0th row of matrix B : ");
    	input_row(&B[0]);
    	printf("Enter the elements of 1st row of matrix B : ");
    	input_row(&B[1]);
    	printf("Enter the elements of 2nd row of matrix B : ");
    	input_row(&B[2]);
    	printf("Enter the elements of 3rd row of matrix B : ");
    	input_row(&B[3]);

    	ConfigMatMul(A, B);
    	print_result();
    	sleep(2);
    }

    cleanup_platform();
    return 0;
}
