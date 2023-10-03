namespace About {
	
	const var logo = Content.getComponent("logo");
	const var website_link = Content.getComponent("website_link");
	const var youtube_link = Content.getComponent("youtube_link");
	const var heart = Content.getComponent("heart");
	const var VuMeterSlider = Content.getComponent("vuMeterSlider");
	const var smoothing = Content.getComponent("smoothing");
	
	reg smoothing_value = 0.0;
	
	website_link.setControlCallback(onWebsite);
	youtube_link.setControlCallback(onYoutube);
	
	inline function onWebsite(component, value) {
		if (value) {
			Engine.openWebsite('https://www.youtube.com/channel/UCJfRn0mxY61a5cYVBqEc9Zg');
		}
	}
	
	inline function onYoutube(component, value) {
		if (value) {
			Engine.openWebsite('https://sinuslabs.io/');
		}
	}
	
	Content.getComponent("ComboBox1").setControlCallback(onComboBox1Control);
	
	const ZOOM_FACTORS = [
		0.3,
		0.4,
		0.5,
		0.75,
		1.0,
		1.2,
		1.5,
		2.0,
	];
	
	inline function onComboBox1Control(component, value)
	{
		if (value) {
			Settings.setZoomLevel(ZOOM_FACTORS[value]);
		}
	};
	
	
	smoothing.setControlCallback(onSmoothing);
	
	inline function onSmoothing(component, value) {
		smoothing_value = ((value / 100) - 1.5);
	}
	
	logo.setPaintRoutine(logoRoutine);
	heart.setPaintRoutine(heartRoutine);
	
	inline function logoRoutine(g) {
		local icon = '0xA7B8BE';
		local a = this.getLocalBounds(1);
		g.setColour(icon);
		g.fillPath(Icons.get.logo, a);
	}
	
	inline function heartRoutine(g) {
		local icon = '0xF97078';
		local a = this.getLocalBounds(1);
		g.setColour(icon);
		g.fillPath(Icons.get.heart, a);
	}
	
	VuMeterSlider.setControlCallback(onSlider);
	
	inline function onSlider(component, value) {
		Animation.threshold = value;
	}
	
	const var iconButton = Content.createLocalLookAndFeel();
	iconButton.registerFunction('drawToggleButton', floatButtonGraphics);
	
	inline function floatButtonGraphics(g, obj) {
		
		local a = obj.area;
		
		g.setColour('0xA7B8BE');
		
		obj.over && g.setColour(Colours.white);
		
		g.drawAlignedText(obj.text, a, 'left');
		
		local iconA = [a[2] - 40, 15, 15, 15];
		g.fillPath(Icons.get.arrow, iconA);
		
	}
	
	const LAF_textKnob = Content.createLocalLookAndFeel();
	LAF_textKnob.registerFunction('drawRotarySlider', textKnobLAF);
	inline function textKnobLAF(g, obj) {
		
		local a = obj.area;
		local value = obj.valueNormalized * 100;
		
		g.setColour(Colours.white);
		g.drawAlignedText(Engine.doubleToString(value, 1) + '%', a, 'centred');
	}
	smoothing.setLocalLookAndFeel(LAF_textKnob);
	
	
	const LAF_displaySlider = Content.createLocalLookAndFeel();
	LAF_displaySlider.registerFunction('drawRotarySlider', displaySlidersLAF);
	inline function displaySlidersLAF(g, obj) {
		local a = obj.area;
		
		local DOT_SIZE = 9;
		local thickness = 1;
		
		local SLIDER_HEIGHT = 1;
		local LINE_THICKNESS = 2;
		local DOT_MAX_TRAVEL = 0.95;
		local DOT_RADIUS = 1;
		
		
		g.setColour('0xA7B8BE');
		local value = obj.valueNormalized;
		
		local x = a[2] / 2 - DOT_SIZE / 2;
		local y = a[3] * DOT_MAX_TRAVEL * (1 - value);
		local dot_area = [x - 5, y, DOT_SIZE + 10, DOT_SIZE];
		g.drawLine(a[2] / 2, a[2] / 2, 0, a[3] * SLIDER_HEIGHT, LINE_THICKNESS);
		g.fillRoundedRectangle(dot_area, DOT_RADIUS);;
	}
	
	VuMeterSlider.setLocalLookAndFeel(LAF_displaySlider);
	website_link.setLocalLookAndFeel(iconButton);
	youtube_link.setLocalLookAndFeel(iconButton);
}