set SynModuleInfo {
  {SRCNAME doHist_Pipeline_VITIS_LOOP_12_1 MODELNAME doHist_Pipeline_VITIS_LOOP_12_1 RTLNAME doHist_doHist_Pipeline_VITIS_LOOP_12_1
    SUBMODULES {
      {MODELNAME doHist_flow_control_loop_pipe_sequential_init RTLNAME doHist_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME doHist_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME doHist_Pipeline_VITIS_LOOP_19_2 MODELNAME doHist_Pipeline_VITIS_LOOP_19_2 RTLNAME doHist_doHist_Pipeline_VITIS_LOOP_19_2}
  {SRCNAME doHist MODELNAME doHist RTLNAME doHist IS_TOP 1
    SUBMODULES {
      {MODELNAME doHist_ctrl_bus_s_axi RTLNAME doHist_ctrl_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME doHist_regslice_both RTLNAME doHist_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME doHist_regslice_both_U}
    }
  }
}
