function check() {
    if(frm.name.value == "" || frm.password.value == ""){
        alert("不能为空");
        return false;
    }
    else {
        return true;
    }
}