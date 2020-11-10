// JavaScript Document
var p = {

    0: "10000",
    1: "15000",
    2: "20000",
    3: "25000",
    4: "30000",
    5: "35000",
    6: "40000",
    7: "45000",
    8: "50000",
    9: "55000",
    10: "60000",
    11: "65000",
    12: "70000",
    13: "75000",
    14: "80000",
    15: "85000",
    16: "90000",
    17: "95000",
    18: "100000",
    19: "110000",
    20: "120000",
    21: "130000",
    22: "140000",
    23: "150000",
    24: "160000",
    25: "170000",
    26: "180000",
    27: "190000",
    28: "200000",
};

var t = {

    0: "10000",
    1: "15000",
    2: "20000",
    3: "25000",
    4: "30000",
    5: "35000",
    6: "40000",
    7: "45000",
    8: "50000",
    9: "55000",
    10: "60000",
    11: "65000",
    12: "70000",
    13: "75000",
    14: "80000",
    15: "85000",
    16: "90000",
    17: "95000",
    18: "100000",
    19: "110000",
    20: "120000",
    21: "130000",
    22: "140000",
    23: "150000",
    24: "160000",
    25: "170000",
    26: "180000",
    27: "190000",
    28: "200000",

}

var obj = {
    '24month' : {
        'quarterly' : '1.41',
        'monthly' : '1.28',
        'weekly' : '1.2'
    },
    '18month' : {
        'quarterly' : '1.38',
        'monthly' : '1.25',
        'weekly' : '1.17'
    },
    '12month' : {

        'quarterly' : '1.35',
        'monthly' : '1.225',
        'weekly' : '1.15'
    }
};

$(document).ready(function() {

    $("#total").val("10000");



    $("#slider_amirol").slider({
        range: "min",
        animate: true,

        min: 0,
        max: 28,
        step: 1,
        slide:
            function(event, ui)
            {
                update(1,ui.value); //changed
                calcualtePrice(ui.value);
            }
    });

    $('.month').on('click',function(event) {
        var id = $(this).attr('id');

        $('.month').removeClass('selected-month');
        $(this).addClass('selected-month');
        $(".month").removeClass("active-month");
        $(this).addClass("active-month");

        $('#month').val(id);

        calcualtePrice()
    });

    $('.term').on('click',function(event) {
        var id = $(this).attr('id');

        $('.term').removeClass('selected-term');
        $(this).addClass('selected-term');
        $(".term").removeClass("active-term");
        $(this).addClass("active-term");
        $('#term').val(id);

        calcualtePrice()
    });

    update();
    calcualtePrice();
});



function update(slider,val) {

    if(undefined === val) val = 0;
    var amount = p[val];

    $('#sliderVal').val(val);

    $('#slider_amirol a').html('<label><span class="glyphicon glyphicon-chevron-left"></span> '+amount+' <span class="glyphicon glyphicon-chevron-right"></span></label>');
}

function calcualtePrice(val){

    if(undefined === val)
        val = $('#sliderVal').val();

    var month = $('#month').val();
    var term = obj[month][$('#term').val()];

    var totalPrice = t[val]*term;

    $("#total").val(totalPrice.toFixed(2));
    $("#total12").val(Math.round((totalPrice)/12).toFixed(2));
    $("#total52").val(Math.round((totalPrice)/52).toFixed(2));
}