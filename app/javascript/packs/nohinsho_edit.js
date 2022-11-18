(jQuery)("#nohinsho_tori_cd").blur(function () {
    let cd = (jQuery)("#nohinsho_tori_cd").val();
    cd = "000000" + cd;
    cd = cd.slice(-6);
    (jQuery)("#nohinsho_tori_cd").val(cd);
});
