`timescale 1ns / 1ps


module led_flash(
    input wire sys_clk,
    input wire rst_n,
    output reg [3:0] led
    );
    
    reg [27:0] counter; 
    wire is_end;
    assign is_end = (counter == 28'b1111_1111_1111_1111_1111_1111_1111); 
    
    //Upon posedege or negedge of rst, we change the counter state
    always @(posedge sys_clk or negedge rst_n) begin
        if(rst_n == 1'b0 || is_end) begin
            counter <= 'b0;
        end
        else begin
            counter <= counter + 1'b1;
        end
    end
    
    //decide the led state
    always @(posedge sys_clk or negedge rst_n) begin
        if(rst_n == 1'b0) begin
            led <= 4'b1100;
        end
        else if(is_end) begin
            led <= {led[2:0],led[3]};
        end
        else begin
            led <= led;
        end
    end
    
endmodule
