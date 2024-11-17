

`include "router.v"
`timescale 1us/1us

module routertb_new3;


reg [31:0]	local_in,north_in,south_in,west_in,east_in;
reg [31:0] local_in2, local_in3,local_in4,local_in5,local_in6;
wire [31:0]	north_out1,south_out1,west_out1,east_out1,local_out1,north_out2,south_out2,west_out2,east_out2,local_out2;
wire [31:0] north_out3,south_out3,west_out3,east_out3,local_out3;
wire [31:0] north_out4,south_out4,west_out4,east_out4,local_out4;
wire [31:0] north_out5,south_out5,west_out5,east_out5,local_out5;
wire [31:0] north_out6,south_out6,west_out6,east_out6,local_out6;
wire [2:0]	count_out_north,count_out_south,count_out_east,count_out_west,count_out_local;
reg  [2:0]	count_in_north,count_in_south,count_in_east,count_in_west,count_in_local;
reg		clk,reset,enable,push_north,push_south,push_east,push_west,push_local;
reg		push_north1,push_south1,push_east1,push_west1,push_local1;
reg		push_north2,push_south2,push_east2,push_west2,push_local2;
reg		push_north5,push_south5,push_east5,push_west5,push_local5;
reg [1:0] 	routeridx1,routeridy1;
reg [1:0] 	routeridx2,routeridy2; // ROUTER ID OF EACH ROUTER
reg [1:0] 	routeridx3,routeridy3; // ROUTER ID OF EACH ROUTER
reg [1:0] 	routeridx4,routeridy4; // ROUTER ID OF EACH ROUTER
reg [1:0] 	routeridx5,routeridy5; // ROUTER ID OF EACH ROUTER
reg [1:0] 	routeridx6,routeridy6; // ROUTER ID OF EACH ROUTER
wire pop_north,pop_south,pop_east,pop_west,pop_local;


router u1(
		.routeridx(routeridx1),
		.routeridy(routeridy1),
		.local_in(local_in),
		.north_in(south_out2),
		.south_in(32'b0),
		.west_in(32'b0),
		.east_in(west_out4),
		.local_out(local_out1),
		.north_out(north_out1), //connected
		.south_out(south_out1),
		.west_out(west_out1),
		.east_out(east_out1),//connected
		.count_out_north(count_out_north),
		.count_out_south(count_out_south),
		.count_out_east(count_out_east),
		.count_out_west(count_out_west),
		.count_out_local(count_out_local),
		.count_in_north(count_in_north),
		.count_in_south(count_in_south),
		.count_in_east(count_in_east),
		.count_in_west(count_in_west),
		.count_in_local(count_in_local),
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.push_north(push_north1),
		.push_south(push_south1),
		.push_east(push_east1),
		.push_west(push_west1),
		.push_local(push_local1),
		.pop_north(pop_north),
		.pop_south(pop_south),
		.pop_east(pop_east),
		.pop_west(pop_west),
		.pop_local(pop_local)


);

router u2(
		.routeridx(routeridx2),
		.routeridy(routeridy2),
		.local_in(local_in2),
		.north_in(32'b0),
		.south_in(north_out1), //From North of router 00,00 --> east out , x3 =010
		.west_in(32'b0),
		.east_in(west_out3), 
		.local_out(local_out2),
		.north_out(north_out2),
		.south_out(south_out2),
		.west_out(west_out2),
		.east_out(east_out2),
		.count_out_north(count_out_north),
		.count_out_south(count_out_south),
		.count_out_east(count_out_east),
		.count_out_west(count_out_west),
		.count_out_local(count_out_local),
		.count_in_north(count_in_north),
		.count_in_south(count_in_south),
		.count_in_east(count_in_east),
		.count_in_west(count_in_west),
		.count_in_local(count_in_local),
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.push_north(push_north2),
		.push_south(push_south2),
		.push_east(push_east2),
		.push_west(push_west2),
		.push_local(push_local2),
		.pop_north(pop_north),
		.pop_south(pop_south),
		.pop_east(pop_east),
		.pop_west(pop_west),
		.pop_local(pop_local)


);


router u3(
		.routeridx(routeridx3),
		.routeridy(routeridy3),
		.local_in(local_in3), //connected
		.north_in(32'b0),
		.south_in(north_out4), 
		.west_in(east_out2), //connected
		.east_in(32'b0), 
		.local_out(local_out3),
		.north_out(north_out3),
		.south_out(south_out3),
		.west_out(west_out3),
		.east_out(east_out3),
		.count_out_north(count_out_north),
		.count_out_south(count_out_south),
		.count_out_east(count_out_east),
		.count_out_west(count_out_west),
		.count_out_local(count_out_local),
		.count_in_north(count_in_north),
		.count_in_south(count_in_south),
		.count_in_east(count_in_east),
		.count_in_west(count_in_west),
		.count_in_local(count_in_local),
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.push_north(push_north),
		.push_south(push_south),
		.push_east(push_east),
		.push_west(push_west),
		.push_local(push_local),
		.pop_north(pop_north),
		.pop_south(pop_south),
		.pop_east(pop_east),
		.pop_west(pop_west),
		.pop_local(pop_local)


);

router u4(
		.routeridx(routeridx4),
		.routeridy(routeridy4),
		.local_in(local_in4),
		.north_in(south_out3),
		.south_in(32'b0), 
		.west_in(east_out1),
		.east_in(32'b0), 
		.local_out(local_out4),
		.north_out(north_out4),
		.south_out(south_out4),
		.west_out(west_out4),
		.east_out(east_out4),
		.count_out_north(count_out_north),
		.count_out_south(count_out_south),
		.count_out_east(count_out_east),
		.count_out_west(count_out_west),
		.count_out_local(count_out_local),
		.count_in_north(count_in_north),
		.count_in_south(count_in_south),
		.count_in_east(count_in_east),
		.count_in_west(count_in_west),
		.count_in_local(count_in_local),
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.push_north(push_north),
		.push_south(push_south),
		.push_east(push_east),
		.push_west(push_west),
		.push_local(push_local),
		.pop_north(pop_north),
		.pop_south(pop_south),
		.pop_east(pop_east),
		.pop_west(pop_west),
		.pop_local(pop_local)


);

router u5(
		.routeridx(routeridx5),
		.routeridy(routeridy5),
		.local_in(local_in5),
		.north_in(32'b0),
		.south_in(north_out2), 
		.west_in(32'b0),
		.east_in(west_out6), 
		.local_out(local_out5),
		.north_out(north_out5),
		.south_out(south_out5),
		.west_out(west_out5),
		.east_out(east_out5),
		.count_out_north(count_out_north),
		.count_out_south(count_out_south),
		.count_out_east(count_out_east),
		.count_out_west(count_out_west),
		.count_out_local(count_out_local),
		.count_in_north(count_in_north),
		.count_in_south(count_in_south),
		.count_in_east(count_in_east),
		.count_in_west(count_in_west),
		.count_in_local(count_in_local),
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.push_north(push_north5),
		.push_south(push_south5),
		.push_east(push_east5),
		.push_west(push_west5),
		.push_local(push_local5),
		.pop_north(pop_north),
		.pop_south(pop_south),
		.pop_east(pop_east),
		.pop_west(pop_west),
		.pop_local(pop_local)


);

router u6(
		.routeridx(routeridx6),
		.routeridy(routeridy6),
		.local_in(local_in6),
		.north_in(32'b0),
		.south_in(north_out3), 
		.west_in(east_out5),
		.east_in(32'b0), 
		.local_out(local_out6),
		.north_out(north_out6),
		.south_out(south_out6),
		.west_out(west_out6),
		.east_out(east_out6),
		.count_out_north(count_out_north),
		.count_out_south(count_out_south),
		.count_out_east(count_out_east),
		.count_out_west(count_out_west),
		.count_out_local(count_out_local),
		.count_in_north(count_in_north),
		.count_in_south(count_in_south),
		.count_in_east(count_in_east),
		.count_in_west(count_in_west),
		.count_in_local(count_in_local),
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.push_north(push_north),
		.push_south(push_south),
		.push_east(push_east),
		.push_west(push_west),
		.push_local(push_local),
		.pop_north(pop_north),
		.pop_south(pop_south),
		.pop_east(pop_east),
		.pop_west(pop_west),
		.pop_local(pop_local)


);



initial begin

	$dumpfile("router3.vcd");
	$dumpvars(0,routertb_new3);
	routeridx1 <= 2'b00;
	routeridy1 <= 2'b00;
	routeridx2 <= 2'b00;
	routeridy2 <= 2'b01; //TOP ROUTER
	routeridx3 <= 2'b01;
	routeridy3 <= 2'b01; //SIDE RIGHT ROUTER
	routeridx4 <= 2'b01; 
	routeridy4 <= 2'b00; //LOWER RIGHT ROUTER
	routeridx5 <= 2'b00; 
	routeridy5 <= 2'b10; //TOP LEFT ROUTER
	routeridx6 <= 2'b01; 
	routeridy6 <= 2'b10; //TOP RIGHT ROUTER
	
	north_in <= 32'b0;
	south_in <= 32'b0;
	east_in <= 32'b0;
	west_in <= 32'b0;
	local_in <= 32'b0;
	local_in2 <= 32'b0;
	clk <= 0;
	reset <= 1;
	enable <= 1;
	count_in_north <= 3'b000;
	count_in_south <= 3'b000;
	count_in_east <= 3'b000;
	count_in_west <= 3'b000;
	count_in_local <= 3'b000;
	
	#100000 $finish;
	

end

always begin

#10 clk = ~clk ;

end

initial begin

#7 reset <= 0;
#0 enable <= 1;
//north input---------------

//#20 north_in <= 32'b1;
//#20 north_in <= 32'b0;
//#20 north_in <= 32'b1;
//#20 north_in <= 32'b0;

//south input-----------------

//header

//#0 south_in <= 32'b0100_00--xsource 00--ysource_00--xdes 11--ydes_0000_0000_0000_0000_1001;
#0 push_north <=1;
#0 push_south <=1;
#0 push_east <=1;
#0 push_west <=1;
#0 push_local <=1;

#0 push_north1 <=0;
#0 push_south1 <=0;
#0 push_east1 <=0;
#0 push_west1 <=0;
#0 push_local1 <=0;


/*
R4-->R2 test input
#0 south_in <= 32'b0000_0000_0000_0000_0000_0000_0000_1001;
#0 north_in <= 32'b0000_0000_0000_0000_0000_0000_0001_1001;
#0 east_in <= 32'b0000_1100_0000_0000_0000_0000_0001_0001;
#0 west_in <= 32'b0000_0000_0000_0000_0000_0000_0001_1001; //checking header
#0 local_in <= 32'b00_000011_0101_0000_0000_0000_0010_0101;
#0 local_in4 <= 32'b01_000011_0001_0000_0000_0000_0010_0101;
*/
//R1-->R3 test input
#0 south_in <= 32'b0000_0000_0000_0000_0000_0000_0000_1001;
#0 north_in <= 32'b0000_0000_0000_0000_0000_0000_0001_1001;
#0 east_in <= 32'b0000_1100_0000_0000_0000_0000_0001_0001;
#0 west_in <= 32'b0000_0000_0000_0000_0000_0000_0001_1001; //checking header
#0 local_in <= 32'b01_000011_0101_0000_0000_0000_0010_0101;
#0 local_in4 <= 32'b00_000011_0001_0000_0000_0000_0010_0101;

/*
#0 south_in <= 32'b0000_0000_0000_0000_0000_0000_0000_1001;
#0 north_in <= 32'b0000_0000_0000_0000_0000_0000_0001_1001;
#0 east_in <= 32'b0000_1100_0000_0000_0000_0000_0001_0001;
#0 west_in <= 32'b0000_0000_0000_0000_0000_0000_0001_1001; //checking header
#0 local_in <= 32'b00_000011_0101_0000_0000_0000_0010_0101;
#0 local_in4 <= 32'b01_000011_0010_0000_0000_0000_0010_0101;
*/
/*
//body
#20 south_in <= 32'b1000_1000_1000_1000_1000_1000_0000_1010;
#0 north_in <= 32'b1000_1000_1000_1000_1000_1000_0000_0010;
#0 east_in <= 32'b1000_1000_1000_1000_1000_1000_0001_0010;
#0 west_in <= 32'b1000_1000_1000_1000_1000_1000_0001_1010;
#0 local_in <= 32'b1000_1000_1000_1000_1000_1000_0010_0010;
#0 local_in2 <= 32'b1000_1000_1000_1000_1000_1000_0010_0110;
#0 local_in4 <= 32'b1000_1000_1000_1000_1110_1000_0010_0110;


//tail
#20 south_in <= 32'b1100_0000_0000_0000_0000_0000_0000_1100;
#0 north_in <= 32'b1100_0000_0011_0000_0000_0000_0000_0100;
#0 east_in <= 32'b1100_0000_0011_0000_0000_0000_0001_0100;
#0 west_in <= 32'b1100_0000_0011_0000_0000_0000_0001_1100;
#0 local_in <= 32'b1100_0000_0011_0000_0000_0000_0010_0100;
#0 local_in2 <= 32'b1100_0000_0011_0000_0000_0000_0010_1000;
#0 local_in4 <= 32'b1100_0000_0011_0000_0000_0000_0010_1000;


#20 push_north <=0;
#0 push_south <=0;
#0 push_east <=0;
#0 push_west <=0;
#0 push_local <=0; 

#30 push_north1 <=1;
#0 push_south1 <=1;
#0 push_east1 <=1;
#0 push_west1 <=1;
#0 push_local1 <=1;
#0 push_north2 <=1;
#0 push_south2 <=1;
#0 push_east2 <=1;
#0 push_west2 <=1;
#0 push_local2 <=1;
#0 push_north5 <=1;
#0 push_south5 <=1;
#0 push_east5 <=1;
#0 push_west5 <=1;
#0 push_local5 <=1;

#105 push_north1 <=0;
#0 push_south1 <=0;
#0 push_east1 <=0;
#0 push_west1 <=0;
#0 push_local1 <=0;



#105 push_north2 <=0;
#0 push_south2 <=0;
#0 push_east2 <=0;
#0 push_west2 <=0;
#0 push_local2 <=0;



#105 push_north5 <=0;
#0 push_south5 <=0;
#0 push_east5 <=0;
#0 push_west5 <=0;
#0 push_local5 <=0;


//header

#1000;
#0 push_north <=1;
#0 push_south <=1;
#0 push_east <=1;
#0 push_west <=1;
#0 push_local <=1;

#0 push_north1 <=1;
#0 push_south1 <=1;
#0 push_east1 <=1;
#0 push_west1 <=1;
#0 push_local1 <=1;

#0 push_north2 <=1;
#0 push_south2 <=1;
#0 push_east2 <=1;
#0 push_west2 <=1;
#0 push_local2 <=1;

#0 push_north5 <=1;
#0 push_south5 <=1;
#0 push_east5 <=1;
#0 push_west5 <=1;
#0 push_local5 <=1;

#20 south_in <= 32'b0000_0000_0000_0000_0000_0000_0000_1101;


//#130 south_in <= 32'b0000_0000_0000_0000_0000_0000_0000_1001;
#0 north_in <= 32'b0000_0000_0000_0000_0000_0000_0001_1001;
#0 east_in <= 32'b0000_1100_0000_0000_0000_0000_0001_0001;
#0 west_in <= 32'b0000_0000_0000_0000_0000_0000_0001_1001; //checking header
#0 local_in <= 32'b00_000011_0101_0000_0000_0000_0010_0101;
#0 local_in4 <= 32'b01_000011_0001_0000_0000_0000_0010_0101;


//body
#20 south_in <= 32'b1000_1000_1000_1000_1000_1000_0000_1010;
#0 north_in <= 32'b1000_1000_1000_1000_1000_1000_0000_0010;
#0 east_in <= 32'b1000_1000_1000_1000_1000_1000_0001_0010;
#0 west_in <= 32'b1000_1000_1000_1000_1000_1000_0001_1010;
#0 local_in <= 32'b1000_1000_1000_1000_1000_1000_0010_0010;
#0 local_in2 <= 32'b1000_1000_1000_1000_1000_1000_0010_0110;
#0 local_in4 <= 32'b1000_1100_1110_1000_1110_1000_0010_0110;


//tail
#20 south_in <= 32'b1100_0000_0000_0000_0000_0000_0000_1100;
#0 north_in <= 32'b1100_0000_0011_0000_0000_0000_0000_0100;
#0 east_in <= 32'b1100_0000_0011_0000_0000_0000_0001_0100;
#0 west_in <= 32'b1100_0000_0011_0000_0000_0000_0001_1100;
#0 local_in <= 32'b1100_0000_0011_0000_0000_0000_0010_0100;
#0 local_in2 <= 32'b1100_0000_0011_0000_0000_0000_0010_1000;
#0 local_in4 <= 32'b1100_1100_1111_0000_0000_0000_0010_1000;
*/

#10;

 end



endmodule






