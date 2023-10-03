namespace WebView {
	const var wv = Content.getComponent("WebView1")
	
	const var webroot = FileSystem.getFolder(FileSystem.AudioFiles).getParentDirectory().getChildFile("Images/video");
	
	wv.reset();
	wv.setIndexFile(webroot.getChildFile("index.html"));
	
	wv.set("enableCache", true);
	
	wv.set("enablePersistence", true);
	
	wv.bindCallback("getRoute", function(args)
	{
		if (args[0] == 'about') {
			Controls.showAbout();
		}
	});
	
	inline function shouldPlay(play) {
		wv.callFunction("playVideo", play);
	}
	
}