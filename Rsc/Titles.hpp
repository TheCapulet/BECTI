class RscTitles {
	
	titles[] = {CTI_CaptureBar};
	
	class CTI_CaptureBar {
		idd = 600100;
		duration = 15000;
		name = "Capture Bar";
		onLoad = "uiNamespace setVariable ['cti_title_capture', _this select 0]";
		onUnload = "uiNamespace setVariable ['cti_title_capture', displayNull]";
		
		class controls {
			class CTI_Progress : RscProgress {
				idc = 601000;
				x = "SafeZoneX + (SafeZoneW * 0.6)";
				y = "((SafeZoneH + SafeZoneY) - (1 + 0.07))*-1";
				w = 0.4;
				h = 0.06;
			};
			
			class CTI_Progress_Label : RscText {
				idc = 601001;
				style = ST_CENTER;
				colorText[] = {0.258823529, 0.713725490, 1, 1};
				shadow = 2;
				// x = 0.31;
				x = "SafeZoneX + (SafeZoneW * 0.6)";
				w = 0.4;
				y = "((SafeZoneH + SafeZoneY) - (1 + 0.079))*-1";
			};	
			
			class CTI_Intel_Label : RscText {
				idc = 601002;
				style = ST_RIGHT;
				colorText[] = {1,1,1,1};
				shadow = 2;
				x = "SafeZoneX + (SafeZoneW * 0.6)";
				w = 0.4;
				y = "((SafeZoneH + SafeZoneY) - (1 + 0.139))*-1";
			};
			
			class CTI_Com_Label : CTI_Intel_Label {
				idc = 601003;

				y = "((SafeZoneH + SafeZoneY) - (1 + 0.18))*-1";
			};
			
			class CTI_Upgrade_Label : CTI_Intel_Label {
				idc = 601004;

				y = "((SafeZoneH + SafeZoneY) - (1 + 0.221))*-1";
			};
		};
	};
};

// class RscTitles {
	
	// titles[] = {CTI_CaptureBar};
	
	// class CTI_CaptureBar {
		// idd = 600100;
		// duration = 15000;
		// name = "Capture Bar";
		// onLoad = "uiNamespace setVariable ['cti_title_capture', _this select 0]";
		// onUnload = "uiNamespace setVariable ['cti_title_capture', displayNull]";
		
		// class controls {
			// class CTI_Progress_Bar_Background : RscText {
				// style = ST_TEXT_BG;
				// idc = 601000;
				// x = 0.3;
				// y = "((SafeZoneH + SafeZoneY) - (1 + 0.165))*-1";
				// w = 0.4;
				// h = 0.06;
				// colorBackground[] = {0,0,0,0.001};
			// };
				
			// class CTI_Progress_Bar : CTI_Progress_Bar_Background {
				// idc = 601001;
				// x = 0.31;
				// y = "((SafeZoneH + SafeZoneY) - (1 + 0.175))*-1";
				// w = 0.38;
				// h = 0.04;
			// };
			
			// class CTI_Progress_Label : RscText {
				// idc = 601002;
				// style = ST_CENTER;
				// colorText[] = {0.258823529, 0.713725490, 1, 1};
				// shadow = 2;
				// x = 0.31;
				// w = 0.38;
				// y = "((SafeZoneH + SafeZoneY) - (1 + 0.177))*-1";
			// };
		// };
	// };
// };