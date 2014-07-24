//Ccore.print("Hello World!!");

function showInDialog(str) {
	var ret = Ccore.launchApp("/usr/share/applications/gedit.desktop");
	if(!ret) Ccore.show("Launch failed!");
	else Ccore.show("Launch success");
	alert("Launch success!");

	//Ccore.show(str);
}
