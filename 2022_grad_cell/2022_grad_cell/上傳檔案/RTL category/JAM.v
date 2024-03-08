module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

parameter GETDATA = 3'b000;
parameter CALCULATE = 3'b001;
parameter NEXTORDER = 3'b010;
parameter NEXTORDER2 = 3'b011;
parameter NEXTORDER3 = 3'b100;

reg finish_getdata, finish_nextorder, start_getdata;
reg [2:0] state, nextState, step;
reg [2:0] order_pointer, exchange_position, start_pointer;
reg [9:0] adder1, adder2;
reg [2:0] order [0:7];
reg [6:0] tab [0:7];

wire order_less_than_post;
wire [2:0] aim_number;
wire [9:0] total_cost;

assign aim_number = order[start_pointer - 1];
assign order_less_than_post = order[order_pointer] < order[order_pointer + 1];

assign total_cost = adder1 + adder2;

always@(negedge CLK)begin
	finish_getdata <= 0;
	if(RST)begin
		W <= 0;
		J <= 0;
	end
	else if(state == GETDATA)begin
		if(W == 7 && J == 7)begin
			W <= 0;
			J <= 0;
			finish_getdata <= 1;
		end
		else begin
			J <= J + 1;
			W <= W + 1;
		end
		tab[J] <= Cost;
	end
	else if(state == NEXTORDER2 && order_pointer == 0)begin
		W <= start_pointer - 1;
		J <= order[exchange_position];
	end
	else if(start_getdata == 1)begin
		tab[W] <= Cost;
		W <= W + 1;
		J <= order[W + 1];
	end
	else begin
		W <= W;
		J <= J;
	end
	
end

always@(posedge CLK)begin
	if(RST)
		state <= 0;
	else
		state <= nextState;
end

always@(state, finish_getdata, finish_nextorder, order_pointer, start_pointer, step)begin
	case(state)
		GETDATA:
			if(finish_getdata)
				nextState = CALCULATE;
			else
				nextState = GETDATA;
		CALCULATE:
			if(step >= 6)
				nextState = NEXTORDER;
			else
				nextState = CALCULATE;
		NEXTORDER:
			if(finish_nextorder)
				nextState = NEXTORDER2;
			else
				nextState = NEXTORDER;
		NEXTORDER2:
			if(order_pointer == 0)
				nextState = NEXTORDER3;
			else
				nextState = NEXTORDER2;
		NEXTORDER3:
			if(start_pointer == 0)
				nextState = CALCULATE;
			else
				nextState = NEXTORDER3;
		default:
			nextState = 0;
	endcase
end

always@(posedge CLK)begin
	
	if(RST)begin
		step <= 0;
	end
	else if(state == CALCULATE ||((step < (start_pointer - 2)) &&((state == NEXTORDER2) || (state == NEXTORDER3))))begin
		case(step)
			0:begin
				adder1 <= tab[0];
				adder2 <= tab[1];
			end
			1:begin
				adder1 <= total_cost;
				adder2 <= tab[2];
			end
			2:begin
				adder1 <= total_cost;
				adder2 <= tab[3];
			end
			3:begin
				adder1 <= total_cost;
				adder2 <= tab[4];
			end
			4:begin
				adder1 <= total_cost;
				adder2 <= tab[5];
			end
			5:begin
				adder1 <= total_cost;
				adder2 <= tab[6];
			end
			6:begin
				adder1 <= total_cost;
				adder2 <= tab[7];
			end
			
		endcase
		if(step == 7)begin
			step <= step;
		end
		else begin
			step <= step + 1;
		end
		
	end
	else if(finish_nextorder)
		step <= 0;
	else
		step <= step;
		
end
integer i;
always@(posedge CLK)begin
	start_getdata <= 0;
	finish_nextorder <= 0;
	if(RST)begin
		MinCost <= 1023;
		MatchCount <= 0;
		for(i = 0;i<8;i=i+1)
			order[i] <= i;
		order_pointer <= 6;
		exchange_position <= 7;
		Valid <= 0;
	end
	else
		case(state)
			NEXTORDER:begin
				
				if(!finish_nextorder)begin
					if(order_less_than_post)begin
						finish_nextorder <= 1;
						order_pointer <= order_pointer + 1;
					end
					else if(order_pointer == 0)
						Valid <= 1;
					else
						order_pointer <= order_pointer - 1;

				end
				else begin
					if(total_cost < MinCost)begin
						MinCost <= total_cost;
						MatchCount <= 1;
					end
					else if (total_cost == MinCost)begin
						MatchCount <= MatchCount + 1;
					end
					start_pointer <= order_pointer;
					exchange_position <= order_pointer;
					
				end
					
			end
			NEXTORDER2:begin
				order_pointer <= order_pointer + 1;
				if(order_pointer != 0)begin
					if((order[order_pointer] > aim_number )&&( order[order_pointer] <= order[exchange_position]))
						exchange_position <= order_pointer;
					else
						exchange_position <= exchange_position;
					
				end
				else begin
					order_pointer <= 6;
					exchange_position <= 7;
					order[start_pointer - 1] <= order[exchange_position];
					order[exchange_position] <= order[(start_pointer - 1)];	
				end
					
				
			end
			NEXTORDER3:begin
				start_getdata <= 1;
				start_pointer <= start_pointer + 1;
				exchange_position <= exchange_position - 1; // let exchange_position as tail
				if(start_pointer != 0)begin
					if(start_pointer < exchange_position)begin
						order[start_pointer] <= order[exchange_position];
						order[exchange_position] <= order[start_pointer];
					end
				end
				else begin
					
					start_pointer <= start_pointer;
					exchange_position <= exchange_position;
					
				
				end
			end
		endcase
end
endmodule