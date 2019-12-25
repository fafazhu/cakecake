$(()=>{
    $(".right_list>ul").on("mouseover","img",function(){
        $(".img-banner>div>img").attr("src",$(this).attr("src"));
    });
});
/*
window.addEventListener("load",function(){
    var arr=document.querySelectorAll(
        "div.right_list>ul img"
    )
    document.getElementsByClassName("right_list").onmouseover()

})
*/