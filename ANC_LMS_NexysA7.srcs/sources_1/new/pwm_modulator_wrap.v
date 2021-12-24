
module pwm_modulator_wrap (
        // AXI_S INTERFACE
    input  wire            m_axis_aud_aclk,
    input  wire            m_axis_aud_tvalid,
    input  wire [2:0]      m_axis_aud_tid,
    input  wire [31:0]     m_axis_aud_tdata,
    input  wire            m_axis_aud_aresetn,
    output wire            m_axis_aud_tready,
    output wire            pwm_out);



pwm_modulator   pwm_modulator0 (
    m_axis_aud_aclk,
    m_axis_aud_tvalid,
    m_axis_aud_tid,
    m_axis_aud_tdata,
    m_axis_aud_aresetn,
    m_axis_aud_tready,
    pwm_out
);
    
endmodule