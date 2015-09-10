function force = controller(act, des, vel)
	kp=-10;
	kd = -5;
	posError = act - des;

	force = kp*(posError);	#proportional controller
	force += kd*vel;
endfunction



