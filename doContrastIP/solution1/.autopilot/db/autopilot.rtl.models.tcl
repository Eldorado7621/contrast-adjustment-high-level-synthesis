set SynModuleInfo {
  {SRCNAME doContrast_Pipeline_VITIS_LOOP_18_1 MODELNAME doContrast_Pipeline_VITIS_LOOP_18_1 RTLNAME doContrast_doContrast_Pipeline_VITIS_LOOP_18_1
    SUBMODULES {
      {MODELNAME doContrast_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME doContrast_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME doContrast_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME doContrast_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME doContrast_flow_control_loop_pipe_sequential_init RTLNAME doContrast_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME doContrast_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME doContrast MODELNAME doContrast RTLNAME doContrast IS_TOP 1
    SUBMODULES {
      {MODELNAME doContrast_sitofp_32s_32_6_no_dsp_1 RTLNAME doContrast_sitofp_32s_32_6_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME doContrast_ctrl_bus_s_axi RTLNAME doContrast_ctrl_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME doContrast_regslice_both RTLNAME doContrast_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME doContrast_regslice_both_U}
    }
  }
}
