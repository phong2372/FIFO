module ha(
   ha_cinext,
	ha_di,
	ha_qi,
	ha_ci,
);
	output ha_di,ha_cinext; 
	input ha_ci,ha_qi; 
	
	xor(ha_di,ha_qi,ha_ci);
	and(ha_cinext,ha_qi,ha_ci);
endmodule 
	
