function [pos, vel] =  mass(force, oldPos, oldVel, timestep)
	m = 1;
	pos = oldPos + oldVel*timestep + (1/2)*(force/m)*timestep^2;
	#pos = oldPos + oldVel*timestep;
	
	vel = oldVel + (force/m)*timestep;
endfunction