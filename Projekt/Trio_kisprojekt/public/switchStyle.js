function switchStyle(cssFile, cssLinkIndex) {
	var oldLink = document.getElementsByTagName("link").item(cssLinkIndex);
	var newLink = document.createElement("link");
	newLink.setAttribute("rel", "stylesheet");
	newLink.setAttribute("type", "text/css");
	newLink.setAttribute("href", cssFile);
	document.getElementsByTagName("head").item(0).replaceChild(newLink, oldLink);
}