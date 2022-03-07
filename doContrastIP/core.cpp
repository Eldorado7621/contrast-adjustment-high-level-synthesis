

#include "core.h"

void doContrast(hls::stream<uint_8_side_channel> &inStream,hls::stream<uint_8_side_channel> &outStream,unsigned char xMin, unsigned char xMax)
{


#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE s_axilite port=return bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite port=xMin bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite port=xMax bundle=ctrl_bus


	float histRange=xMax-xMin;
	//iterate on a stream of 320X240 image
		for(int idxPixel=0; idxPixel<(320*240);idxPixel++)
		{
#pragma HLS PIPELINE

			//read and cache (block here is FIFO is empty
			uint_8_side_channel currentPixelSideChannel=inStream.read();
			uint_8_side_channel dataOutSideChannel;

			unsigned char x_t=currentPixelSideChannel.data;

			//calculate the histogram stretch
			float y_t_float=((x_t-xMin)/(histRange))*255;

			unsigned char y_t=y_t_float;
			//just copy from the input side channels
			dataOutSideChannel.data=y_t;
			dataOutSideChannel.keep=currentPixelSideChannel.keep;
			dataOutSideChannel.strb=currentPixelSideChannel.strb;
			dataOutSideChannel.user=currentPixelSideChannel.user;
			dataOutSideChannel.last=currentPixelSideChannel.last;
			dataOutSideChannel.id=currentPixelSideChannel.id;
			dataOutSideChannel.dest=currentPixelSideChannel.dest;

			//send to the stream
			outStream.write(dataOutSideChannel);

		}
}
