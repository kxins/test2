function check() {

    var flag = true;

    // 名称
    var mc = document.getElementById("mc");
    var inp = mc.getElementsByTagName("input")[0].value;

    if(inp.length<=5 || inp.length>=20){
        mc.getElementsByTagName("span")[0].innerText="*20位字符";
        flag = false;
    }
    else {
        mc.getElementsByTagName("span")[0].innerText="*";
    }

    //学分
    var xf = document.getElementById("xf");
    var inp = xf.getElementsByTagName("input")[0].value;

    if(inp.length<1 || isNaN(inp)){
        xf.getElementsByTagName("span")[0].innerText="*数值";
        flag = false;
    }
    else {
        xf.getElementsByTagName("span")[0].innerText="*";
    }

    //开始年级
    var ksnj = document.getElementById("ksnj");
    var inp = ksnj.getElementsByTagName("input")[0].value;


    if(Math.floor(inp) === inp || inp.length != 4 || isNaN(inp)){
        ksnj.getElementsByTagName("span")[0].innerText="*4位整数年份";
        flag = false;
    }
    else {
        ksnj.getElementsByTagName("span")[0].innerText="*";
    }

    //备注
    var bz = document.getElementById("bz");
    var inp = bz.getElementsByTagName("textarea")[0].value;


    if(inp.length >200 ){
        bz.getElementsByTagName("span")[0].innerText="*200字以内";
        flag = false;
    }
    else {
        bz.getElementsByTagName("span")[0].innerText="*";
    }

    if(flag){
        alert("保存成功");
    }
}