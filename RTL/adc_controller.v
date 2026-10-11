
module adc_controller (
    input        clk,
    input        reset,
    input        start,
    input  [7:0] adc_data,

    output reg [7:0] data_out,
    output reg       data_valid,
    output reg       busy
);

    // FSM state declaration
    reg [1:0] state;

    // State encoding
    parameter IDLE    = 2'b00;
    parameter ACQUIRE = 2'b01;
    parameter STORE   = 2'b10;
    parameter VALID   = 2'b11;

    // ADC data storage register
    reg [7:0] data_reg;

    // State machine
    always @(posedge clk) begin
        if (reset) begin
            state      <= IDLE;
            data_reg   <= 8'b0;
            data_out   <= 8'b0;
            data_valid <= 1'b0;
            busy       <= 1'b0;
        end
        else begin
            case (state)

                IDLE: begin
                    data_valid <= 1'b0;
                    busy       <= 1'b0;

                    if (start) begin
                        state <= ACQUIRE;
                        busy  <= 1'b1;
                    end
                end

                ACQUIRE: begin
                    data_reg <= adc_data;
                    state    <= STORE;
                end

                STORE: begin
                    data_out <= data_reg;
                    state    <= VALID;
                end

                VALID: begin
                    data_valid <= 1'b1;
                    busy       <= 1'b0;
                    state      <= IDLE;
                end

                default: begin
                    state      <= IDLE;
                    data_reg   <= 8'b0;
                    data_out   <= 8'b0;
                    data_valid <= 1'b0;
                    busy       <= 1'b0;
                end

            endcase
        end
    end

endmodule
