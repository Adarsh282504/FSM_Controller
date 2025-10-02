`timescale 1ns/1ps
module tb_fsm_controller;
    logic clk, rst, start, stop;
    logic running;

    fsm_controller uut(
        .clk(clk),
        .rst(rst),
        .start(start),
        .stop(stop),
        .running(running)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        rst = 1; start = 0; stop = 0;
        #20 rst = 0;
        #10 start = 1;
        #10 start = 0;
        #50 stop = 1;
        #10 stop = 0;
        #50 $finish;
    end

    always @(posedge clk) begin
        if (uut.state == uut.RUN) begin
            assert(running) else $fatal("Running should be high in RUN state");
        end else begin
            assert(!running) else $fatal("Running should be low outside RUN state");
        end
    end
endmodule
