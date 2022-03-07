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
unsigned int ap_apatb_outStream_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStream_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_outStream_V_data_V.dat");
unsigned int ap_apatb_outStream_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStream_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_outStream_V_keep_V.dat");
unsigned int ap_apatb_outStream_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStream_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_outStream_V_strb_V.dat");
unsigned int ap_apatb_outStream_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStream_V_user_V_V_size_Reader("../tv/stream_size/stream_size_out_outStream_V_user_V.dat");
unsigned int ap_apatb_outStream_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStream_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_outStream_V_last_V.dat");
unsigned int ap_apatb_outStream_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStream_V_id_V_V_size_Reader("../tv/stream_size/stream_size_out_outStream_V_id_V.dat");
unsigned int ap_apatb_outStream_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStream_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_outStream_V_dest_V.dat");
extern "C" void doContrast(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, char, char);
extern "C" void apatb_doContrast_hw(volatile void * __xlx_apatb_param_inStream_V_data_V, volatile void * __xlx_apatb_param_inStream_V_keep_V, volatile void * __xlx_apatb_param_inStream_V_strb_V, volatile void * __xlx_apatb_param_inStream_V_user_V, volatile void * __xlx_apatb_param_inStream_V_last_V, volatile void * __xlx_apatb_param_inStream_V_id_V, volatile void * __xlx_apatb_param_inStream_V_dest_V, volatile void * __xlx_apatb_param_outStream_V_data_V, volatile void * __xlx_apatb_param_outStream_V_keep_V, volatile void * __xlx_apatb_param_outStream_V_strb_V, volatile void * __xlx_apatb_param_outStream_V_user_V, volatile void * __xlx_apatb_param_outStream_V_last_V, volatile void * __xlx_apatb_param_outStream_V_id_V, volatile void * __xlx_apatb_param_outStream_V_dest_V, char __xlx_apatb_param_xMin, char __xlx_apatb_param_xMax) {
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
  //Create input buffer for outStream_V_data_V
  ap_apatb_outStream_V_data_V_cap_bc = __xlx_outStream_V_data_V_V_size_Reader.read_size();
  char* __xlx_outStream_V_data_V_input_buffer= new char[ap_apatb_outStream_V_data_V_cap_bc];
  //Create input buffer for outStream_V_keep_V
  ap_apatb_outStream_V_keep_V_cap_bc = __xlx_outStream_V_keep_V_V_size_Reader.read_size();
  char* __xlx_outStream_V_keep_V_input_buffer= new char[ap_apatb_outStream_V_keep_V_cap_bc];
  //Create input buffer for outStream_V_strb_V
  ap_apatb_outStream_V_strb_V_cap_bc = __xlx_outStream_V_strb_V_V_size_Reader.read_size();
  char* __xlx_outStream_V_strb_V_input_buffer= new char[ap_apatb_outStream_V_strb_V_cap_bc];
  //Create input buffer for outStream_V_user_V
  ap_apatb_outStream_V_user_V_cap_bc = __xlx_outStream_V_user_V_V_size_Reader.read_size();
  char* __xlx_outStream_V_user_V_input_buffer= new char[ap_apatb_outStream_V_user_V_cap_bc];
  //Create input buffer for outStream_V_last_V
  ap_apatb_outStream_V_last_V_cap_bc = __xlx_outStream_V_last_V_V_size_Reader.read_size();
  char* __xlx_outStream_V_last_V_input_buffer= new char[ap_apatb_outStream_V_last_V_cap_bc];
  //Create input buffer for outStream_V_id_V
  ap_apatb_outStream_V_id_V_cap_bc = __xlx_outStream_V_id_V_V_size_Reader.read_size();
  char* __xlx_outStream_V_id_V_input_buffer= new char[ap_apatb_outStream_V_id_V_cap_bc];
  //Create input buffer for outStream_V_dest_V
  ap_apatb_outStream_V_dest_V_cap_bc = __xlx_outStream_V_dest_V_V_size_Reader.read_size();
  char* __xlx_outStream_V_dest_V_input_buffer= new char[ap_apatb_outStream_V_dest_V_cap_bc];
  // DUT call
  doContrast(__xlx_inStream_V_data_V_input_buffer, __xlx_inStream_V_keep_V_input_buffer, __xlx_inStream_V_strb_V_input_buffer, __xlx_inStream_V_user_V_input_buffer, __xlx_inStream_V_last_V_input_buffer, __xlx_inStream_V_id_V_input_buffer, __xlx_inStream_V_dest_V_input_buffer, __xlx_outStream_V_data_V_input_buffer, __xlx_outStream_V_keep_V_input_buffer, __xlx_outStream_V_strb_V_input_buffer, __xlx_outStream_V_user_V_input_buffer, __xlx_outStream_V_last_V_input_buffer, __xlx_outStream_V_id_V_input_buffer, __xlx_outStream_V_dest_V_input_buffer, __xlx_apatb_param_xMin, __xlx_apatb_param_xMax);
  for (unsigned i = 0; i <ap_apatb_outStream_V_data_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStream_V_data_V)->write(__xlx_outStream_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStream_V_keep_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStream_V_keep_V)->write(__xlx_outStream_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStream_V_strb_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStream_V_strb_V)->write(__xlx_outStream_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStream_V_user_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStream_V_user_V)->write(__xlx_outStream_V_user_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStream_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStream_V_last_V)->write(__xlx_outStream_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStream_V_id_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStream_V_id_V)->write(__xlx_outStream_V_id_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStream_V_dest_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStream_V_dest_V)->write(__xlx_outStream_V_dest_V_input_buffer[i]);
}
