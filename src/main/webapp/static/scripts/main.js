//定义全局变量
var myDataTable;

$(document).ready(function () {
    layer.config({
        extend: ['skin/ptz/style.css']
    });

    $('[data-toggle="tooltip"]').tooltip();

    //选中的导航
    var data_menu = $('div[data-menu]').attr('data-menu');
    var li_menu = $('li.' + data_menu);
    $(li_menu).addClass('active').find('a').attr("href", "javascript:;");
    $('.main-menu').removeClass('active');
    if ($(li_menu).hasClass('main-menu')) {
        $(li_menu).addClass('active')
    } else {
        $(li_menu).parents('.main-menu').addClass('active').find('a:eq(0)').append('<span class="selected"></span>').find('span.arrow').addClass('open');
    }

    //表格中的点击选中
    $('#mytable').on('click', 'tbody tr', function () {
        $(this).toggleClass('tr-selected').find('td').toggleClass('tr-selected');
        crudBtnStatus();
    });
    $('#mytable').on('draw.dt', crudBtnStatus);
    $('#mytable').on('page.dt', function () {
        $('#mytable tbody tr').removeClass('tr-selected').find('td').removeClass('tr-selected');
    });
    //更多操作里的全选,反选,全不选
    $('#selectAll').click(function () {
        $('#mytable tbody tr').addClass('tr-selected').find('td').addClass('tr-selected');
        crudBtnStatus();
    });
    $('#reverseSelect').click(function () {
        $('#mytable tbody tr').toggleClass('tr-selected').find('td').toggleClass('tr-selected');
        crudBtnStatus();
    });
    $('#unSelect').click(function () {
        $('#mytable tbody tr').removeClass('tr-selected').find('td').removeClass('tr-selected');
        crudBtnStatus();
    });

    $('#mytable').on('dblclick', 'tbody tr', function () {
        $('#mytable tbody tr').removeClass('tr-selected').find('td').removeClass('tr-selected');
        $(this).toggleClass('tr-selected').find('td').toggleClass('tr-selected');
        crudBtnStatus();
        $('.layer-modify').trigger('click');
    });

    //表格快速搜索
    $('#se').on('keyup click', function () {
        myDataTable.search($('#se').val(), true, 'qq').draw();
        $('#mytable tbody tr').removeClass('tr-selected').find('td').removeClass('tr-selected');
    });

    $('.layer-add').click(function () {
        var title = $(this).text();
        var url = $(this).attr('data-href');
        var area = $(this).attr('data-area');
        if (title.indexOf('设备') > -1) {
            openLayer(url, title, null, area, null, null, true);
        } else {
            openLayer(url, title, null, area);
        }
    });
    $('.layer-modify').click(function () {
        if ($(this).attr('disabled')) {
            return;
        }
        var title = $(this).text();
        var datas = myDataTable.rows('.tr-selected').data();
        if (datas.length == 0) {
            layer.msg('最少选择一条记录才能【' + title + '】', {icon: 2});
            return;
        } else if (datas.length > 1) {
            layer.msg('最多选择一条记录才能【' + title + '】', {icon: 2});
            return;
        }
        var id = datas[0].id;
        var url = $(this).attr('data-href');
        var area = $(this).attr('data-area');
        if (title.indexOf('设备') > -1) {
            openLayer(url, title, {id: id}, area, null, null, true);
        } else {
            openLayer(url, title, {id: id}, area);
        }
    });
    $('.layer-copy').click(function () {
        if ($(this).attr('disabled')) {
            return;
        }
        var title = $(this).text();
        var datas = myDataTable.rows('.tr-selected').data();
        if (datas.length == 0) {
            layer.msg('最少选择一条记录才能【' + title + '】', {icon: 2});
            return;
        } else if (datas.length > 1) {
            layer.msg('最多选择一条记录才能【' + title + '】', {icon: 2});
            return;
        }
        var id = datas[0].id;
        var url = $(this).attr('data-href');
        var area = $(this).attr('data-area');
        openLayer(url, title, {id: id}, area, "下发配置", '100px');
    });
    $('.layer-remove').click(function () {
        if ($(this).attr('disabled')) {
            return;
        }
        var title = $(this).text();
        var datas = myDataTable.rows('.tr-selected').data();
        if (datas.length == 0) {
            layer.msg('最少选择一条记录才能【' + title + '】', {icon: 2});
            return;
        }
        var url = $(this).attr('data-href');
        layer.confirm('你确定要【' + title + '】吗,本操作涉及' + datas.length + '条记录？', {icon: 3, title: "警告"}, function (index) {
            layer.close(index);
            var ids = [];
            $.each(datas, function (k, v) {
                ids.push(v.id);
            });
            $.get(url, {
                ids: ids
            }, function (res) {
                if (res.code == 0) {
                    layer.msg((res.msg) ? res.msg : title + '成功');
                    myDataTable.ajax.reload(null, false);// 刷新表格数据，分页信息不会重置
                    crudBtnStatus();
                } else {
                    layer.msg((res.msg) ? res.msg : title + '失败, 请重试!');
                }
            })
        });
    });
    $('.layer-list').click(function () {
        var title = $(this).text();
        var url = $(this).attr('data-href');
        var area = $(this).attr('data-area');
        $.get(url, function (data) {
            if (data.indexOf('rememberMe') > -1) {
                window.location.reload();
            } else {
                layer.open({
                    type: 1,
                    area: [area + 'px', '300px'],
                    title: title,
                    content: data,
                    btn: ["关闭"],
                    yes: function (indx, layero) {
                        layer.close(indx);
                        myDataTable.ajax.reload(null, false);// 刷新表格数据，分页信息不会重置
                        crudBtnStatus();
                    }
                });
            }
        })
    });
    $('.layer-list-modify').click(function () {
        if ($(this).attr('disabled')) {
            return;
        }
        var title = $(this).text();
        var datas = myDataTable.rows('.tr-selected').data();
        if (datas.length == 0) {
            layer.msg('最少选择一条记录才能【' + title + '】', {icon: 2});
            return;
        } else if (datas.length > 1) {
            layer.msg('最多选择一条记录才能【' + title + '】', {icon: 2});
            return;
        }
        var id = datas[0].id;
        var url = $(this).attr('data-href');
        var area = $(this).attr('data-area');
        $.get(url, {id: id}, function (data) {
            if (data.indexOf('rememberMe') > -1) {
                window.location.reload();
            } else {
                layer.open({
                    type: 1,
                    area: [area + 'px', '300px'],
                    title: title,
                    content: data,
                    btn: ["关闭"],
                    yes: function (indx, layero) {
                        layer.close(indx);
                        myDataTable.ajax.reload(null, false);// 刷新表格数据，分页信息不会重置
                        crudBtnStatus();
                    }
                });
            }
        })
    });

    $('.proj-add').click(function () {
        var title = $(this).text();
        var url = $(this).attr('data-href');
        var area = $(this).attr('data-area');
        openLayer(url, title, null, area, true);
    });
    $('.proj-modify').click(function () {
        var title = "修改【" + $(this).parent().prev().text() + "】";
        var url = $(this).attr('data-href');
        var area = $(this).attr('data-area');
        openLayer(url, title, null, area, true);
    });
    $('.proj-remove').click(function () {
        var title = "删除【" + $(this).parent().prev().text() + "】";
        var url = $(this).attr('data-href');
        layer.confirm('你确定要' + title + '吗？', {icon: 3, title: "警告"}, function (index) {
            layer.close(index);
            $.get(url, function (res) {
                if (res.code == 0) {
                    layer.msg((res.msg) ? res.msg : title + '成功');
                    window.location.reload();//刷新页面
                } else {
                    layer.msg((res.msg) ? res.msg : title + '失败, 请重试!');
                }
            })
        });
    });

    contextMenu();
    setInterval(pin_height, 500);
    $('#ptz').click(function () {
        layer.close($('#ptz').attr('layerIndx'));
        var indx = layer.open({
            type: 1,
            title: $('#ptz').attr('cam-name'),
            content: $('#ptz-col'),
            moveType: 1,
            shade: 0,
            skin: 'layer-ext-ptz',
            offset: ['46px', '0px'],
            area: ['235px', '460px'],
            success: function () {
                $("#speed").ionRangeSlider({
                    type: "single",
                    step: 1,
                    from: 125,
                    min: 1,
                    max: 255
                });
                ptz.getPresetNum();
            }
        });
        $('#ptz').attr('layerIndx', indx);
    });

    //根据页面设置初始化机构树
    // initOrgTree();
});
//自动计算表格的高度
var table_height = function () {
    return ($(window).height() - 200) + 'px';
}

var pin_height = function () {
    $('#pin').css({
        "height": ($(window).height() - 110) + 'px',
        "width": ($(window).width() - $('.page-sidebar').width() - 30) + 'px'
    });
}

//添加和修改的弹出页面
var openLayer = function (url, title, para, area, saveBtn, offset, reloadPage) {
    if (para) {
        para["_t"] = new Date().getTime();
    } else {
        para = {"_t": new Date().getTime()};
    }
    if (!saveBtn) {
        saveBtn = "保存"
    }
    if (!offset) {
        offset = 'auto';
    }
    $.get(url, para, function (data) {
        if (data.toString().indexOf('rememberMe') > -1) {
            window.location.reload();
        } else {
            layer.open({
                type: 1,
                area: area + 'px',
                title: title,
                content: data,
                offset: offset,
                btn: [saveBtn, "取消"],
                scrollbar: false,
                yes: function (indx, layero) {
                    if ($('#inputForm').valid()) {
                    	$('.layui-layer-btn0').attr('disabled', 'disabled');
                        try {
                            if (typeof(eval('fill')) == "function") {
                                fill();
                            }
                        } catch (e) {
                        }
                        $.post($('#inputForm').attr('action'), $('#inputForm').serialize(), function (res) {
                            if (res.code == 0) {
                                layer.msg((res.msg) ? res.msg : '保存成功');
                                layer.close(indx);
                                if (!reloadPage) {
                                    if (myDataTable) {
                                        myDataTable.ajax.reload(null, false);// 刷新表格数据，分页信息不会重置
                                        crudBtnStatus();
                                    }
                                } else {
                                    window.location.reload();//刷新页面
                                }
                            } else {
                                layer.msg((res.msg) ? res.msg : '保存失败, 请重试!');
                            }
                        });
                    }
                },
                success: function (layero, indx) {
                    $('.pop').css('width', ($('.pop').width() - 20) + 'px');
                    $('#inputForm :checkbox').uniform();
                    $('#inputForm :radio').uniform();
                    $('#inputForm input:eq(0)').focus();
                    $('#inputForm').on('keypress', 'input', function (event) {
                        if (event.keyCode == "13") {
                            $('.layui-layer-btn0').trigger('click');
                        }
                    });
                    $('#inputForm').validate({
                        errorElement: 'span',
                        ajaxType: 'POST',
                        errorClass: 'help-block vali-error',
                        focusInvalid: false,
                        highlight: function (element) {
                            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                        },
                        success: function (label, element) {
                            $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                            $(element).tooltip('destroy');
                        },
                        errorPlacement: function (error, element) {
                            $(element).tooltip({
                                container: 'body',
                                placement: 'right',
                                template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow tooltip-arrow-red"></div><div class="tooltip-inner tooltip-inner-red"></div></div>',
                                html: true,
                                title: error
                            })
                        }
                    });
                }
            });
        }
    });
}

//高级搜索弹出页面
var openSearchLayer = function (url, title, para, area, reloadPage, callback) {
    if (para) {
        para["_t"] = new Date().getTime();
    } else {
        para = {"_t": new Date().getTime()};
    }
    $.get(url, para, function (data) {
        if (data.toString().indexOf('rememberMe') > -1) {
            window.location.reload();
        } else {
            layer.open({
                type: 1,
                area: area + 'px',
                title: title,
                content: data,
                btn: ["搜索", "取消"],
                scrollbar: false,
                yes: function (indx, layero) {
                    if ($('#inputForm').valid()) {
                        callback();
                        if (!reloadPage) {
                            if (myDataTable) {
                                myDataTable.ajax.reload(null, false);// 刷新表格数据，分页信息不会重置
                            }
                        } else {
                            window.location.reload();//刷新页面
                        }
                        layer.close(indx);
                    }
                },
                success: function (layero, indx) {
                    $('.pop').css('width', ($('.pop').width() - 20) + 'px');
                    $('#inputForm :checkbox').uniform();
                    $('#inputForm :radio').uniform();
                    //$('#inputForm input:eq(0)').focus();
                    $('#inputForm').on('keypress', 'input', function (event) {
                        if (event.keyCode == "13") {
                            $('.layui-layer-btn0').trigger('click');
                        }
                    });
                    $('#inputForm').validate({
                        errorElement: 'span',
                        ajaxType: 'POST',
                        errorClass: 'help-block vali-error',
                        focusInvalid: false,
                        highlight: function (element) {
                            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                        },
                        success: function (label, element) {
                            $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                            $(element).tooltip('destroy');
                        },
                        errorPlacement: function (error, element) {
                            $(element).tooltip({
                                container: 'body',
                                placement: 'right',
                                template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow tooltip-arrow-red"></div><div class="tooltip-inner tooltip-inner-red"></div></div>',
                                html: true,
                                title: error
                            })
                        }
                    });
                }
            });
        }
    });
}

var crudBtnStatus = function () {
    // crud-bar
    var menus = '.layer-modify .layer-list-modify .layer-remove .layer-page .layer-copy';
    var len = myDataTable.rows('.tr-selected').data().length;
    if (len < 1) {
        disableMenu(menus);
    } else if (len == 1) {
        enableMenu(menus);
    } else {
        disableMenu(menus);
        $('.layer-remove').removeAttr('disabled').parent('li').addClass('disabled');
    }
}
var disableMenu = function (clses) {
    $.each(clses.split(" "), function (k, v) {
        $(v).attr('disabled', 'disabled').parent('li').addClass('disabled');
    })
}
var enableMenu = function (clses) {
    $.each(clses.split(" "), function (k, v) {
        $(v).removeAttr('disabled').parent('li').removeClass('disabled');
    })
}
var contextMenu = function () {
    var brow = $.browser;
    if (brow.msie) {
        if (brow.version < 9) {
            return;
        }
    }
    //右键菜单
    $.contextMenu("html5");
    var itms = {};
    var i = 0;
    $('.crud-bar>a').each(function (k, v) {
        var name = $(v).attr('id');
        if (!name) {
            var cla = $(v).attr('class');
            if (cla) {
                var tmp = cla.split(' ');
                var href = $(v).attr('data-href');
                $.each(tmp, function (kk, vv) {
                    if (vv.indexOf('layer') > -1) {
                        name = "." + vv + '[data-href=\"' + href + '\"]';
                    }
                });
            }
        }

        var icon = $("<p>").append($(v).find('.glyphicon').clone()).html();
        var num = (i++).toString(16);

        itms[num] = {
            name: $(v).text().trim() + ' (' + num + ')',
            value: name,
            accesskey: num,
            disabled: function () {
                if ($(name).hasClass('layer-modify') && myDataTable.rows('.tr-selected').data().length > 1) {
                    return true;
                } else {
                    return false;
                }
            },
            icon: function (opt, $itemElement, itemKey, item) {
                $itemElement.html(icon + " " + item.name);
                return 'context-menu-icon-updated';
            }
        }
    });
    if ($('.crud-bar>.btn-group').length > 0) {
        itms[(i++).toString(16)] = "---------";
    }
    $('.crud-bar .dropdown-menu>li').each(function (k, li) {
        var v = $(li).find('a');
        var name = $(v).attr('id');
        if (!name) {
            var cla = $(v).attr('class');
            if (cla) {
                var tmp = cla.split(' ');
                var href = $(v).attr('data-href');
                $.each(tmp, function (kk, vv) {
                    if (vv.indexOf('layer') > -1) {
                        name = "." + vv + '[data-href=\"' + href + '\"]';
                    }
                });
            }
        } else {
            name = "#" + name;
        }
        if (name) {
            var num = name;
            if (name == '#selectAll') {
                num = "S";
            } else if (name == '#reverseSelect') {
                num = "R";
            } else if (name == '#unSelect') {
                num = "U";
            } else {
                num = (i++).toString(16);
            }
            itms[num] = {
                name: $(v).text().trim() + ' (' + num + ')',
                value: name,
                accesskey: num,
                disabled: function () {
                    if ($(name).hasClass('layer-modify') && myDataTable.rows('.tr-selected').data().length > 1) {
                        return true;
                    } else {
                        return false;
                    }
                }
            }
        } else {
            itms[(i++).toString(16)] = "---------";
        }
    });
    if (itms[0]) {
        $.contextMenu({
            selector: "#mytable>tbody>tr",
            items: itms,
            autoHide: true,
            events: {
                show: function (options) {
                    if (myDataTable.rows('.tr-selected').data().length == 1) {
                        $('#mytable>tbody>tr').removeClass('tr-selected');
                    }
                    this.addClass('tr-selected');
                    crudBtnStatus();
                }
            },
            callback: function (itemKey, opt) {
                opt.$menu.trigger('contextmenu:hide');
                //alert("Clicked on " + itemKey + " on element " + opt.$trigger.attr("id"));
                //console.log(opt.commands[itemKey].value)
                $(opt.commands[itemKey].value).trigger('click');
                return false;
            }
        });
    }
}

var initOrgTree = function () {
    var setting = {
        view: {
            dblClickExpand: false,
            selectedMulti: false,
            showIcon: false
        },
        data: {
            simpleData: {
                enable: true
            }
        },
        callback: {
            onClick: treeClick,
            beforeClick: function (treeId, treeNode, clickFlag) {
                try {
                    if (typeof(eval('beforeClick')) == "function") {
                        return beforeClick(treeId, treeNode, clickFlag);
                    }
                } catch (e) {
                }
                return true;
            }
        }
    };
    $('body').on('click', 'input[data-orgtree],', function () {
        var id = $(this).attr('data-orgtree');
        var url = $(this).attr('data-url');
        var zTree = $.fn.zTree.getZTreeObj("orgTree");
        if (!zTree) {
            $.getJSON(url, function (data) {
                zTree = $.fn.zTree.init($("#orgTree"), setting, data);
                openTree(id, zTree);
            });
        } else {
            openTree(id, zTree);
        }
    });

    function openTree(id, zTree) {
        layerId = layer.open({
            type: 1,
            title: false,
            area: ['300px', '420px'],
            closeBtn: 0,
            shadeClose: true,
            scrollbar: false,
            content: $('#orgTree'),
            success: function () {
                $.each(zTree.transformToArray(zTree.getNodes()), function (k, v) {
                    if (v.id == id) {
                        zTree.selectNode(v);
                    }
                })
            }
        })
    }

    function treeClick() {
        var zTree = $.fn.zTree.getZTreeObj("orgTree"),
            nodes = zTree.getSelectedNodes();
        var oId = $('input[data-orgtree]').val(nodes[0].name).attr('data-orgtree');
        $("#" + oId).val(nodes[0].id);
        layer.close(layerId);
    }
}

function dataFormat(d) {
    if (!d) {
        return "";
    }
    var date = new Date();
    date.setTime(d);
    var result = date.Format("yyyy-MM-dd hh:mm:ss");
    if (result != 'NaN-aN-aN aN:aN:aN') {
        return result;
    } else {
        return "";
    }
}

Date.prototype.Format = function (fmt) { //author: meizz
    var o = {
        "M+": this.getMonth() + 1,                 //月份
        "d+": this.getDate(),                    //日
        "h+": this.getHours(),                   //小时
        "m+": this.getMinutes(),                 //分
        "s+": this.getSeconds(),                 //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds()             //毫秒
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}