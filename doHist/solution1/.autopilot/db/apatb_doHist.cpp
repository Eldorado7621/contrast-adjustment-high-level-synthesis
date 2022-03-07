#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_inStream_V_data_V "../tv/cdatafile/c.doHist.autotvin_inStream_V_data_V.dat"
#define AUTOTB_TVOUT_inStream_V_data_V "../tv/cdatafile/c.doHist.autotvout_inStream_V_data_V.dat"
#define AUTOTB_TVIN_inStream_V_keep_V "../tv/cdatafile/c.doHist.autotvin_inStream_V_keep_V.dat"
#define AUTOTB_TVOUT_inStream_V_keep_V "../tv/cdatafile/c.doHist.autotvout_inStream_V_keep_V.dat"
#define AUTOTB_TVIN_inStream_V_strb_V "../tv/cdatafile/c.doHist.autotvin_inStream_V_strb_V.dat"
#define AUTOTB_TVOUT_inStream_V_strb_V "../tv/cdatafile/c.doHist.autotvout_inStream_V_strb_V.dat"
#define AUTOTB_TVIN_inStream_V_user_V "../tv/cdatafile/c.doHist.autotvin_inStream_V_user_V.dat"
#define AUTOTB_TVOUT_inStream_V_user_V "../tv/cdatafile/c.doHist.autotvout_inStream_V_user_V.dat"
#define AUTOTB_TVIN_inStream_V_last_V "../tv/cdatafile/c.doHist.autotvin_inStream_V_last_V.dat"
#define AUTOTB_TVOUT_inStream_V_last_V "../tv/cdatafile/c.doHist.autotvout_inStream_V_last_V.dat"
#define AUTOTB_TVIN_inStream_V_id_V "../tv/cdatafile/c.doHist.autotvin_inStream_V_id_V.dat"
#define AUTOTB_TVOUT_inStream_V_id_V "../tv/cdatafile/c.doHist.autotvout_inStream_V_id_V.dat"
#define AUTOTB_TVIN_inStream_V_dest_V "../tv/cdatafile/c.doHist.autotvin_inStream_V_dest_V.dat"
#define AUTOTB_TVOUT_inStream_V_dest_V "../tv/cdatafile/c.doHist.autotvout_inStream_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_data_V "../tv/stream_size/stream_size_in_inStream_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V "../tv/stream_size/stream_ingress_status_inStream_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_keep_V "../tv/stream_size/stream_size_in_inStream_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V "../tv/stream_size/stream_ingress_status_inStream_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_strb_V "../tv/stream_size/stream_size_in_inStream_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V "../tv/stream_size/stream_ingress_status_inStream_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_user_V "../tv/stream_size/stream_size_in_inStream_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V "../tv/stream_size/stream_ingress_status_inStream_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_last_V "../tv/stream_size/stream_size_in_inStream_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V "../tv/stream_size/stream_ingress_status_inStream_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_id_V "../tv/stream_size/stream_size_in_inStream_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V "../tv/stream_size/stream_ingress_status_inStream_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_inStream_V_dest_V "../tv/stream_size/stream_size_in_inStream_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V "../tv/stream_size/stream_ingress_status_inStream_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_histo "../tv/cdatafile/c.doHist.autotvin_histo.dat"
#define AUTOTB_TVOUT_histo "../tv/cdatafile/c.doHist.autotvout_histo.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_inStream_V_data_V "../tv/rtldatafile/rtl.doHist.autotvout_inStream_V_data_V.dat"
#define AUTOTB_TVOUT_PC_inStream_V_keep_V "../tv/rtldatafile/rtl.doHist.autotvout_inStream_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_inStream_V_strb_V "../tv/rtldatafile/rtl.doHist.autotvout_inStream_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_inStream_V_user_V "../tv/rtldatafile/rtl.doHist.autotvout_inStream_V_user_V.dat"
#define AUTOTB_TVOUT_PC_inStream_V_last_V "../tv/rtldatafile/rtl.doHist.autotvout_inStream_V_last_V.dat"
#define AUTOTB_TVOUT_PC_inStream_V_id_V "../tv/rtldatafile/rtl.doHist.autotvout_inStream_V_id_V.dat"
#define AUTOTB_TVOUT_PC_inStream_V_dest_V "../tv/rtldatafile/rtl.doHist.autotvout_inStream_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_histo "../tv/rtldatafile/rtl.doHist.autotvout_histo.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  inStream_V_data_V_depth = 0;
  inStream_V_keep_V_depth = 0;
  inStream_V_strb_V_depth = 0;
  inStream_V_user_V_depth = 0;
  inStream_V_last_V_depth = 0;
  inStream_V_id_V_depth = 0;
  inStream_V_dest_V_depth = 0;
  histo_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{inStream_V_data_V " << inStream_V_data_V_depth << "}\n";
  total_list << "{inStream_V_keep_V " << inStream_V_keep_V_depth << "}\n";
  total_list << "{inStream_V_strb_V " << inStream_V_strb_V_depth << "}\n";
  total_list << "{inStream_V_user_V " << inStream_V_user_V_depth << "}\n";
  total_list << "{inStream_V_last_V " << inStream_V_last_V_depth << "}\n";
  total_list << "{inStream_V_id_V " << inStream_V_id_V_depth << "}\n";
  total_list << "{inStream_V_dest_V " << inStream_V_dest_V_depth << "}\n";
  total_list << "{histo " << histo_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int inStream_V_data_V_depth;
    int inStream_V_keep_V_depth;
    int inStream_V_strb_V_depth;
    int inStream_V_user_V_depth;
    int inStream_V_last_V_depth;
    int inStream_V_id_V_depth;
    int inStream_V_dest_V_depth;
    int histo_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
extern "C" void doHist_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_doHist_hw(volatile void * __xlx_apatb_param_inStream_V_data_V, volatile void * __xlx_apatb_param_inStream_V_keep_V, volatile void * __xlx_apatb_param_inStream_V_strb_V, volatile void * __xlx_apatb_param_inStream_V_user_V, volatile void * __xlx_apatb_param_inStream_V_last_V, volatile void * __xlx_apatb_param_inStream_V_id_V, volatile void * __xlx_apatb_param_inStream_V_dest_V, volatile void * __xlx_apatb_param_histo) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_inStream_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_inStream_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_inStream_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_inStream_stream_buf_final_size; ++i) {
((hls::stream<char>*)__xlx_apatb_param_inStream_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_inStream_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_inStream_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_inStream_V_user_V)->read();
((hls::stream<char>*)__xlx_apatb_param_inStream_V_last_V)->read();
((hls::stream<char>*)__xlx_apatb_param_inStream_V_id_V)->read();
((hls::stream<char>*)__xlx_apatb_param_inStream_V_dest_V)->read();
}
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(256);
aesl_fh.read(AUTOTB_TVOUT_PC_histo, tr.p, tr.tbytes);
tr.reorder();
tr.send<4>((char*)__xlx_apatb_param_histo, 256);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_histo);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > histo_pc_buffer(256);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "histo");
  
            // push token into output port buffer
            if (AESL_token != "") {
              histo_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "histo" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 256; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_histo)[j*4+0] = histo_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_histo)[j*4+1] = histo_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_histo)[j*4+2] = histo_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_histo)[j*4+3] = histo_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inStream_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V);
CodeState = DUMP_INPUTS;
// data
std::vector<char> __xlx_apatb_param_inStream_V_data_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_data_V)->empty())
    __xlx_apatb_param_inStream_V_data_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_inStream_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_inStream_V_data_V)->write(__xlx_apatb_param_inStream_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_inStream_stream_buf_size = ((hls::stream<char>*)__xlx_apatb_param_inStream_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_inStream_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_keep_V)->empty())
    __xlx_apatb_param_inStream_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_inStream_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_inStream_V_keep_V)->write(__xlx_apatb_param_inStream_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_inStream_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_strb_V)->empty())
    __xlx_apatb_param_inStream_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_inStream_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_inStream_V_strb_V)->write(__xlx_apatb_param_inStream_V_strb_V_stream_buf[i]);
  }
// user
std::vector<char> __xlx_apatb_param_inStream_V_user_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_user_V)->empty())
    __xlx_apatb_param_inStream_V_user_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_user_V)->read());
  for (int i = 0; i < __xlx_apatb_param_inStream_V_user_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_inStream_V_user_V)->write(__xlx_apatb_param_inStream_V_user_V_stream_buf[i]);
  }
// last
std::vector<char> __xlx_apatb_param_inStream_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_last_V)->empty())
    __xlx_apatb_param_inStream_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_inStream_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_inStream_V_last_V)->write(__xlx_apatb_param_inStream_V_last_V_stream_buf[i]);
  }
// id
std::vector<char> __xlx_apatb_param_inStream_V_id_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_id_V)->empty())
    __xlx_apatb_param_inStream_V_id_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_id_V)->read());
  for (int i = 0; i < __xlx_apatb_param_inStream_V_id_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_inStream_V_id_V)->write(__xlx_apatb_param_inStream_V_id_V_stream_buf[i]);
  }
// dest
std::vector<char> __xlx_apatb_param_inStream_V_dest_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_inStream_V_dest_V)->empty())
    __xlx_apatb_param_inStream_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_inStream_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_inStream_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_inStream_V_dest_V)->write(__xlx_apatb_param_inStream_V_dest_V_stream_buf[i]);
  }
unsigned __xlx_offset_byte_param_histo = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_histo, 'b');
transaction<32> tr(256);
  __xlx_offset_byte_param_histo = 0*4;
  if (__xlx_apatb_param_histo) {
tr.import<4>((char*)__xlx_apatb_param_histo, 256, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_histo, tr.p, tr.tbytes);
}

  tcl_file.set_num(256, &tcl_file.histo_depth);
#else
// print histo Transactions
{
aesl_fh.write(AUTOTB_TVIN_histo, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_histo = 0*4;
  if (__xlx_apatb_param_histo) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_histo)[j];
aesl_fh.write(AUTOTB_TVIN_histo, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(256, &tcl_file.histo_depth);
aesl_fh.write(AUTOTB_TVIN_histo, end_str());
}

#endif
CodeState = CALL_C_DUT;
doHist_hw_stub_wrapper(__xlx_apatb_param_inStream_V_data_V, __xlx_apatb_param_inStream_V_keep_V, __xlx_apatb_param_inStream_V_strb_V, __xlx_apatb_param_inStream_V_user_V, __xlx_apatb_param_inStream_V_last_V, __xlx_apatb_param_inStream_V_id_V, __xlx_apatb_param_inStream_V_dest_V, __xlx_apatb_param_histo);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_inStream_stream_buf_final_size = __xlx_apatb_param_inStream_stream_buf_size - ((hls::stream<char>*)__xlx_apatb_param_inStream_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_inStream_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_inStream_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_inStream_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_inStream_V_user_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_inStream_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_inStream_V_id_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_inStream_V_dest_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_inStream_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_0_lv = ((char*)&__xlx_apatb_param_inStream_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_inStream_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_inStream_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_inStream_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_inStream_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_inStream_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<2> __xlx_tmp_3_lv = ((char*)&__xlx_apatb_param_inStream_V_user_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_inStream_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_inStream_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_inStream_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<5> __xlx_tmp_5_lv = ((char*)&__xlx_apatb_param_inStream_V_id_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_inStream_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<6> __xlx_tmp_6_lv = ((char*)&__xlx_apatb_param_inStream_V_dest_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_inStream_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_inStream_stream_buf_final_size, &tcl_file.inStream_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_inStream_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_inStream_stream_buf_final_size, &tcl_file.inStream_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_inStream_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_inStream_stream_buf_final_size, &tcl_file.inStream_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_inStream_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_inStream_stream_buf_final_size, &tcl_file.inStream_V_user_V_depth);
aesl_fh.write(AUTOTB_TVIN_inStream_V_user_V, end_str());
tcl_file.set_num(__xlx_apatb_param_inStream_stream_buf_final_size, &tcl_file.inStream_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_inStream_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_inStream_stream_buf_final_size, &tcl_file.inStream_V_id_V_depth);
aesl_fh.write(AUTOTB_TVIN_inStream_V_id_V, end_str());
tcl_file.set_num(__xlx_apatb_param_inStream_stream_buf_final_size, &tcl_file.inStream_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVIN_inStream_V_dest_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_inStream_stream_buf_final_size > 0) {
  long inStream_V_data_V_stream_ingress_size = __xlx_apatb_param_inStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_inStream_stream_buf_final_size; j != e; j++) {
    inStream_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long inStream_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_inStream_stream_buf_final_size > 0) {
  long inStream_V_keep_V_stream_ingress_size = __xlx_apatb_param_inStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_inStream_stream_buf_final_size; j != e; j++) {
    inStream_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long inStream_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_inStream_stream_buf_final_size > 0) {
  long inStream_V_strb_V_stream_ingress_size = __xlx_apatb_param_inStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_inStream_stream_buf_final_size; j != e; j++) {
    inStream_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long inStream_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_inStream_stream_buf_final_size > 0) {
  long inStream_V_user_V_stream_ingress_size = __xlx_apatb_param_inStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_inStream_stream_buf_final_size; j != e; j++) {
    inStream_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long inStream_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_user_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_inStream_stream_buf_final_size > 0) {
  long inStream_V_last_V_stream_ingress_size = __xlx_apatb_param_inStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_inStream_stream_buf_final_size; j != e; j++) {
    inStream_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long inStream_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_last_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_inStream_stream_buf_final_size > 0) {
  long inStream_V_id_V_stream_ingress_size = __xlx_apatb_param_inStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_inStream_stream_buf_final_size; j != e; j++) {
    inStream_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long inStream_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_id_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_inStream_stream_buf_final_size > 0) {
  long inStream_V_dest_V_stream_ingress_size = __xlx_apatb_param_inStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_inStream_stream_buf_final_size; j != e; j++) {
    inStream_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long inStream_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", inStream_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inStream_V_dest_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_inStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_inStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_inStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_user_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_inStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_user_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_user_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_inStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_id_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_inStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_id_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_id_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_inStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_inStream_V_dest_V, end_str());
}
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_histo, 'b');
transaction<32> tr(256);
  __xlx_offset_byte_param_histo = 0*4;
  if (__xlx_apatb_param_histo) {
tr.import<4>((char*)__xlx_apatb_param_histo, 256, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_histo, tr.p, tr.tbytes);
}

  tcl_file.set_num(256, &tcl_file.histo_depth);
#else
// print histo Transactions
{
aesl_fh.write(AUTOTB_TVOUT_histo, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_histo = 0*4;
  if (__xlx_apatb_param_histo) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_histo)[j];
aesl_fh.write(AUTOTB_TVOUT_histo, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(256, &tcl_file.histo_depth);
aesl_fh.write(AUTOTB_TVOUT_histo, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
