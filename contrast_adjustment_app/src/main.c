

#include <stdio.h>
#include "platform.h"
#include "xaxidma.h"
#include "xdohist.h"
#include "xdocontrast.h"
#include "xtmrctr.h"


#define SIZE_ARR (320*240)

//MEMORY USED BY DMA
#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)
//get a pointer to the TX and RX dma buffer (confiure DMA)
//the pointers are for 8-bit memory but theor addresses are 32 bit (u32)
unsigned char *m_dma_buffer_TX= (unsigned char*)TX_BUFFER_BASE;
unsigned char *m_dma_buffer_RX= (unsigned char*)RX_BUFFER_BASE;

unsigned int hist_sw[256];
unsigned char imgOut[SIZE_ARR];
unsigned char imgIn_HW[SIZE_ARR];

//address of BRAM controller in memory
unsigned int *hist_hw=(unsigned int *) 0x40000000;
XaxiDma axiDma;

int initDma()
{
	XAxiDma_Config *CfgPtr;
	CfgPtr=XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);
	XAxiDma_CfgInitialize(&axiDma,CfgPtr);

	//Disable Interrupts
	XAxiDma_IntrDisable(&axiDma,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axiDma,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);

	return XST_SUCCESS;

}

int initDoHistStretch()
{
	int status;

	XDocontrast_Config *doHistStretch_cfg;
	doHistStretch_cfg=XDocontrast_LookupConfig(XPAR_AXI_DOCONTRAST_0_DEVICE_ID);
	if(!doHistStretch_cfg)
	{
		printf("Error loading config for DOCNGTRAST\n");
	}

	status=XDocontrast_CfgInitialize(&doHistStretch,doHistStretch_cfg);
	if(status!=XST_SUCCESS)
	{
		printf("Error INITIALIAZING config for docntrast\n");
	}
	return status;
}

int initDoHist()
{
	int status;

	XDohist_Config *doHist_cfg;
	doHist_cfg=XDohist_LookupConfig(XPAR_AXI_DOHIST_0_DEVICE_ID);
	if(!doHist_cfg)
	{
		printf("Error loading config for dohist");
	}

	status=XDocontrast_CfgInitialize(&doHist,doHist_cfg);
	if(status!=XST_SUCCESS)
	{
		printf("Error INITIALIAZING config for dohist\n");
	}
	return status;
}


void doHistSW(unsigned char *img, unsigned int *hist)
{
	//reset histogram
	for(int idx=0; idx<256;idx++)
	{
		hist[idx]=0;
	}

	//calculate the histogram
	for(int idxImg=0; idxImg<(320*240);idxImg++)
	{
		hist[img[idxImg]]=hist[img[idxImg]]+1;
	}

}

void doHistStretchSW(unsigned char *imgIn, unsigned char *imgOut, unsigned char xMin, unsigned char xMax)
{
	float xMax_minus_xMin=xMax-xMin;
	for(int idxImg=0;idxImg<(320*240);idxImg++)
	{
		//calculate the histogram stretch
		float y_t_float=((imgIn[idxImg]-xMin)/(xMax_minus_xMin))*255;
		imgOut[idxImg]=y_t_float;

	}

}


int main()
{
    init_platform();
    initDoHistStretch();
    initDoHist();
    initDma();

    print("doing histogram\n\r");
    //supposed to start timer
    doHistSW(img,hist_sw);
    //supposed to stop timer
    //supposed to calculate elapsed time
    //print out elasped time


    //Get min value
    unsigned char xMin;
    for(int idxMin=0; idxMin<256;idxMin++)
    {
    	xMin=idxMin;
    	if(hist_sw[idxMin])
    	{
    		break;
    	}
    }

    //Get max value
        unsigned char xMin;
        for(int idxMin=255; idxMin>=0;idxMin--)
        {
        	xMax=idxMax;
        	if(hist_sw[idxMax])
        	{
        		break;
        	}
        }
        printf("(SW)xMin=%d xMax=%d\n",xMin,xMax);

        printf("doing hsitogram strectch SW");
        //start timer
        doHistStrectchSW(img,imgOut,xMin,xMax);
        //stop timer

        //sum the elaspsed time
        //print the elasped time

        //populate data- get image from the header and put on memory
        for(int idx=0;idx<SIZE_ARR;idx++)
        {
        	imgIn_HW[idx]=img[idx];
        }

        XDohist_Start(&doHist);
        //at this pt we dont care about the result of the stretch algorithm because we are still calculatin g the histogram

        XDocontrast_Set_xMin(&doHistStretch,0);
        XDocontrast_Set_xMax(&doHistStretch,255);
        XDocontrast_Start(&doHistStretch);

        //start timer
        //Dma transfer
        Xil_DCacheFlushRange((u32)imgIn_HW,SIZE_ARR*sizeof(unsigned char));
        Xil_DCacheFlushRange((u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char));

        XAxiDma_SimpleTransfer(&axiDma,(u32)imgIn_HW,SIZE_ARR*sizeof(unsigned char),XAXIDMA_DMA_TO_DEVICE);
        XAxiDma_SimpleTransfer(&axiDma,(u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char),XAXIDMA_DEVICE_TO_DMA);

        //WAIT FOR TRANSFER TO FINISH
        while(XAxiDma_Busy(&axiDma,XAXIDMA_DMA_TO_DEVICE));
        while(XAxiDma_Busy(&axiDma,XAXIDMA_DEVICE_TO_DMA));

        //invalidate the cache to avoid reading garbage
        Xil_DCacheInvalidateRange((u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char));
        //stop timer here
        //calculate elapsed time

        //get min
        for(int idxMin=0; idxMin<256;idxMin++)
          {
          	xMin=idxMin;
          	if(hist_hw[idxMin])
          	{
          		break;
          	}
          }

          //Get max value
              unsigned char xMin;
              for(int idxMin=255; idxMin>=0;idxMin--)
              {
              	xMax=idxMax;
              	if(hist_hw[idxMax])
              	{
              		break;
              	}
              }

              //print the max and min values

              //now calculate the histogram stretch
              XDohist_Start(&doHist);

              //now we pass the right values
               XDocontrast_Set_xMin(&doHistStretch,xMin);
               XDocontrast_Set_xMax(&doHistStretch,xMax);
               XDocontrast_Start(&doHistStretch);

                      //start timer
               //Dma transfer
               Xil_DCacheFlushRange((u32)imgIn_HW,SIZE_ARR*sizeof(unsigned char));
              Xil_DCacheFlushRange((u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char));

              XAxiDma_SimpleTransfer(&axiDma,(u32)imgIn_HW,SIZE_ARR*sizeof(unsigned char),XAXIDMA_DMA_TO_DEVICE);
              XAxiDma_SimpleTransfer(&axiDma,(u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char),XAXIDMA_DEVICE_TO_DMA);

                      //WAIT FOR TRANSFER TO FINISH
              while(XAxiDma_Busy(&axiDma,XAXIDMA_DMA_TO_DEVICE));
              while(XAxiDma_Busy(&axiDma,XAXIDMA_DEVICE_TO_DMA));

                      //invalidate the cache to avoid reading garbage
              Xil_DCacheInvalidateRange((u32)m_dma_buffer_RX,SIZE_ARR*sizeof(unsigned char));
                      //stop timer here

    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}
