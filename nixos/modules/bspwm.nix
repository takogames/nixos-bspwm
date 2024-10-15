
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
		 shadow = true;
		 fade = true;
		 shadowExclude = [
  			"name = 'Polybar$'"
				];
		 vSync = true;

	   	 #settings.blur =
 		 #{ method = "gaussian";
 		 #   size = 10;
		 #   deviation = 5.0;
		 # };
		 #settings = builtins.readFile /etc/xdg/picom.conf;
		};
		

#      services.xserver.displayManager.lightdm.enable = true;
 #     services.displayManager = {
   #   enable = true;
#      autoLogin.enable = true;
#      autoLogin.user = "tonii";
#    };
  services.xrdp.defaultWindowManager = "bspwm";
}

