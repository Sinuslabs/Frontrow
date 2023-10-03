namespace Controls {
	
	const var route_main = Content.getComponent("route_main");
	const var route_about = Content.getComponent("route_about");
	
	reg isTopRight = true;
	
	Controls.showMain();
	
	const TOP_RIGHT_SIZE = 75;
	
	route_about.setMouseCallback(onAbout);
	
	inline function onAbout(event) {
		if (event.clicked) {
			local detectionWidth = this.getWidth() - TOP_RIGHT_SIZE;
			local detectionHeight = TOP_RIGHT_SIZE;
			isTopRight = isInTopRightMouseCorner(event.x, event.y, detectionWidth, detectionHeight);
			if (isTopRight) {
				showMain();
			}
		}
	}
	
	inline function showAbout() {
		route_main.set('visible', false);
		route_about.set('visible', true);
	};
	
	inline function showMain() {
		route_main.set('visible', true);
		route_about.set('visible', false);
	}
	
	
	inline function isInTopRightMouseCorner(x, y, detectionWidth, detectionHeight) {
	    return x >= detectionWidth && y <= detectionHeight;
	}
	
	
	inline function aboutRoutine(g) {
		
		local bgColor = '0x060606';
		local bgColorSelected = '0xA7B8BE';
		local icon = '0xA7B8BE';
		local iconSelected = '0x060606';
	
		local a = this.getLocalBounds(0);
		g.setColour(bgColor);
		if (isTopRight) {
			g.setColour(bgColorSelected);
		}
		local topA = [a[2] - 60, 10, 50, 50];
		local topIconA = StyleHelpers.addPadding(topA, 15);
		g.fillRoundedRectangle(topA, 4);
		
		g.setColour(icon);
		
		if (isTopRight) {
			g.setColour(iconSelected);
		}
		g.fillPath(Icons.get.smile, topIconA);
	}
	
	route_about.setPaintRoutine(aboutRoutine);
	
}




