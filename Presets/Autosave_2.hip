Processor 
Type SynthChain ID 	Showoff Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script Qinclude("WebView.js");
include("StyleHelpers.js");
include("Icons.js");
include("Animations.js");
include("Controls.js");
include("About.js");
	
Content.makeFrontInterface(500, 500);function onNoteOn()
{
	
}
 function onNoteOff()
{
	
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptSlider id animation value 	         Control type ScriptSlider id vuMeterSlider value 	   @�z�? Control type ScriptComboBox id ComboBox1 value 	      @ Control type ScriptSlider id smoothing value 	     �b@ Control type ScriptSlider id 	vuMeter value 	         UIData  ContentProperties DeviceType 	Desktop Component type ScriptPanel id route_main x 	        y 	        width 	     @@height 	     @@Component type ScriptWebView id 
WebView1 x 	        y 	        parentComponent route_main width 	     @@height 	     @@enableCache     Component type ScriptPanel id route_about x 	        y 	        width 	     @@height 	     @@allowCallbacks Clicks Only itemColour 4278584838 itemColour2 4278584838 opaque 1 visible     Component 
type ScriptSlider id animation x 	     Ps@y 	      $@width 	     �J@height d   parentComponent route_about max 	      @stepSize 1.0 defaultValue 	      @ Component type ScriptPanel id logo x 	     �k@y 	      Y@parentComponent route_about width 	      N@height 	      N@ Component type ScriptButton id website_link x 	     �g@y 	     �k@parentComponent route_about width 	     �a@height 	      D@text sinuslabs.io saveInPreset 0 enableMidiLearn 0 isMomentary 1  Component type ScriptButton id youtube_link x 	     �g@y 	     @p@parentComponent route_about width 	     �a@height 	      D@text 	youtube saveInPreset 0 enableMidiLearn 0 isMomentary 1  Component type ScriptLabel id Made in berlin x 	     @e@y 	     �f@parentComponent route_about text Made in berlin with editable 0 fontSize 	      ,@ Component type ScriptPanel id heart x 	     pr@y 	      g@parentComponent route_about width 	      4@height 	      4@ Component 	type ScriptSlider id vuMeterSlider x 	     �Q@y 	      ^@parentComponent route_about width 	      >@height 	     @o@text IN defaultValue 	      �? Component 
type ScriptLabel id Label1 x 	      4@y 	     �w@parentComponent route_about width 	     �V@height 	     �Q@text ANIMATION THRESHOLD textColour 4289181886 editable 0  Component type ScriptComboBox id ComboBox1 x 	     �g@y 	      w@max    parentComponent route_about items "0.3
0.4
0.5
0.75
1.0
1.2
1.5
2.0 text Zoom  Component type ScriptSlider id smoothing x 	      >@y 	      N@parentComponent route_about width 	      N@height 	      D@max 	     �b@mode 
Discrete middlePosition 	     �b@min 	     �`@stepSize 	   ����?defaultValue 	     �b@ Component type ScriptSlider id 	vuMeter x 	      D@y 	      ^@parentComponent route_about width 	      4@height 	     @o@style 
Vertical showTextBox 0 scrollWheel 0 enableMidiLearn 0 bgColour 4278190080 itemColour 4294967295 itemColour2 4227858431  Component 
type ScriptLabel id smoothing label x 	      4@y 	     �A@parentComponent route_about text Smoothing width 	      T@height 	      >@editable 0 textColour 4289181886  Component type ScriptLabel id Zoom_label x 	     �g@y 	     @u@parentComponent route_about text zoom editable 0 textColour 4289181886  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type 
Analyser ID Analyser1 Bypassed BufferSize 	      �@PreviewType 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 0.0 midi_cc -1  macro name 	Macro 2 value 0.0 midi_cc -1  macro name 	Macro 3 value 0.0 midi_cc -1  macro name 	Macro 4 value 0.0 midi_cc -1  macro name 	Macro 5 value 0.0 midi_cc -1  macro name 	Macro 6 value 0.0 midi_cc -1  macro name 	Macro 7 value 0.0 midi_cc -1  macro name 	Macro 8 value 0.0 midi_cc -1  MidiAutomation   MPEData Enabled  