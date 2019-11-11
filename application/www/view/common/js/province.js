var defaults = {
    s1: 'provid',
    s2: 'cityid',
    s3: 'areaid',
    v1: null,
    v2: null,
    v3: null
};
var $form;
var form;
layui.define(['form'], function () {
    form = layui.form;
    $form = $('form');
    treeSelect(defaults);
});

function treeSelect(config) {
    config.v1 = config.v1 ? config.v1 : '北京市';
    config.v2 = config.v2 ? config.v2 : '北京市';
    config.v3 = config.v3 ? config.v3 : '东城区';

    $.each(threeSelectData.province_list, function (k, v) {
        appendOptionTo($form.find('select[id=' + config.s1 + ']'), v, config.v1);
    });

    form.render();

    cityEvent(config);

    areaEvent(config);

    form.on('select(' + config.s1 + ')', function (data) {
        cityEvent(data);
        form.on('select(' + config.s2 + ')', function (data) {
            areaEvent(data);
        });
    });

    function cityEvent(data) {
        $form.find('select[id=' + config.s2 + ']').html("");
        config.v1 = data.value ? data.value : config.v1;
        let provinceKey = getItemKey(config.v1,'province');
        $.each(threeSelectData.city_list, function (k, v) {
            if (k.substring(0,2) == provinceKey.substring(0,2)) {          
                appendOptionTo($form.find('select[id=' + config.s2 + ']'), v, config.v2);
            }
        });
        form.render();
        config.v2 = $('select[id=' + config.s2 + ']').val();
        areaEvent(config);
    }

    function areaEvent(data) {
        $form.find('select[id=' + config.s3 + ']').html("");
        config.v2 = data.value ? data.value : config.v2;
        let cityKey = getItemKey(config.v2,'city');
        $.each(threeSelectData.county_list, function (k, v) {
            if (k.substring(0,4) == cityKey.substring(0,4)) {          
                appendOptionTo($form.find('select[id=' + config.s3 + ']'), v, config.v3);
            }
        });
        form.render();
        form.on('select(' + config.s3 + ')', function (data) { });
    }

    function appendOptionTo($o , v , d) {
        var $opt = $("<option>").text(v).val(v);
        if (v == d) { $opt.attr("selected", "selected") }
        $opt.appendTo($o);
    }

    function getItemKey(cityName,type){
        let key = '';
        let itemData;
        if(type=='province'){
            itemData = threeSelectData.province_list;
        }else if(type=='city'){
            itemData = threeSelectData.city_list
        }else{
            itemData = threeSelectData.county_list
        }
        $.each(itemData, function (k, v) {            
            if (v == cityName) {
                key = k;
                return false;
            }
        });
        return key;
    }
}