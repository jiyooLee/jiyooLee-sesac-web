/**
 * 내가 만든 이것저것 함수들...
 */


// Form에서 입력데이터 유무 체크
function isNull(obj, msg) {
	if(obj.value == '') {
		alert(msg)
		obj.focus()
		return true
	}
	return false
}