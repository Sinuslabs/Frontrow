Processor 
Type SynthChain ID 	Showoff Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script �Content.makeFrontInterface(500, 500);

                             
reg MODE = 'normal';

namespace WebView {
	
	
	// Grab a reference to our little budddy
	const var wv = Content.getComponent("WebView1")
	
	// That's a bit ugly, but we grab the image folder by getting the HISE project AudioFiles folder
	// and then doing some next level-hacking to get a subdirectory of the Images folder which I think is a nice
	// place for web stuff...
	const var webroot = FileSystem.getFolder(FileSystem.AudioFiles).getParentDirectory().getChildFile("Images/video");
	
	// Call this to make sure that there is no intermediate temp stuff being carried around
	wv.reset();
	
	// set the index file
	wv.setIndexFile(webroot.getChildFile("index.html"));
	
	
	// This is set to true so that when you export it, the files will be embedded...
	wv.set("enableCache", false);
	
	wv.set("enablePersistence", true);
	
	wv.bindCallback("getRoute", function(args)
	{
	
		Console.print(trace(args));

	});
	
}

include("StyleHelpers.js");
include("Icons.js");
include("Animations.js");
include("Controls.js");
include("About.js");

	
function onNoteOn()
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
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptSlider id vuMeterSlider value 	   ���? UIData  ContentProperties DeviceType 	Desktop Component type ScriptPanel id route_main x 	        y 	        width 	     @@height 	     @@Component type ScriptWebView id 
WebView1 x 	        y 	        parentComponent route_main width 	     �@height 	     @@ Component type ScriptPanel id route_about x 	        y 	        width 	     @@height 	     @@allowCallbacks Clicks Only visible     
Component type ScriptPanel id logo x 	     @j@y 	      Y@parentComponent route_about width 	      T@height 	      T@ Component 	type ScriptButton id website_link x 	     �g@y 	     �p@parentComponent route_about width 	     �a@height 	      D@text sinuslabs.io saveInPreset 0  Component 	type ScriptButton id youtube_link x 	     �g@y 	     `s@parentComponent route_about width 	     �a@height 	      D@text 	youtube saveInPreset 0  Component type ScriptLabel id Made in berlin x 	     �f@y 	     �k@parentComponent route_about text Made in berlin with editable 0 fontSize 	      ,@ Component type ScriptPanel id heart x 	     s@y 	     �k@parentComponent route_about width 	      4@height 	      4@ Component 	type ScriptSlider id vuMeterSlider x 	     �Q@y 	      ^@parentComponent route_about width 	      >@height 	     @o@text IN defaultValue 	      �? Component type ScriptFloatingTile id FloatingTile1 x 	      D@y 	     �]@parentComponent route_about ContentType MatrixPeakMeter bgColour 4278190080 itemColour 4283782485 itemColour2 4280427042 Data {
  "ProcessorId": "Analyser1",
  "Index": 0,
  "FollowWorkspace": false,
  "SegmentLedSize": 0.0,
  "UpDecayTime": 0.0,
  "DownDecayTime": 0.0,
  "UseSourceChannels": false,
  "SkewFactor": 0.1,
  "PaddingSize": 1.0,
  "ShowMaxPeak": 1.0,
  "ChannelIndexes": [
    0,
    1
  ]
} width 	      4@height 	     @o@ Component 
type ScriptLabel id Label1 x 	      4@y 	     �w@parentComponent route_about width 	     �V@height 	     �Q@text ANIMATION THRESHOLD textColour 4289181886 editable  Component type ScriptButton id PixelSwitch x 	     @j@y 	     @z@parentComponent route_about width 	     �V@height 	      D@saveInPreset  Component type ScriptLabel id PixelModeLabel x 	     @j@y 	     `x@parentComponent route_about text PIXEL MODE editable alignment left width 	      Y@height 	      >@fontSize 	      ,@textColour 	����     Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type 
Analyser ID Analyser1 Bypassed BufferSize 	      �@PreviewType 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 0.0 midi_cc -1  macro name 	Macro 2 value 0.0 midi_cc -1  macro name 	Macro 3 value 0.0 midi_cc -1  macro name 	Macro 4 value 0.0 midi_cc -1  macro name 	Macro 5 value 0.0 midi_cc -1  macro name 	Macro 6 value 0.0 midi_cc -1  macro name 	Macro 7 value 0.0 midi_cc -1  macro name 	Macro 8 value 0.0 midi_cc -1  MidiAutomation   MPEData Enabled  