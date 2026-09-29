module updown(
    input logic clk,
    input logic reset,
    input logic updown_c,
    input logic enable,
    output logic [3:0] count
);

    always_ff @(posedge clk or negedge reset) begin

        if (!reset) count <= 4'b0000;  // reset = 0
        else if (enable) begin
            if(updown_c) begin
                count <= count + 1;
            end
            else begin
                count <= count - 1;
            end
        end
    end 

endmodule