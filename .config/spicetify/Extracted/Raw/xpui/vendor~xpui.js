if (_.popper?.firstChild?.id === "context-menu") {
    const container = _.popper.firstChild;
	if (!container.children.length) {
		const observer = new MutationObserver(() => {
			Spicetify.ContextMenu._addItems(_.popper);
			observer.disconnect();
		});
		observer.observe(container, { childList: true });
    } else if (container.firstChild.classList.contains("main-userWidget-dropDownMenu")) {
        Spicetify.Menu._addItems(_.popper);
    } else {
		Spicetify.ContextMenu._addItems(_.popper);
	}