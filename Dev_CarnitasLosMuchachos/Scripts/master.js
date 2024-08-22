console.log("master");

$(document).ready(function () {
    console.log("ready! master");
    

    $(".setlnkUserid").on("click", function () {

        var arr = window.parent.document.getElementsByTagName("iframe");
        //console.log(arr)
        var usuario = "";
        $.each(arr, function (i, fr) {

            if ($(fr).prop("id") === "mainFrame") {
                //console.log($(fr).prop("src").split("?")[1].split("=")[1])
                usuario = $(fr).prop("src").split("?")[1].split("&")[0].split("=")[1]
               // $(fr).prop("src", "../../Dev_DashboardClientes/dashboard.aspx?userid=" + usuario)
            }
        });

        console.log("set userid")
        console.log(usuario)
        console.log($(this).attr("href"), $(this).attr("href") + "?userid=" + usuario);
        console.log($(this).prop("href"));

    });
});