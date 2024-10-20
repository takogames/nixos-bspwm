
{ config, lib, pkgs, ...}: with lib;

{
	services.xserver = {
		enable = true;
		xkb.layout = "us";
		xkb.options = "eurosign:e";

	  windowManager.bspwm.enable = true;
	  #windowManager.bspwm.package = "pkgs.bspwm-unstable"
		windowManager.bspwm.configFile = "/etc/bspwm/bspwmrc";
		windowManager.bspwm.sxhkd.configFile= "/etc/bspwm/sxhkdrc";
		desktopManager.xterm.enable = false;
	};
    	services.picom = {
  	  	 enable = true;
                 #package = pkgs.picom-unstable;
		 backend = "glx";
		 shadow = true;
		 shadowOpacity = 0.5;
		 shadowExclude = [
 			 "name ~= 'polybar$'"
			];
		 fade = true;

		 vSync = true;
		 settings = {
			corner-radius = 7;
			#inactive-dim = 0.2;
 		 blur.method = "gaussian";
 		    blur.size = 10;
		    blur.deviation = 5.0;
	 	 detect-rounded-corners = true;
		 detect-client-opacity = true;
		 detect-transient = true;

		 };

		};
		

#      services.xserver.displayManager.lightdm.enable = true;
 #     services.displayManager = {
   #   enable = true;
#      autoLogin.enable = true;
#      autoLogin.user = "tonii";
#    };
  services.xrdp.defaultWindowManager = "bspwm";
  hardware.opentabletdriver.enable = true;
}

