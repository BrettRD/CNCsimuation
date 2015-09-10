function [t,pos,vel,force] = simulate(timestep, runlength)
	pos(1) = 0;
	vel(1) = 0;
	force(1) = 0;
	des(1)=0;
	for t=2:ceil(runlength/timestep)
		force(t) = controller(pos(t-1), des(t-1), vel(t-1));
		[pos(t), vel(t)] =  mass(force(t), pos(t-1), vel(t-1), timestep);
		des(t) = curve(t*timestep);

	endfor

	t=1:ceil(runlength/timestep);

	size(t)
	size(pos)

	plot(t*timestep, pos(t),"-;pos;",t*timestep, force(t),"-;force;", t*timestep, des(t),"-;desired;")

endfunction