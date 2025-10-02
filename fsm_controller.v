module fsm_controller(
    input wire clk,
    input wire rst,
    input wire start,
    input wire stop,
    output reg running
);
    typedef enum logic [1:0] {IDLE=2'b00, RUN=2'b01, STOP=2'b10} state_t;
    state_t state, next_state;

    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end

    always_comb begin
        next_state = state;
        case(state)
            IDLE: if (start) next_state = RUN;
            RUN:  if (stop) next_state = STOP;
            STOP: next_state = IDLE;
        endcase
    end

    always_comb begin
        running = (state == RUN);
    end

endmodule
