/* 
 * @Author: nancyzeng
 * @Date: 2017-0322
 * @Last Modified by:
 * @Last Modified time:
 */

$(function(){
    // 回到顶部
    $('body').on('click', '.action-totop', function() {
        $('body, html').animate({scrollTop: 0}, 500, function(){
            $('body').stop();
        });
    });

    // 关闭弹窗
    $('.close-popup').on('click', function(){
        $(this).parents('.popup-box').removeClass('visible hidden').addClass('hidden');
        $('.overlay').remove();
        // $('html').removeClass('oh');
    });
    
});


/******************************************************************
*                            锚点跳转
******************************************************************/
// 首页
(function($){
    $.fn.extend({
        anchor: function(){
            scrollToAnchor(this);
        }
    });
    function scrollToAnchor(_this){
        var _rangeArr = [];
        $.each( $('.anchor-box'), function(_index){
            var _id = 'anchor' + _index;
            var _top = $(this).offset().top - 54;
            $(this).attr('id', _id);
            _rangeArr[_index] = _top;
        });

        var _headHeight = $('#detail-nav').height();
        $('.anchor-action li').on('click', function(){
            var _index = $(this).index();
            var _id = '#anchor' + _index;

            $('.anchor-action li').removeClass('active');
            $(this).addClass('active');

            if( ! $(_id).length == 0 ){
                var _range = $(_id).offset().top - 54;
            }else{
                return false;
            }
            if( ! $(_id).length == 0 ) $('body, html').animate({scrollTop: _range}, 500);
        });

        // 详情
        if( ! $('#anchor-detail').length == 0 ) var _anchorDetailTop = $('#anchor-detail').offset().top + 40;
        if( ! $('#anchor-judge').length == 0 ) var _anchorJudgeTop = $('#anchor-judge').offset().top + 40;

        //  滚屏
        $(window).on('scroll', function(){
            // 头部盒子交互
            var _scrolltop = $(window).scrollTop();

            // 详情导航滚动交互
            if( _anchorDetailTop <= _scrolltop ){
                if( ! $('#detail-nav').length == 0 ) $('#detail-nav').slideDown(100);
                if( ! $('#detail-menu').length == 0 ) $('#detail-menu').css('position','fixed');
            }else{
                if( ! $('#detail-nav').length == 0 ) $('#detail-nav').slideUp(100);
                if( ! $('#detail-menu').length == 0 ) $('#detail-menu').css('position','relative');
            }
            if( _anchorJudgeTop <= _scrolltop ){
                if( ! $('.links-box div').length == 0 ) $('.links-box div').removeClass('on-click');
                if( ! $('#link-judge').length == 0 ) $('#link-judge').addClass('on-click');
                // 滚动到商品评价隐藏菜单
                if( ! $('#detail-menu').length == 0 ) $('#detail-menu').fadeOut(300);
            }else{
                if( ! $('.links-box div').length == 0 ) $('.links-box div').removeClass('on-click');
                if( ! $('#link-detail').length == 0 ) $('#link-detail').addClass('on-click');
                if( ! $('#detail-menu').length == 0 ) $('#detail-menu').fadeIn(300);
            }

            for( var _i = 0; _i < _rangeArr.length; _i++ ){
                if( _scrolltop >= _rangeArr[_i]  ){
                    $('.anchor-action li').removeClass('active');
                    $('.anchor-action li').eq(_i).addClass('active');
                }
                if( _scrolltop >= _rangeArr[0] ){
                    $('.leftmenu-box').removeClass('dn');
                }else{
                    $('.leftmenu-box').addClass('dn');
                }
            }
        });
    }
})(jQuery);

/******************************************************************
*                            懒加载
******************************************************************/
function lazyLoading(){
    // 页面首次加载
    initLazy();

    // 页面滚动
    var loading = false;
    $('html, body').on('scroll',function(){     // 兼容firefox
        lazyBox(loading);
    });
    $(window).on('scroll',function(){
        lazyBox(loading);
    });
}
function initLazy(){

    // 优化
    var _windowHeight = $(window).height();

    // 存储为img形式
    $.each($('img.hidden'), function(){
        var dataSrc = $(this).data('src'),
            _top = $(this).offset().top;
        if( _top < _windowHeight + 100 ) $(this).attr('src', dataSrc).removeClass('hidden').addClass('visible');
    });

    // 存储为背景图
    $.each($('.lazyload.hidden'), function(){
        var dataBgimg = $(this).data('bgimg'),
            _top = $(this).offset().top;
        if( _top < _windowHeight + 100 ) $(this).attr('style', dataBgimg).removeClass('hidden').addClass('visible');
    });
}
function lazyBox(l){
    if( l ) return;
    l = true;

    setTimeout( function(){
        l = false;
        var windowHeight = $(window).height(),
            scrollTop = $(window).scrollTop();
        // 存储为img形式
        $.each($('img.hidden'), function(){
            var offseTop = $(this).offset().top,
                dataSrc = $(this).data('src');

            if( offseTop < windowHeight + scrollTop + 100 ){
                $(this).attr('src', dataSrc).removeClass('hidden').addClass('visible');
            }else{
                l = false;
            }
        });
        // 存储为背景图
        $.each($('.lazyload.hidden'), function(){
            var offseTop = $(this).offset().top,
                dataBgimg = $(this).data('bgimg');

            if( offseTop < windowHeight + scrollTop ){
                $(this).attr('style', dataBgimg).removeClass('hidden').addClass('visible');
            }else{
                loading = false;
            }
        });
    }, 600);
}


/******************************************************************
*                            展开隐藏
******************************************************************/
function fold(_this){
    var _p = $(_this).find('p'),
        _label = _p.find('label'),
        _span = $(_this).find('span'),
        _content = $(_this).siblings('.fold-content'),
        _id = _content.data('id');
    switch(_id){
        // mh-120
        case 12:
            _content.addClass('mh-120').data('id', 120);
            _label.text('展开');
            _span.attr('class', 'icon-down-line').html('&#xe91e;');
            break;
        case 120:
            _content.removeClass('mh-120').data('id', 12);
            _label.text('收起');
            _span.attr('class', 'icon-up-line').html('&#xe95e;');
            break;
        // mh-140
        case 14:
            _content.addClass('mh-140').data('id', 140);
            _label.text('展开全部');
            _span.attr('class', 'icon-down-line').html('&#xe91e;');
            break;
        case 140:
            _content.removeClass('mh-140').data('id', 14);
            _label.text('收起全部');
            _span.attr('class', 'icon-up-line').html('&#xe95e;');
            break;
        // mh-150
        case 15:
            _content.addClass('mh-150').data('id', 160);
            _label.text('展开全部');
            // _span.attr('class', 'icon-down-line').html('&#xe91e;');
            break;
        case 150:
            _content.removeClass('mh-150').data('id', 16);
            _label.text('收起全部');
            // _span.attr('class', 'icon-up-line').html('&#xe95e;');
            break;
        // mh-160
        case 16:
            _content.addClass('mh-160').data('id', 160);
            _label.text('展开');
            _span.attr('class', 'icon-down-line').html('&#xe91e;');
            break;
        case 160:
            _content.removeClass('mh-160').data('id', 16);
            _label.text('收起');
            _span.attr('class', 'icon-up-line').html('&#xe95e;');
            break;
        // mh-200
        case 20:
            _content.addClass('mh-200').data('id', 200);
            _label.text('展开');
            _span.attr('class', 'icon-down-line').html('&#xe91e;');
            break;
        case 200:
            _content.removeClass('mh-200').data('id', 20);
            _label.text('收起');
            _span.attr('class', 'icon-up-line').html('&#xe95e;');
            break;
    }
}
/******************************************************************
*                            展开隐藏
******************************************************************/
function foldText(_this, t){
    var text = $(_this).find('p').text();
    if( t == 'text' ){
        if( text == '展开全部' ){
            $(_this).css({'position':'relative', 'top':'0'});
            $(_this).siblings('.fold-content').removeClass('mh-150');
            $(_this).parents('.fold-box').removeClass('mh-150');
            $(_this).find('p').text('收起全部');
        }
        if( text == '收起全部' ){
            $(_this).css({'position':'absolute', 'top':'90px'});
            $(_this).siblings('.fold-content').addClass('mh-150');
            $(_this).parents('.fold-box').addClass('mh-150');
            $(_this).find('p').text('展开全部');
        }
    }
    // if( t == 'textarrow' ){
    //     if( text == '展开' ){
    //         $(_this).css({'position':'relative', 'top':'0'});
    //         $(_this).siblings('.fold-content').removeClass('mh-120');
    //         $(_this).parents('.fold-box').removeClass('mh-120');
    //         $(_this).find('p').text('收起');
    //         $(_this).find('div').addClass('rt-180');
    //     }
    //     if( text == '收起' ){
    //         $(_this).css({'position':'absolute', 'top':'82px'});
    //         $(_this).siblings('.fold-content').addClass('mh-120');
    //         $(_this).parents('.fold-box').addClass('mh-120');
    //         $(_this).find('p').text('展开');
    //         $(_this).find('div').removeClass('rt-180');
    //     }
    // }
}


/******************************************************************
*                            页面确认框
******************************************************************/
function deleteConfirm(_this, _type){
    var _msg = '';
    // 单个商品
    if( _type == 'product' ){
        _msg = '确定从购物车中删除该商品吗?';
    }

    // 所有商品
    if( _type == 'all' ){
        _msg = '确定从购物车中删除所有商品吗?';
        if( $(_this).hasClass('op-60') ){
            _msg = '请选择商品！';
        }
        // 将全选重置
        // $('.choose.choose-total:checked').prop('checked', false);
    }

    // 删除收货地址
    if( _type == 'address' ){
        _msg = '确定删除地址吗?';
    }

    confirm(_this, _msg, _type, function(_res){
        if(_res){
            if( _type == 'product' ) deleteParents(_this);
            if( _type == 'all' ){
                if( ! $(_this).hasClass('op-60') ){
                    $.each( $('.choose.choose-child:checked'), function(){
                        deleteParents($(this));
                    });
                }
            }
            // 删除收货地址
            if( _type == 'address' ){
                deleteAddress(_this);
                return false;
            }
            // 统计已选商品金额和数量信息
            productChoosed(_this);
        }
    });
}
// confirm
function confirm(_this, _msg, _type, callback) {
    var confirmHtml = '<div class="confirm-box ta-ct">'+
                            '<div class="fs-18 fw-bd">' + _msg + '</div>' +
                            '<div class="mt-30 fs-18">' +
                                '<span id="confirm-ok" class="mr-30">确定</span>' +
                                '<span id="confirm-cancel" class="ml-30">取消</span>' +
                            '</div>'+
                      '</div>';
    // 关联其他弹出层
    $('.confirm-box, overlay').remove();
    $('body').append('<div class="overlay"></div>');
    // $('html').addClass('oh');
    if( _type == 'product' ){
        $(_this).parents('.delete-box').append(confirmHtml);
        $('.confirm-box').removeAttr('style');
    }else if( _type == 'all' || _type == 'address' ){
        $('body').append(confirmHtml);
        $('.confirm-box').css({'top':'50%', 'margin-top':'-100px', 'position':'fixed'});
    }else{
        $('body').append(confirmHtml);
        $('.confirm-box').css({'top':'50%', 'margin-top':'-100px', 'position':'fixed'});
    }

    $("#confirm-cancel, #confirm-ok").on('click', function () {
        $('.confirm-box, .overlay').remove();
        // $('html').removeClass('oh');

        if( $(this).attr('id') == 'confirm-ok' ){
            confirm_re = true;
        } else {
            confirm_re = false;
        }
        if( typeof callback == 'function' || (typeof eval(callback) == 'function') ){
            if (typeof callback == 'function') {
                call_use_func = callback;
            } else {
                call_use_func = eval(callback);
            }
            call_use_func(confirm_re)
        }
    });
}
// 删除当前以及当前级无子类时删除对应父级
function deleteParents(_this){
    // 关联对应父类
    // if( $(_this).hasClass('onetype')){
    //     if( $(_this).parents('.choose-box').find('.delete-box').length == 1 ){
    //         $(_this).parents('.choose-box').remove();
    //     }
    //     $(_this).parents('.delete-box').remove();
    // }else{
        if( $(_this).parents('.typecart-2').find('.delete-box').length == 1 ){
            if( $(_this).parents('.choose-box').find('.typecart-2').length == 1 ){
                $(_this).parents('.choose-box').remove();
            }
            $(_this).parents('.typecart-2').remove();
        }else{
            $(_this).parents('.delete-box').remove();
        }
    // }
}
// 删除收货地址
function deleteAddress(_this){

    var address_id = $(_this).attr("data-id");
    $.ajax({
        type: "post",
        url:"/user/address.php",
        data: {act:"delete",address_id:address_id},
        dataType: "json",
        success: function(data) {
            if(data.status == '0000'){
                window.location.reload();
            }else{
                alert(data.msg);
            }
        }
    });
    $(_this).parents('.delete-box').remove();
}

/******************************************************************
*                            alert提示框
******************************************************************/
function alert(_msg, callback) {
    var alertHtml = '<div class="alert-box">'+
                            '<div class="alert-content"><div class="content">' + _msg + '</div></div>' +
                      '</div>';
    $('.alert-box').remove();
    $('body').append(alertHtml);
    // $('.alert-box').css({'top':'50%', 'margin-top':'-100px', 'position':'fixed'});

    t = setTimeout(function () {
        $('.alert-box').remove();

        if ( typeof callback == 'function' || (typeof eval(callback) == 'function') ) {
            if (typeof callback == 'function') {
                call_use_func = callback;
            } else {
                call_use_func = eval(callback);
            }
            call_use_func();
        }
    }, 2000);

    $(".alert-box").click(function () {
        $(this).remove();

        clearTimeout(t);
        if ( typeof callback == 'function' || (typeof eval(callback) == 'function') ) {
            if (typeof callback == 'function') {
                call_use_func = callback;
            } else {
                call_use_func = eval(callback);
            }
            call_use_func();
        }
    });
}

/******************************************************************
*                            popup
******************************************************************/
function showPopup(_type, _title){
    $('.overlay').remove();
    $('body').append('<div class="overlay"></div>');
    // $('html').addClass('oh');
    $('.popup-box' + _type).removeClass('hidden visible');
    $('.popup-box .title').text(_title);
}
function closePopup(_this){
    $('.overlay').remove();
    $(_this).parents('.popup-box').removeClass('hidden visible').addClass('hidden');
    // $('html').removeClass('oh');
}


/******************************************************************
*                            选中(含全选、radio、check)
******************************************************************/
function check(_this, _type, _bool){
    var _child = _this.parents('.choose-box').find('.choose-child'),
        _all = _this.parents('.choose-box').find('.choose-all'),
        _total = $('.choose-total'),
        _input = $('.choose.product');
    // 选择状态
    state(_this, _type, _child, _all, _total, _input, _bool);
}
// 状态
function state(_this, _type, _child, _all, _total, _input, _bool){
    // 统计子类个数
    var _childLength = _child.length,
        _inputLength = _input.length,
        _totalLength = _total.length,
        _childChoosedCount = 0,      // 统计子类已选个数
        _inputChoosedCount = 0;
    // 当前选择状态
    if( _this.is(':checked') || _bool ) {
        // checktate
        checkState(_this, _type, true);       // true为选中状态
        // 全选
        if( _this.hasClass('choose-all') && _child ){
            // 勾选子类
            $.each(_child, function(){
                // checktate
                checkState($(this), _type, true);       // true为选中状态
            });
        }
        // 选取所有
        if( _this.hasClass('choose-total') && _input ){
            // 勾选所有input
            $.each(_input, function(){
                // checktate
                checkState($(this), _type, true);
            });
        }
        $.each(_child, function(){
            if( $(this).is(':checked') ) _childChoosedCount++;        // 统计已选子类的个数
        });
        // 比较子类和已选子类的个数统计值
        if( _childChoosedCount >= _childLength ){
            // checktate
            checkState(_all, _type, true);
        }
        // 关联选取所有，比较所有input和已选input的个数统计值
        $.each(_input, function(){
            // 统计已选子类的个数
            if( $(this).is(':checked') ) _inputChoosedCount++;
        });
        if( _inputChoosedCount >= (_inputLength - _totalLength) ){
            // checktate
            checkState(_total, _type, true);
        }
    }else{
        // checktate
        checkState(_this, _type, false);
        checkState(_all, _type, false);         // 关联全选
        checkState(_total, _type, false);       // 关联所有全选
        // 全不选
        if( _this.hasClass('choose-all') && _child ){
            $.each(_child, function(){
                // checktate
                checkState($(this), _type, false);
            });
        }
        // 所有不选取
        if( _this.hasClass('choose-total') && _input ){
            // 勾选所有input
            $.each(_input, function(){
                // checktate
                checkState($(this), _type, false);
            });
        }
    }
    // 统计已选商品金额和数量信息
    productChoosed(_this);
    // 关联删除按钮
    deleteAll();
}
// checktate
function checkState(_this, _type, _isCheck){
    var _name = '',
        _color = '',
        _html = '';
    if( _isCheck ){
        _name = 'line2',
        _color = 'cl-rd-l',
        _html = '&#xe915;';
    }else{
        _name = 'line',
        _color = 'cl-c',
        _html = '&#xe914;';
    }
    _this.prop('checked', _isCheck);
    _this.siblings('span').attr('class', 'icon-' + _type + '-'+ _name +' ' + _color + '');
    _this.siblings('span').html(_html);
}
// 关联删除按钮
function deleteAll(){
    // 关联删除按钮
    if( $('.choose.choose-child:checked').length > 0 && $('.button-delete').length ){
        $('.button-delete').removeClass('op-60');
    }else{
        $('.button-delete').addClass('op-60');
    }
}


/******************************************************************
*                            单选
******************************************************************/
function checkOne(_this, _type, _isCheck){
    var _this = $(_this);
    if( _this.is(':checked') ){
        _isCheck = true;
    }else{
        _isCheck = false;
    }
    checkState(_this, _type, _isCheck);
}


/******************************************************************
*                            二选一
******************************************************************/
function checkTwo(_this, _type){
    var _this = $(_this),
        _anotherCheckbox = _this.parents('p').siblings('p').find('input[type=checkbox]');
    checkState(_anotherCheckbox, _type, false);
    checkState(_this, _type, true);
}


/******************************************************************
*                            加价换购
******************************************************************/
function amount(_this, _type){
    var _isCheck = false,
        _checked = _this.parents('.sale-box').find('.choose.sale:checked'),
        _amount = _this.parents('.sale-box').find('.amount');
    if( _this.is(':checked') ){
        _isCheck = true;
    }else{
        _isCheck = false;
    }

    // 统计已选商品个数
    _amount.text( _checked.length);

    // checkState
    checkState(_this, _type, _isCheck);
}

/******************************************************************
*                            增加或减少商品数量
******************************************************************/
// add
function countAdd(_this){
    var _numBox = $(_this).parents('.count-box').find('.number-box'),
        _numVal = parseInt(_numBox.val()),
        _subBox = $(_this).parents('.count-box').find('.count-sub'),
        _addBox = $(_this).parents('.count-box').find('.count-add'),
        _amountBox = $(_this).parents('.delete-box').find('.amount-box');
    if( _numVal < 99 ){
        _numVal++;
        _numBox.val( _numVal );
        _addBox.removeClass('cl-c');
    }else if( _numVal == 99 ){
        _numVal++;
        _numBox.val( _numVal );
        _addBox.addClass('cl-c');
    }else{
        _addBox.addClass('cl-c');
        // alert('100');
    }
    _subBox.removeClass('cl-c');
    // 关联计数
    if( _amountBox.length != 0 ) _amountBox.text( _numVal );

    // 统计已选商品金额和数量信息
    productChoosed(_this);
}
// sub
function countSub(_this){
    var _numBox = $(_this).parents('.count-box').find('.number-box'),
        _numVal = parseInt(_numBox.val()),
        _addBox = $(_this).parents('.count-box').find('.count-add'),
        _subBox = $(_this).parents('.count-box').find('.count-sub'),
        _amountsBox = $(_this).parents('.delete-box').find('.amounts-box');
    if( _numVal > 2 ){
        _numVal--;
        _numBox.val( _numVal );
        _subBox.removeClass('cl-c');
    }else if( _numVal == 2 ){
        _numVal--;
        _numBox.val( _numVal );
        _subBox.addClass('cl-c');
    }else{
        _subBox.addClass('cl-c');
        // alert('1');
    }
    _addBox.removeClass('cl-c');
    // 关联计数
    if( _amountsBox.length != 0 ) _amountsBox.text( _numVal );
    
    // 统计已选商品金额和数量信息
    productChoosed(_this);

}
// 统计已选商品金额和数量信息
function productChoosed(_this){
    var _input = $('.choose.choose-child'),
        _obj = {},
        _withPostage = 0;
    _obj = choosedResult(_input);
    // 金额
    if( $('.money-box').length ) $('.money-box').text( _obj.moneys.toFixed(2) );

    // 含邮费总金额
    _withPostage = eval( _obj.moneys + postage(_this) );

    $('.money-box.withpostage').text( _withPostage.toFixed(2) );
    // 数量
    if( $('.amounts-box').length ) $('.amounts-box').text( _obj.amounts.toFixed(0) );

    // 关联删除按钮
    deleteAll();
}

// 邮费
function postage(_this){
    var _postage = 0;
    var _postage = $(_this).parents('.choose-container').eq(0).find('.postage');
    // 邮费
    // if( $('.postage').length ) _postage = parseFloat( $('.postage').text() );
    if( $('.postage').length ) _postage = parseFloat( _postage.text() );
    return _postage;
}

// input
function inputChange(_this){
    var _val = parseInt( $(_this).val() ),
        _number = $(_this).parents('.delete-box').find('.number-box'),
        _amounts = $('.amounts-box'),
        _money = $(_this).parents('.delete-box').find('.money'),
        _moneyAmount = $('.money-box'),
        _addBox = $(_this).siblings('.count-add'),
        _subBox = $(_this).siblings('.count-sub'),
        _obj = {};

    // 负数和非int型，强制转换为1
    if( isNaN(_val) || _val <= 0 ){
        _subBox.removeClass('cl-c').addClass('cl-c');
        _addBox.removeClass('cl-c');
        // alert('1');
        _val = 1;
    }else if( _val > 99 ){
        _addBox.removeClass('cl-c').addClass('cl-c');
        _subBox.removeClass('cl-c');
        // alert('100');
        _val = 100;
    }else{
        _addBox.removeClass('cl-c');
        _subBox.removeClass('cl-c');
    }

    $(_this).val( _val );

    // 已选商品金额和数量信息
    _obj = productUnit(_money, _number);

    // 统计已选商品总数量和总金额
    obj(_this);

    return _obj;
}
// 统计已选商品总数量和总金额
function obj(_this){
    var _amounts = 0,
        _moneys = 0,
        _withPostage = 0,
        _choosed = $('.choose.choose-child');

    $.each( _choosed, function(){
        if( $(this).is(':checked') ){
            var _tmpNumber = $(this).parents('.delete-box').find('.number-box'),
                _num = parseInt( _tmpNumber.val() );
            _amounts = _amounts + _num;
            var _tmpMoney = $(this).parents('.delete-box').find('.money'),
                _mon = parseFloat( _tmpMoney.text() ),
                _monUnit = _mon * _num;
            _moneys = _moneys + _monUnit;
        }
    });
    
    // 金额
    if( $('.money-box').length ) $('.money-box').text( _moneys.toFixed(2) );
    // 含邮费总金额
    _withPostage = eval( _moneys + postage(_this) );
    $('.money-box.withpostage').text( _withPostage );
    // 数量
    if( $('.amounts-box').length ) $('.amounts-box').text( _amounts.toFixed(0) );
}
// 单价 * 个数(选中单元总金额)
function productUnit(_money, _number){
    // 当前选区无单价或者本数时，返回0
    if( ! _money.text() || ! _number.val() ) return 0;
    var _obj = {};
    _obj.amounts = parseInt( _number.val() );
    _obj.moneys = parseFloat( _money.text() ) * parseInt( _number.val() );

    return _obj;    // 已选单元金额总数
}
// 已选商品金额和数量信息
function choosedResult(_input){
    var _moneys = 0,
        _amounts = 0,
        _obj = {};   // 关联已选 
    // 统计已选金额总数
    $.each(_input, function(){
        if( $(this).is(':checked') ){
            _objTmp = inputChange($(this));
            _moneys = eval( _moneys + _objTmp.moneys);
            _amounts = eval( _amounts + _objTmp.amounts );
        }
    });
    _obj.moneys = _moneys;
    _obj.amounts = _amounts;

    return _obj;      // 已选商品金额总数
}

/******************************************************************
*                            单张图片放大
******************************************************************/
function imgZoom(obj){
    $('.zoom-box.patch').remove();
    $('body').append('<div class="zoom-box patch"><div class="zoom-content"></div></div>');
    $('.zoom-content').append(obj.zoomboxHtml);
    $('.zoom-box').removeClass('hidden').addClass('visible').css('background-color', obj.color);
    // $('html').addClass('oh');
    $('.zoom-box').on('click', function(){
        $(this).removeClass('visible').addClass('hidden');
        // $('html').removeClass('oh');
    })
}


/******************************************************************
*                            mouseenter以及选项卡
******************************************************************/
function mouseenterAndTab(){
    // mouseenter不加mouseleave时，鼠标移开样式还在
    $('.mouseenter').on('mouseenter', function(){
        $(this).parents('.mouseenter-box').find('.mouseenter').removeClass('on-mouse');
        $(this).addClass('on-mouse');

        let slidingImgs = $(this).find('.lazyimg');

        for (let i = 0; i < slidingImgs.length; i++) {
            // 遍历操作
            if(slidingImgs[i].getAttribute('data-src')){
                slidingImgs[i].src = slidingImgs[i].getAttribute('data-src');
                slidingImgs[i].removeAttribute('data-src');
            }
        }

    });
    $('.mouseenter.mouseleave').on('mouseleave', function(){
        $(this).removeClass('on-mouse');
    });

    // 选项卡
    $('.tab-title li').on('click', function(){
        // 不可点击
        if( $(this).hasClass('unclick') ) return false;
        // tab
        var _this = $(this),
            _title = _this.parents('.tab-title').eq(0),
            _index = _this.index(),
            _tabBox = _this.parents('.tab-box').eq(0),
            _untab = _this.parents('.untab').eq(0),
            //_li = _tabBox.find('.tab-title li, .tab-content li'),
            _li = _tabBox.find('.tab-title > li, .tab-content > li'),
            _contentLi = _tabBox.find('.tab-content > li');
        // 自己不可不选
        if( ! _untab.length ){
            _li.removeClass('on-tab');
            _this.addClass('on-tab');
            _contentLi.eq(_index).addClass('on-tab');
            // 选项卡带hover
            if( _tabBox.find('.tab-content.patch li').eq(_index).find('.mouseenter').length > 0 ){
                _tabBox.find('.tab-content li').eq(_index).find('.mouseenter').removeClass('on-mouse');
                _tabBox.find('.tab-content li').eq(_index).find('.mouseenter').eq(0).addClass('on-mouse');
            }
        }
    });
}

/******************************************************************
*                            省市区联动
******************************************************************/
// (function($){
//     $.fn.extend({
//         region: function(_args){
//             var _default = $.extend({
//                 width: '120px',
//                 height: '30px',
//                 marginRight: '10px',
//                 provinceId: '',
//                 cityId: '',
//                 countyId: ''
//             });

//             if( typeof _args == 'undefined' ){
//                 var _args = {};
//                 _args.width = _default.width;
//                 _args.height = _default.height;
//                 _args.provinceId = _default.provinceId;
//                 _args.cityId = _default.cityId;
//                 _args.countyId = _default.countyId;
//             }

//             init(this, _args);
//             selectChange(this, _args);
//         }
//     });
//     // 初始化
//     function init(_this, _args){
//         $(_this).find('.province').remove();
//         $(_this).append('<select class="province"></select>');
//         $(_this).find('select').css({'width': _args.width, 'height': _args.height, 'margin-right': _args.marginRight});
//         $.getJSON("/user/address.php?act=getProvince", function(data){
//             // console.log(data);
//             $(_this).find('.province').prepend('<option value="" class="default">请选择</option>');
//             $.each(data, function(_index, _item){
//                 // if ( _index == 0 ) return true;
//                 $(_this).find('.province').append('<option value=' + _item.id + '>' + _item.name + '</option>');
//             });
//         });
//     }
//     // 关联省市区
//     function selectChange(_that, _args){
//         var _thatId = $(_that).attr('id'),
//             _val = 0,
//             _json = '',
//             _className = '',
//             _nextClassName = '';

//         $('body').on('change', '#' + _thatId + ' select', function(){
//             _className = $(this).attr('class');
//             switch( _className ){
//                 case 'province':
//                     _json = '/user/address.php?act=getCity&pid=';
//                     _nextClassName = 'city';
//                     $(_that).find('.city, .county').remove();
//                 break;
//                 case 'city':
//                     _json = '/user/address.php?act=getCounty&pid=';
//                     _nextClassName = 'county';
//                     $(_that).find('.county').remove();
//                 break;
//                 default:
//                 return false;
//             }
//             _val = $(this).find('option:selected').val();

//             $.getJSON(_json + _val, function(data){
//                 if( data.length == 0 ) return false;
//                 $(_that).find('.'+_nextClassName).remove();
//                 $(_that).append('<select class="' + _nextClassName + '"></select>');
//                 $(_that).find('select').css({'width': _args.width, 'height': _args.height, 'margin-right': _args.marginRight});
//                 $(".default").remove();
//                 $(_that).find('select').prepend('<option value="" class="default">请选择</option>');
//                 $.each(data, function(_index, _item){
//                     $(_that).find('.' + _nextClassName).append('<option value=' + _item.id + '>' + _item.name + '</option>');
//                 });
//             });
//         });

//     }
// })(jQuery);

// 传参
function region(_region, _args){
    var _default = {
        width: '120px',
        height: '30px',
        marginRight: '10px',
        provinceId: '',
        cityId: '',
        countyId: ''
    };

    if( typeof _args == 'undefined' ){
        var _args = {};
        _args.width = _default.width;
        _args.height = _default.height;
        _args.provinceId = _default.provinceId;
        _args.cityId = _default.cityId;
        _args.countyId = _default.countyId;
    }

    // 修改关联省市区
    var _bool = _args.provinceId == '';

    regionInit(_region, _args, _bool);
    regionSelectChange(_region, _args);
}
// 重置
function regionReset(_region, _args, _type){
    if( _type == 'province' ){
        $(_region).find('select').remove();
    }else{
        $(_region).find('.' + _type).remove();
    }
    $(_region).append('<select class="' + _type + '"></select>');
    $(_region).find('select').css({
        'width': _args.width, 
        'height': _args.height, 
        'margin-right': _args.marginRight,
        'cursor': 'pointer'
    });
    $(_region).find('.' + _type + " .default").remove();
    $(_region).find('.' + _type).prepend('<option value="" class="default">请选择</option>');
}
// 初始化
function regionInit(_region, _args, _bool){
    // 省
    $.getJSON("/user/address.php?act=getProvince", function(data){
        // 重置
        regionReset(_region, _args, 'province');
        $.each(data, function(_index, _item){
            // 关联当前省市区
            if( ! _bool && _args.provinceId == _item.id ){
                $(_region).find('.province').append('<option value=' + _item.id + ' selected="true">' + _item.name + '</option>');

                // 市
                $.getJSON("/user/address.php?act=getCity&pid=" + _args.provinceId, function(data){
                    if( data.length == 0 ) return false;

                    // 重置
                    regionReset(_region, _args, 'city');
                    $.each(data, function(_index, _item){
                        if( _args.cityId == _item.id ){
                            $(_region).find('.city').append('<option value=' + _item.id + ' selected="true">' + _item.name + '</option>');
                            // 区
                            $.getJSON("/user/address.php?act=getCounty&pid=" + _args.cityId, function(data){
                                if( data.length == 0 ) return false;

                                // 重置
                                regionReset(_region, _args, 'county');
                                $.each(data, function(_index, _item){
                                    if( _args.countyId == _item.id ){
                                        $(_region).find('.county').append('<option value=' + _item.id + ' selected="true">' + _item.name + '</option>');
                                    }else{
                                        $(_region).find('.county').append('<option value=' + _item.id + '>' + _item.name + '</option>');
                                    }
                                });
                            });
                        }else{
                            $(_region).find('.city').append('<option value=' + _item.id + '>' + _item.name + '</option>');
                        }
                    });
                });
            }else{
                $(_region).find('.province').append('<option value=' + _item.id + '>' + _item.name + '</option>');
            }
        });
    });

}
// 关联省市区
function regionSelectChange(_region, _args){
    var _thatId = $(_region).attr('id'),
        _val = 0,
        _i = 0;
        _json = '',
        _className = '',
        _nextClassName = '';

    $('body').on('change', '#' + _thatId + ' select', function(){
        _className = $(this).attr('class');
        switch( _className ){
            case 'province':
                _json = '/user/address.php?act=getCity&pid=';
                _nextClassName = 'city';
                $(_region).find('.city, .county').remove();
            break;
            case 'city':
                _json = '/user/address.php?act=getCounty&pid=';
                _nextClassName = 'county';
                $(_region).find('.county').remove();
            break;
            default:
            return false;
        }
        _val = $(this).find('option:selected').val();

        $.getJSON(_json + _val, function(data){
            if( data.length == 0 ) return false;
            $(_region).find('.'+_nextClassName).remove();
            $(_region).append('<select class="' + _nextClassName + '"></select>');
            $(_region).find('select').css({
                'width': _args.width, 
                'height': _args.height, 
                'margin-right': _args.marginRight,
                'cursor': 'pointer'
            });
            $(".default").remove();
            $(_region).find('select').prepend('<option value="" class="default">请选择</option>');
            $.each(data, function(_index, _item){
                $(_region).find('.' + _nextClassName).append('<option value=' + _item.id + '>' + _item.name + '</option>');
            });
        });
    });
}

/******************************************************************
*                            比例进度
******************************************************************/
(function($){
    $.fn.extend({
        progress: function(){
            var _that = $(this);
            $.each(_that, function(){
                var _total = $(this).data('total');
                var _current = $(this).data('current');
                var _progress= $(this).find('.progress');
                var _percent = _current / _total * 100;
                _percent = _percent + '%';
                _progress.animate({width: _percent}, 500);
            });
        }
    });
})(jQuery);





























/******************************************************************
*                            PC提醒盒子box                        *
******************************************************************/
function remind(el,remindEl,position){
    var Frame = $(remindEl),
        FrameWidth = Frame.outerWidth(),
        FrameHeight = Frame.outerHeight();
    var el = $(el),
        elWidth = el.outerWidth(),
        elHeight = el.outerHeight();
    var windowHeight = $(window).height(),
        windowWidth = $(window).width();
    switch (position.align){
        case 'center':
            var top = - FrameHeight / 2;
            var left = - FrameWidth / 2;
            Frame.css({'top': '55%','left': '50%','margin-top': top+'px','margin-left': left+'px'}).removeClass('hidden').addClass('visible');
            break;
        case 'self-center':
            var top = el.offset().top - 10 - $(document,'html').scrollTop() - FrameHeight;
            var left = el.offset().left - FrameWidth / 2 + elWidth / 2 ;
            console.log(top,"===top")
            console.log(left,"===left")
            Frame.css({'top': top ,'left': left }).removeClass('hidden').addClass('visible');
            break;
        default :
            var top = (el.offset().top + elHeight + 4) - $(document,'html').scrollTop();
            var left = el.offset().left;
            /*检测超出最大高度度 */
            if((top + FrameHeight) > windowHeight && (top - FrameHeight) < windowHeight) {
                /*如果 Frame 无论是在上 和在下都超出最大高度 那么就垂直居中于 el */
                top = el.offset().top - 4 - $(document,'html').scrollTop() - FrameHeight / 2;
                //console.log(666);
            }
            if((top + FrameHeight) > $(window).height()) {
                top = el.offset().top - 4 - $(document,'html').scrollTop() - FrameHeight;
                //console.log($(document,'html').scrollTop())
                //console.log(Frame.offset().top - $(document,'html').scrollTop());
                //console.log(Frame.offset().top - $(document,'html').scrollTop() < 54)
            }
            /*检测超出最大宽度*/
            if(left > $('body').outerWidth() / 2) {
                left = el.offset().left - 4 - FrameWidth;
                Frame.css({'top':top+'px','left':left + 'px'}).removeClass('hidden').addClass('visible');
            } else {
                left += elWidth + 4;
                Frame.css({'top':top + 'px','left':left + 'px'}).removeClass('hidden').addClass('visible');
            }
        break;
    }
}
/******************************************************************
*                            PC验证手机号box                        *
******************************************************************/
var t;
function checkPhone(telNumber,errEl,errTmplate,callback){
    clearTimeout(t);
    var reg = /^1[3|4|5|7|8|9][0-9]\d{8}$/;
    if(telNumber != '' && !reg.test(telNumber)){
        if(errEl && errTmplate){
            t = setTimeout(function() {
                $(errEl).html(errTmplate);
            },800)
        }
        return false;
    }else{
        typeof callback == 'function' && callback(telNumber);
        $(errEl).empty();
        return true;
    }
}
//dsx懒加载
(function($){
    $.fn.layzload=function(options){
        //默认参数
        var defu = {
            data_src:"data-src",            //图片src
            // data_height:"data-height",      图片高度
            // data_width:"data-width",        图片宽度
            delayed:300,                    //延时显示img  已废弃
            imgshow:300,                    //显示img需要多长时间
            imgTitle: "data-title",
            imgAlt: "data-alt"
        };

        var opt=$.extend(defu,options);         //合并参数，如果传进来的有那么替换默认值
        var win_height = $(window).height();
        function Rendering(that,i) {

            if (that.offset().top - $(window).scrollTop() < win_height && that.find('img').length == 0){

                var title = that.attr(opt.imgTitle) != undefined ? that.attr(opt.imgTitle) : '';
                var alt = that.attr(opt.imgAlt) != undefined ? that.attr(opt.imgAlt) : '';
                var html='<img class="ma db transition" src='+that.attr(opt.data_src)+' height="100%" title="'+title+'" alt="'+alt+'" style="opacity:0;max-width:none;" />';
                // clearTimeout(that.timer);
                that.html(html).find('img').on('load',function(){
                    $(this).fadeTo(opt.imgshow,1)
                });
                // that.timer = setTimeout(function(){
                //     that.html(html).find('img').fadeTo(opt.imgshow,1);
                // },opt.delayed);
            }
        }

        this.each(function(i,el){
            var that = $(el);
            Rendering(that,i);
            $(window).on('scroll',function () {
                if (that.find('img').length == 0){
                    Rendering(that,i);
                }
            })
        })
    }
})(jQuery);
function Countdown(endTime, el, callback, type, endText) {
    var d, h, m, s, ss;
    //判断倒计时类型
    console.log(endText)
    if(typeof el === 'object' && el instanceof Object) {
        if(type === 'default' || arguments.length === 3) {
            var elements = [];
            elements.push(el);
            el.elements = elements;
            el.full = false;
            // endText != undefined || endText != '' ? endText = endText : endText = ['0','0','0','0'];
            if(endText === undefined || endText === '') {
                endText = ['0','0','0','0'];
            }
        } else if(type === 'full') {
            var elements = [];
            for (var key in el) {
                elements.push(el[key]);
                endText != '' ? endText = endText : endText = ['0','0','0','0','00'];
            }
            el.full = true;
            el.elements = elements;
        } else {
            throw new Error('不存在的类型');
        }
    }
    //检查时间
    function checkTime(i) {
        if (i < 10) return '0' + i;
        return i;
    }
    //最终dom输出
    function echo (elements,date) {
        if(el.elements.length === 1) {
            el.elements[0].text( date[0] + '天' + date[1] + '时' + date[2] + '分' + date[3] + '秒' );
        }else {
            for(var i = 0,lh = el.elements.length;i < lh;i++){
                //el.elements[i].innerText = date[i];
                $(el.elements[i]).text(date[i]);
            }
        }
    }
    //倒计时
    function main(endTime, el) {
        var nowTime = new Date();
        var times = (new Date(endTime).getTime() - nowTime.getTime()) / 1000;  //剩余毫秒
        if (times <= 0) {
            clearInterval(el.timer);
            echo(elements,endText);
            callback && callback();
            return false;
        }
        d = Math.floor(times / 60 / 60 / 24);     //计算剩余天数
        h = Math.floor(times / 60 / 60 % 24);     //计算剩余小时
        m = Math.floor(times / 60 % 60);          //计算剩余分钟
        s = Math.floor(times % 60);               //计算剩余毫秒
        ss = Math.floor(times * 100 % 100);       //计算剩余微秒
        el.full == true ? echo(el.elements,[checkTime(d),checkTime(h),checkTime(m),checkTime(s),checkTime(ss)]) : echo(el.elements,[checkTime(d),checkTime(h),checkTime(m),checkTime(s)]);
    }
    //根据类型选择不同倒计时
    if(!el.full) {
        el.timer = setInterval(function () {
            main(endTime, el);
        }, 1000);
        main(endTime, el);
    } else if(el.full) {
        el.timer = setInterval(function () {
            main(endTime, el);
        }, 100);
        main(endTime, el);
    }
}
/******************************************************************
*                       PC注册找回表单交互                          *
******************************************************************/
function regFrame() {
    var errEl = $('.reg-err');

    // 显示隐藏密码
    $('.reg-frame').on('mousedown','.icon-zzeye-block',function(){
        $(this).removeClass('cl-dc').addClass('cl-67')
        // $('input[name=user-password]').attr('type','text');
        $('input[name=user-password]')[0].type = "text";
    })
    $('.reg-frame').on('mouseup','.icon-zzeye-block',function(){
        $(this).removeClass('cl-67').addClass('cl-dc')
        // $('input[name=user-password]').attr('type','password');
        $('input[name=user-password]')[0].type = "password";
    })

    var tel = false;
    $('.reg-frame input').each(function(i,el){

        $(el).on('keyup',function(){
            //在编辑状态下
            var t;
            clearInterval(t);
            
            //验证电话号码 若有错误提示错误
            if($(el).attr('name') === 'user-tel') {
                var telNumber = $(el).val();

                //错误提示文字
                var errTmplate = '<p class="cl-rd"><span class="icon-zzzinfo-block">&#xe968;&nbsp;</span>请输入正确的手机号</p>';
                //var errTmplate = '<p class="cl-rd"><span class="icon-zzzinfo-block">&#xe968;&nbsp;</span>该手机号已被注册</p>';
                //var errTmplate = '<p class="cl-rd"><span class="icon-zzzinfo-block">&#xe968;&nbsp;</span>验证码错误</p>';
                //var errTmplate = '<p class="cl-rd"><span class="icon-zzzinfo-block">&#xe968;&nbsp;</span>密码输入有误</p>';
                //var errTmplate = '<p class="cl-rd"><span class="icon-zzzinfo-block">&#xe968;&nbsp;</span>图形验证码错误</p>';
                checkPhone(telNumber,errEl,errTmplate,function(){
                    tel = true;
                })
            }

            if($(el).val() !== '') {
                $(el).next('.icon-zzwrong-block').addClass('active');
            } else {
                $(el).next('.icon-zzwrong-block').removeClass('active');
            }

        })

        //重新获取到焦点交互
        $(el).on('focus',function(){

            /*密码 提示文字*/
            if($(el).attr('name') === 'user-password') {
                $(el).parent().next().addClass('active');
            }
            //隐藏其它的X
            $('.icon-zzwrong-block').each(function(c,b){
                $(b).removeClass('active');
                if(i === c && $(el).val() !== '') $(b).addClass('active');
            })
        })

        //清除value
        $(el).next('.icon-zzwrong-block').on('click',function(){
            $(el).val('').next().removeClass('active');
            var _this = this;
            setTimeout(function(){
                $(_this).removeClass('active');
            },100)
        })
        
    })

    //同意条款内容
    $('#treaty-btn').on('click',function(){
        if($(this).prop('checked')){
            $(this).prev('span').removeClass('icon-checkbox-line').addClass('icon-checkbox-line2 cl-bl').html('&#xe915;')
        } else {
            $(this).prev('span').removeClass('icon-checkbox-line2 cl-bl').addClass('icon-checkbox-line').html('&#xe914;')
        }
    })

    //注册
    $('.reg-frame').on('click','.reg-btn',function(){
        if($('#treaty-btn').prop('checked')) return;
    })
}


/**
 * @author Edward
 *
 * 售后模块
 */
function customerService() {

    /**
     * @param {el} select
     * @param {maxNum} number
     * @returns {Object}
     */
    function NumberChange(el, maxNum) {
        var el = $(el);
        var J_val = $(el).find('.J_value');
        el.on('keyup', '.J_value', function () {
            // 处理输入非数字
            if ((/\D/g.test(this.value))) {
                this.value = 0;
            };

            var result = parseInt(this.value);
            if ( result < 1) {
                // alert('最大数量不能小于0');
                this.value = 0;
            }

            if (result >= maxNum) {
                // alert('最大数量不能超过' + maxNum);
                this.value = maxNum;
            }
        })

        // 减少
        el.on('click', '.J_del', function () {
            if (parseInt(J_val.val()) < 1) return;
            J_val.val(parseInt(J_val.val()) - 1);
        })

        // 增加
        el.on('click', '.J_add', function () {
            if (parseInt(J_val.val()) >= maxNum) return;
            J_val.val(parseInt(J_val.val()) + 1);
        })
        return this;
    }

    /**
     * 
     * 
     * @param {string[select]} el
     * @returns 
     */
    function Radio(el) {
        $(el).find('input[type="radio"]').each(function(i, e) {
            $(e).on('click', function () {
                var J_radioText = $(el).find('.J_radio-text');
                if (this.checked) {
                    $(this).parent('label').addClass('bc-bl cl-f bd-1-bl').siblings().removeClass('bc-bl cl-f bd-1-bl');
                    J_radioText.eq(i).removeClass('dn').siblings().addClass('dn');
                }
            })
        })
        return this;
    }

    function inputNumber(el, maxNumber) {
        $(el).on('keyup', '.J_Number', function () {
            if (!(/^\d+(\.\d{0,2})?$/.test(this.value))) {
                this.value = '';
            }
        })
        return this;
    }

    return {
        NumberChange: NumberChange,
        Radio: Radio,
        inputNumber: inputNumber
    }
}

(function(w, d, u) {
    var Popup = function (options) {

       /**
        *  @param {Object} options
        *  @param {string} options.type
        *  @param {arry[string]} options.btn
        *  @param {string} options.height
        *  @param {string} options.width
        *  @param {string} options.algin
        *  @param {string} options.title
        *  @param {string} options.content
        *  @param {arry[fn]} options.callback
        *
        */

        this.type = options.type;

        this.btn = options.btn;

        this.height = options.height;

        this.width = options.width;

        this.algin = options.algin;

        this.title = options.title;

        this.content = options.content;

        this.callback = options.callback;

        this.close = function () {
            $('.popup-layer').fadeOut(200, function () {
                $(this).remove();
            });
        }

        this.resize = function () {
            $(w).on('resize', function () {
                var left = $(w).width() / 2 - $('.popup-layer').width() / 2;
                var top = $(w).height() / 2 - $('.popup-layer').height() / 2;
                $('.popup-layer').css({'left': left + 'px', 'top': top + 'px'});
            })
        }

        this.setPostion = function () {
            var left = $(w).width() / 2 - $('.popup-layer').width() / 2;
            var top = $(w).height() / 2 - $('.popup-layer').height() / 2;
            $('.popup-layer').css({'left': left + 'px', 'top': top + 'px'}).animate({'opacity': 1}, 200);
        }

        this.bindEvent = function (_this) {
            var btnLength = _this.btn.length
            for (var a = 0; a < btnLength; a++) {
                (function(b) {
                    $('#popup-layer-btn'+b).on('click', function () {
                        _this.callback[b].call(_this);
                    });
                })(a)
            }
        }

        // 启动
        this.fn[this.type](this);
    }

    Popup.prototype.fn = {
        html: function (_this) {
            var btn = '';
            for (var i = 0; i < _this.btn.length; i++) {
                (function (a){
                    btn += '<a id="popup-layer-btn'+a+'" class="popup-layer-btn ' + ((a === 0) ? 'active':'') + '" href="javascript:;">' + _this.btn[i] + '</a>';
                })(i);
            }

            var htmlTemplate = '<div class="popup-layer" style="width: '+ (_this.width ? _this.width: 'auto') +';height: '+ (_this.height ? _this.height: 'auto') +';">'+
                                    '<div class="popup-layer-title">' + _this.title + '</div>'+
                                    '<div class="popup-layer-content">' + _this.content + '</div>'+
                                    '<div class="popup-layer-footer" style="text-align:'+(_this.algin ? _this.algin : 'right')+'">' + btn + '</div>'+
                                '</div';
            $('body').append(htmlTemplate);

            // 设置位置参数
            _this.setPostion();

            // 为按钮注册事件
            _this.bindEvent(_this);
            
            // resize 事件
            _this.resize();
        }
    }

    if (typeof define === 'function') {
        define(function () {
            return Popup;
        });
        return;
    }

    w.Popup = Popup;
})(window, document, undefined)