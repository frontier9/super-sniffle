/**
 * Created by Kevin on 2016-09-03.
 */

function gfn_isNull(str) {
    if(str == null)
        return true;
    if(str == 'NaN')
        return true;
    if(new String(str).valueOf() == 'undefined')
        return true;

    var chkStr = new String(str);
    if(chkStr.valueOf() == 'undefined')
        return true;
    if(chkStr == null)
        return true;
    if(chkStr.toString().length == 0)
        return true;
    return false;
}

function ComSubmit(opt_formId) {
    this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
    this.url = "";

    if(this.formId == 'commonForm')
        $('#commonForm')[0].reset();

    this.setUrl = function setUrl(url) {
        this.url = url;
    }

    this.addParam = function addParam(key, value) {
        $('#'+this.formId).append("<input type='hidden' name='" + key + "' id='" + key + "' value='" + value+"' >");
        //$('#'+this.formId).append("<input type='hidden' name='${_csrf.parameterName}' id='" + key + "' value='${_csrf.token}' >");

    }

    this.submit = function submit(param, token) {
        var frm = $('#'+this.formId)[0];
        frm.url = this.url;
        frm.method = 'post';
        $(frm).attr('action', frm.url + "?" + param + "=" + token);
        frm.submit();
    }
}

var fv_ajaxCallback = "";

function ComAjax(opt_formId) {
    this.url = "";
    this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
    this.param = "";

    if(this.formId == "commonForm") {
        var frm = $("'#commonForm");
        if(frm.length > 0) {
            frm.remove();
        }
        var str = '<form id="commonForm" name="commonForm"></form>';
        $('body').append(str);
    }

    this.setUrl = function setUrl(url) {
        this.url = url;
    }

    this.setCallback = function setCallback(callBack) {
        fv_ajaxCallback = callBack;
    }

    this.addParam = function addParam(key, value) {
        this.param = this.param + '&' + key + '=' + value;
    }

    this.ajax = function ajax(){
        if(this.formId != 'commonForm') {
            this.param += '&' + $('#' + this.formId).serialize();
        }
        $.ajax({
            url: this.url,
            type: 'post',
            data: this.param,
            async: true,
            success: function(data, status) {
                if(typeof (fv_ajaxCallback) == 'function') {
                    console.log('data: ' + data + '\n' +
                                'status: ' + status);
                    fv_ajaxCallback(data);
                } else {
                    eval(fv_ajaxCallback + '(data);');
                }
            }
        });
    }
}

var gfv_pageIndex = null;
var gfv_eventName = null;
function gfn_renderPaging(params) {
    var divId = params.divId; // div id for paging
    gfv_pageIndex = params.pageIndex; // input tag for current page locator
    var totalCount = params.totalCount; // pages in total
    var currentIndex = $('#'+params.pageIndex).val(); // current locator
    if($('#'+params.pageIndex).length == 0 || gfn_isNull(currentIndex) == true) {
        currentIndex = 1;
    }

    var recordCount = params.recordCount; // the number of counts per page
    if(gfn_isNull(recordCount) == true) {
        recordCount = 20;
    }

    var totalIndexCount = Math.ceil(totalCount / recordCount) // the number of indexes (= the number of page buttons ex_) << [1][2][3][4][5][6][7][8][9] >>)
    gfv_eventName = params.eventName;

    $('#'+divId).empty();
    var preStr = '';
    var postStr = '';
    var str = '';

    var first = (parseInt((currentIndex-1) / 10) * 10) + 1;
    var last = (parseInt(totalIndexCount / 10) == parseInt(currentIndex / 10)) ? totalIndexCount%10 : 10;
    var prev = (parseInt((currentIndex-1) / 10) * 10) - 9 > 0 ? (parseInt((currentIndex-1)/10)*10) - 9 : 1;
    var next = (parseInt((currentIndex-1) / 10) + 1) * 10 + 1 < totalIndexCount ? (parseInt((currentIndex-1) / 10) + 1) * 10 + 1 : totalIndexCount;

    if(totalIndexCount > 10) {
        preStr += '<a href ="#this" class="pad_5" onclick="_movePage(1)"> [<<] </a>' +
                "<a href='#this' class='pad_5' onclick='_movePage(" + prev + ")'> [<] </a> ";
    } else if(totalIndexCount <= 10 && totalIndexCount > 1) {
        preStr += "<a href='#this' class='pad_5' onclick='_movePage(1)'> [<<] </a>";
    }

    if(totalIndexCount > 10) {
        postStr += "<a href='#this' class='pad_5' onclick='_movePage(" + next + ")'> [>] </a>" +
                "<a href='#this' class='pad_5' onclick='_movePage(" + totalIndexCount + ")'> [>>] </a>";
    } else if(totalIndexCount <= 10 && totalIndexCount > 1) {
        postStr += "<a href='#this' class='pad_5' onclick='_movePage(" + totalIndexCount + ")'> [>>] </a>";
    }

    for(var i=first; i<(first+last); i++) {
        if(i != currentIndex) {
            str += "<a href='#this' class='pad_5' onclick='movePage(" + i + ")'>" + i + "</a>";
        } else {
            str += "<strong><a href='#this' class='pad_5' onclick='movePage(" + i + ")'>" + i + "</a></strong>";
        }
    }
    $('#'+divId).append(preStr + str + postStr);
}

function _movePage(value) {
    $('#' + gfv_pageIndex).val(value);
    if(typeof(gfv_eventName) == 'function') {
        gfv_eventName(value);
    } else {
        eval(gfv_eventName + '(value);');
    }
}





















