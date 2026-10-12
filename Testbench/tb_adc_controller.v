
`timescale 1ns/1ps

module tb_adc_controller;

    reg clk;
    reg reset;
    reg start;
    reg [7:0] adc_data;

    wire [7:0] data_out;
    wire data_valid;
    wire busy;

    integer pass_count;
    integer fail_count;

    adc_controller dut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .adc_data(adc_data),
        .data_out(data_out),
        .data_valid(data_valid),
        .busy(busy)
    );

    always #5 clk = ~clk;

    task test_sample;
        input [7:0] sample;
        begin
            @(negedge clk);
            adc_data = sample;
            start = 1;

            @(negedge clk);
            start = 0;

            wait (data_valid == 1'b1);
            #1;

            if (data_out === sample) begin
                $display("PASS: Expected=%0d, Actual=%0d",
                         sample, data_out);
                pass_count = pass_count + 1;
            end
            else begin
                $display("FAIL: Expected=%0d, Actual=%0d",
                         sample, data_out);
                fail_count = fail_count + 1;
            end

            @(negedge clk);
            wait (data_valid == 1'b0);
        end
    endtask

    initial begin
        $dumpfile("Simulation/adc_waveform.vcd");
        $dumpvars(0, tb_adc_controller);

        clk = 0;
        reset = 1;
        start = 0;
        adc_data = 0;
        pass_count = 0;
        fail_count = 0;

        repeat (2) @(negedge clk);
        reset = 0;

        test_sample(8'd100);
        test_sample(8'd150);
        test_sample(8'd200);

        $display("--------------------------------");
        $display("Total PASS = %0d", pass_count);
        $display("Total FAIL = %0d", fail_count);
        $display("--------------------------------");

        if (fail_count == 0 && pass_count == 3)
            $display("OVERALL RESULT: PASS");
        else
            $display("OVERALL RESULT: FAIL");

        $finish;
    end

endmodule

