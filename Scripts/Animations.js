namespace Animation {
	
	reg sound = 0.0;
	reg threshold = 0.5;
	
	const var Analyser1 = Synth.getEffect("Analyser1");
	const var vuMeter = Content.getComponent("vuMeter");
	
	var SoundTimer = Engine.createTimerObject();
	SoundTimer.setTimerCallback(onSoundTimer);
	inline function onSoundTimer() {
		if (sound > getNormalizedPeakValue(Analyser1.getCurrentLevel(false)) + 0.02) {
			sound = sound + About.smoothing_value;
		} else {
			sound = getNormalizedPeakValue(Analyser1.getCurrentLevel(false));
		}
		vuMeter.setValue(sound);
		
		if (sound > threshold ) {
			WebView.shouldPlay(true);
		} else {
			WebView.shouldPlay(false);
		}
	};
	
	SoundTimer.startTimer(30);
	function getNormalizedPeakValue(gain) {
		return 0.01 * (100.0 + Engine.getDecibelsForGainFactor(gain));
	}
}