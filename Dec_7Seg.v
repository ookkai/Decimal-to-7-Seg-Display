module Dec_7Seg (
           in,              // I 4 bit : BCD input
           Reset_n,         // I 1 bit : reset in negative
           Segout              // O 8 bit : decimal output
       );

//Declare inputs,outputs and internal variables.
input [3:0] in;
input Reset_n;
output [7:0] Segout;
reg [7:0]Segout;

//always block for converting bcd digit into decimal
always @(*)
begin
    if (Reset_n==0)                     //higest priority
    begin
        Segout=8'b1001_0001;
    end
    else
    begin                               //lowest priority
        case (in)                       //case statement
            4'd0:
                Segout=8'b0000_0011;
            4'd1:
                Segout=8'b1001_1111;
            4'd2:
                Segout=8'b0010_0101;
            4'd3:
                Segout=8'b0000_1101;
            4'd4:
                Segout=8'b1001_1001;
            4'd5:
                Segout=8'b0100_1001;
            4'd6:
                Segout=8'b0100_0001;
            4'd7:
                Segout=8'b0001_1111;
            4'd8:
                Segout=8'b0000_0001;
            4'd9:
                Segout=8'b0000_1001;
            4'd10:
                Segout=8'b0001_0001;
            4'd11:
                Segout=8'b1100_0001;
            4'd12:
                Segout=8'b1110_0101;
            4'd13:
                Segout=8'b1000_0101;
            4'd14:
                Segout=8'b0110_0001;
            4'd15:
                Segout=8'b0111_0001;

        endcase
    end
end

endmodule
