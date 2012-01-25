function structure_load() {
		$("#organization-structure").hide()
		$("#parent-internal-org-form").submit( function() {
				$("#organization-structure").show()
				$("#parent-internal-org-name").text($("#parent-internal-name").val())
				$("#parent-internal-org").hide()
				return false
		})
}