// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function isMemeberOfAdmin(){
	alert(inline_editor.currentUserIsMemeberOf("admins") ? "yes" : "no");
	return false;
}

function hasPermissionsGlobalRoot(){
alert(inline_editor.currentUserHasGlobalPermission(permissionGlobalRoot) ? yes : no);
return false;
}

$().ready(function(){
	$('#isMemberOfAdmins').click(isMemeberOfAdmin);
}
);


