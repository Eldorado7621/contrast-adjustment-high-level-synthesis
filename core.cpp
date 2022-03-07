
#include "core.h"

void doHist(hls::stream<uint_8_side_channel> &inStream, int histo[256])
{
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE s_axilite port=return bundle=ctrl_bus
#pragma HLS INTERFACE bram port=histo

	//initialize to zero before calculating the histogram
	for(int idyHist=0; idxHist<256; idxHist++)
	{
#pragma HLS PIPELINE
		histo[idxHist]=0;
	}

	//iterate on a stream of 320X240 image
	for(int idxPixel=0; idxPixel<(320*240);idxPixel++)
	{
		//read and cache (block here is FIFO is empty
		uint_8_side_channel currentPixelSideChannel=inStream.read();
		uint_8_side_channel dataOutSideChannel;

		//calculate the histogram
		histo[currentPixelSideChannel.data]+=1;

		//just copy from the input side channels
		/*dataOutSideChannel.data=currentPixelSideChannel.data;
		dataOutSideChannel.keep=currentPixelSideChannel.keep;
		dataOutSideChannel.strb=currentPixelSideChannel.strb;
		dataOutSideChannel.user=currentPixelSideChannel.user;
		dataOutSideChannel.last=currentPixelSideChannel.last;
		dataOutSideChannel.id=currentPixelSideChannel.id;
		dataOutSideChannel.dest=currentPixelSideChannel.dest;*/

	}

}
