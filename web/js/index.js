$(document).ready(function() {
		$("#setup-menu").click(function () {
				$("#bottom-nav").load("setup-menu.html", function() { 
						setup_menu_load()
						$("#content").load("setup.html", function() {
								setup_load()
						})
				})
				
				
		})

})

function addTabNavigation( tabSelector) {
		$(tabSelector + " > div").hide()
		$(tabSelector + " > div").eq(0).show()
		$("ul.tabs a").click(
				function() {
						$("ul.tabs a.selected").removeClass("selected");
						$(tabSelector + " > div").hide()
						$(""+$(this).attr("href")).fadeIn("slow")
						$(this).addClass("selected")
						return false
				})
}