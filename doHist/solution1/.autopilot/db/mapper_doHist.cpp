#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_inStream_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStream_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_inStream_V_data_V.dat");
unsigned int ap_apatb_inStream_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStream_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_inStream_V_keep_V.dat");
unsigned int ap_apatb_inStream_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStream_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_inStream_V_strb_V.dat");
unsigned int ap_apatb_inStream_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStream_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_inStream_V_user_V.dat");
unsigned int ap_apatb_inStream_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStream_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_inStream_V_last_V.dat");
unsigned int ap_apatb_inStream_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStream_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_inStream_V_id_V.dat");
unsigned int ap_apatb_inStream_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStream_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_inStream_V_dest_V.dat");
extern "C" void doHist(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int*);
extern "C" void apatb_doHist_hw(volatile void * __xlx_apatb_param_inStream_V_data_V, volatile void * __xlx_apatb_param_inStream_V_keep_V, volatile void * __xlx_apatb_param_inStream_V_strb_V, volatile void * __xlx_apatb_param_inStream_V_user_V, volatile void * __xlx_apatb_param_inStream_V_last_V, volatile void * __xlx_apatb_param_inStream_V_id_V, volatile void * __xlx_apatb_param_inStream_V_dest_V, volatile void * __xlx_apatb_param_histo) {
  // collect __xlx_inStream_V_data_V_tmp_vec
  unsigned __xlx_inStream_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_inStream_V_data_V_V_read_Size = __xlx_inStream_V_data_V_V_size_Reader.read_size();
  vector<char> __xlx_inStream_V_data_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_data_V)->empty() && __xlx_inStream_V_data_V_V_tmp_Count < __xlx_inStream_V_data_V_V_read_Size) {
    __xlx_inStream_V_data_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_data_V)->read());
    __xlx_inStream_V_data_V_V_tmp_Count++;
  }
  ap_apatb_inStream_V_data_V_cap_bc = __xlx_inStream_V_data_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStream_V_data_V_input_buffer= new char[__xlx_inStream_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStream_V_data_V_tmp_vec.size(); ++i) {
    __xlx_inStream_V_data_V_input_buffer[i] = __xlx_inStream_V_data_V_tmp_vec[i];
  }
  // collect __xlx_inStream_V_keep_V_tmp_vec
  unsigned __xlx_inStream_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_inStream_V_keep_V_V_read_Size = __xlx_inStream_V_keep_V_V_size_Reader.read_size();
  vector<char> __xlx_inStream_V_keep_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_keep_V)->empty() && __xlx_inStream_V_keep_V_V_tmp_Count < __xlx_inStream_V_keep_V_V_read_Size) {
    __xlx_inStream_V_keep_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_keep_V)->read());
    __xlx_inStream_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_inStream_V_keep_V_cap_bc = __xlx_inStream_V_keep_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStream_V_keep_V_input_buffer= new char[__xlx_inStream_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStream_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_inStream_V_keep_V_input_buffer[i] = __xlx_inStream_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_inStream_V_strb_V_tmp_vec
  unsigned __xlx_inStream_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_inStream_V_strb_V_V_read_Size = __xlx_inStream_V_strb_V_V_size_Reader.read_size();
  vector<char> __xlx_inStream_V_strb_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_strb_V)->empty() && __xlx_inStream_V_strb_V_V_tmp_Count < __xlx_inStream_V_strb_V_V_read_Size) {
    __xlx_inStream_V_strb_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_strb_V)->read());
    __xlx_inStream_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_inStream_V_strb_V_cap_bc = __xlx_inStream_V_strb_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStream_V_strb_V_input_buffer= new char[__xlx_inStream_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStream_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_inStream_V_strb_V_input_buffer[i] = __xlx_inStream_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_inStream_V_user_V_tmp_vec
  unsigned __xlx_inStream_V_user_V_V_tmp_Count = 0;
  unsigned __xlx_inStream_V_user_V_V_read_Size = __xlx_inStream_V_user_V_V_size_Reader.read_size();
  vector<char> __xlx_inStream_V_user_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_user_V)->empty() && __xlx_inStream_V_user_V_V_tmp_Count < __xlx_inStream_V_user_V_V_read_Size) {
    __xlx_inStream_V_user_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_user_V)->read());
    __xlx_inStream_V_user_V_V_tmp_Count++;
  }
  ap_apatb_inStream_V_user_V_cap_bc = __xlx_inStream_V_user_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStream_V_user_V_input_buffer= new char[__xlx_inStream_V_user_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStream_V_user_V_tmp_vec.size(); ++i) {
    __xlx_inStream_V_user_V_input_buffer[i] = __xlx_inStream_V_user_V_tmp_vec[i];
  }
  // collect __xlx_inStream_V_last_V_tmp_vec
  unsigned __xlx_inStream_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_inStream_V_last_V_V_read_Size = __xlx_inStream_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_inStream_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_last_V)->empty() && __xlx_inStream_V_last_V_V_tmp_Count < __xlx_inStream_V_last_V_V_read_Size) {
    __xlx_inStream_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_last_V)->read());
    __xlx_inStream_V_last_V_V_tmp_Count++;
  }
  ap_apatb_inStream_V_last_V_cap_bc = __xlx_inStream_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStream_V_last_V_input_buffer= new char[__xlx_inStream_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStream_V_last_V_tmp_vec.size(); ++i) {
    __xlx_inStream_V_last_V_input_buffer[i] = __xlx_inStream_V_last_V_tmp_vec[i];
  }
  // collect __xlx_inStream_V_id_V_tmp_vec
  unsigned __xlx_inStream_V_id_V_V_tmp_Count = 0;
  unsigned __xlx_inStream_V_id_V_V_read_Size = __xlx_inStream_V_id_V_V_size_Reader.read_size();
  vector<char> __xlx_inStream_V_id_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_id_V)->empty() && __xlx_inStream_V_id_V_V_tmp_Count < __xlx_inStream_V_id_V_V_read_Size) {
    __xlx_inStream_V_id_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_id_V)->read());
    __xlx_inStream_V_id_V_V_tmp_Count++;
  }
  ap_apatb_inStream_V_id_V_cap_bc = __xlx_inStream_V_id_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStream_V_id_V_input_buffer= new char[__xlx_inStream_V_id_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStream_V_id_V_tmp_vec.size(); ++i) {
    __xlx_inStream_V_id_V_input_buffer[i] = __xlx_inStream_V_id_V_tmp_vec[i];
  }
  // collect __xlx_inStream_V_dest_V_tmp_vec
  unsigned __xlx_inStream_V_dest_V_V_tmp_Count = 0;
  unsigned __xlx_inStream_V_dest_V_V_read_Size = __xlx_inStream_V_dest_V_V_size_Reader.read_size();
  vector<char> __xlx_inStream_V_dest_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_dest_V)->empty() && __xlx_inStream_V_dest_V_V_tmp_Count < __xlx_inStream_V_dest_V_V_read_Size) {
    __xlx_inStream_V_dest_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_dest_V)->read());
    __xlx_inStream_V_dest_V_V_tmp_Count++;
  }
  ap_apatb_inStream_V_dest_V_cap_bc = __xlx_inStream_V_dest_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStream_V_dest_V_input_buffer= new char[__xlx_inStream_V_dest_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStream_V_dest_V_tmp_vec.size(); ++i) {
    __xlx_inStream_V_dest_V_input_buffer[i] = __xlx_inStream_V_dest_V_tmp_vec[i];
  }
  // Collect __xlx_histo__tmp_vec
  vector<sc_bv<32> >__xlx_histo__tmp_vec;
  for (int j = 0, e = 256; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_histo)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_histo)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_histo)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_histo)[j*4+3];
    __xlx_histo__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_histo = 256;
  int __xlx_offset_param_histo = 0;
  int __xlx_offset_byte_param_histo = 0*4;
  int* __xlx_histo__input_buffer= new int[__xlx_histo__tmp_vec.size()];
  for (int i = 0; i < __xlx_histo__tmp_vec.size(); ++i) {
    __xlx_histo__input_buffer[i] = __xlx_histo__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  doHist(__xlx_inStream_V_data_V_input_buffer, __xlx_inStream_V_keep_V_input_buffer, __xlx_inStream_V_strb_V_input_buffer, __xlx_inStream_V_user_V_input_buffer, __xlx_inStream_V_last_V_input_buffer, __xlx_inStream_V_id_V_input_buffer, __xlx_inStream_V_dest_V_input_buffer, __xlx_histo__input_buffer);
// print __xlx_apatb_param_histo
  sc_bv<32>*__xlx_histo_output_buffer = new sc_bv<32>[__xlx_size_param_histo];
  for (int i = 0; i < __xlx_size_param_histo; ++i) {
    __xlx_histo_output_buffer[i] = __xlx_histo__input_buffer[i+__xlx_offset_param_histo];
  }
  for (int i = 0; i < __xlx_size_param_histo; ++i) {
    ((char*)__xlx_apatb_param_histo)[i*4+0] = __xlx_histo_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_histo)[i*4+1] = __xlx_histo_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_histo)[i*4+2] = __xlx_histo_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_histo)[i*4+3] = __xlx_histo_output_buffer[i].range(31, 24).to_uint();
  }
}
