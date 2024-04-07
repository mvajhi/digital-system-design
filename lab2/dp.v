module SSD (
    input [3:0] count,
    output reg [6:0] SSD_out
);
    always @(count) begin
        SSD_out = 4'h0
        case (count)
            4'h0: SSD_out = 7'h40;
            4'h1: SSD_out = 7'h79;
            4'h2: SSD_out = 7'h24;
            4'h3: SSD_out = 7'h30;
            4'h4: SSD_out = 7'h19;
            4'h5: SSD_out = 7'h12;
            4'h6: SSD_out = 7'h02;
            4'h7: SSD_out = 7'h78;
            4'h8: SSD_out = 7'h00;
            4'h9: SSD_out = 7'h10;
            4'ha: SSD_out = 7'h08;
            4'hb: SSD_out = 7'h03;
            4'hc: SSD_out = 7'h46;
            4'hd: SSD_out = 7'h21;
            4'he: SSD_out = 7'h06;
            4'hf: SSD_out = 7'h0e;
            default: SSD_out = 7'h01;
        endcase
    end
endmodule

module DSR (
    input clk,
    input clk_en,
    input rst,
    input sh_en,
    input serin,
    output reg [3:0] par_ld
);
    always @(posedge clk, posedge rst) begin
        if (rst)
            par_ld <= 4'b0;
        else if (clk_en)
            if (sh_en)
                par_ld <= {par_ld[2:0], serin};
    end
endmodule

module PSR (
    input clk,
    input clk_en,
    input rst,
    input sh_en,
    input serin,
    output reg [1:0] par_ld
);
    always @(posedge clk, posedge rst) begin
        if (rst)
            par_ld = 2'b0;
        else if (clk_en)
            if (sh_en)
                par_ld <= {par_ld[0], serin};
    end
endmodule

module port_count (
    input clk,
    input clk_en,
    input rst,
    input cnt,
    output reg [1:0] co
);
// TODO
endmodule

module port_num_shr (
    input clk,
    input clk_en,
    input rst,
    input serin,
    input sh_en,
    output reg [1:0] co
);
// TODO
endmodule

module data_num_cnt (
    input clk,
    input clk_en,
    input rst,
    input cnt,
    output reg [1:0] co
);
// TODO
endmodule

module data_num_shr (
    input clk,
    input clk_en,
    input rst,
    input serin,
    input sh_en,
    output reg [3:0] num_data
);
// TODO
endmodule

module data_trans_cnt (
    input clk,
    input clk_en,
    input rst,
    input ldcntD,
    input cntD,
    input [3:0] num_data,
    output reg [3:0] par_out,
    output coD
);
    always @(posedge clk, posedge rst) begin
        if (rst)
            par_out <= 4'b0;
        else if (clk_en)
            if (ldcntD)
                par_out <= num_data;
            else if (cntD)
                par_out <= par_out - 1'b1;
    end
    assign coD = (par_out == 4'b0);
endmodule

module demnx (
    input serout,
    input [1:0] port_num,
    output P0,
    output P1,
    output P2,
    output P3
);
    always @(serout, port_num) begin
        {P0, P1, P2, P3} = 4'b0
        case (port_num)
            2'd0: P0 = 1'b1;
            2'd1: P1 = 1'b1;
            2'd2: P2 = 1'b1;
            2'd3: P3 = 1'b1;
        endcase
    end
endmodule