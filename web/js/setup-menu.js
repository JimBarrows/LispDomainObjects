/**All of the javascript related to the setup-menu.html*/

function setup_menu_load () {
		$("#structure-menu").click( function() {
				$("#content").load("structure.html", function() {
						structure_load()
				})
		})
}