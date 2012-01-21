function structure_load() {
		$("#organization-structure").hide()
//		$("#create-parent-internal-org").click(function(){
	//			$("#organization-structure").show()
		//		$("#parent-internal-org").hide()
//		})
		$("#parent-internal-org-form").submit( function() {
				$("#organization-structure").show()
				$("parent-internal-org-name").text($("parent-internal-name").value())
				$("#parent-internal-org").hide()
				return false
		})
}