/*$(window).load(function(){
		// Fade in images so there isn't a color "pop" document load and then on window load
		$(".image img").fadeIn(500);

		// clone image
		$('.image img').each(function(){
			var el = $(this);
			el.css({"position":"absolute"}).clone().addClass('img_grayscale').css({"position":"absolute","z-index":"998","opacity":"0"}).insertBefore(el).queue(function(){
				var el = $(this);
				el.parent().css({"width":this.width,"height":this.height});
				//el.dequeue();
			});
			this.src = grayscale(this.src);
		});

		// Fade image
		$('.image img').hover(
			function(){
			$(this).parent().find('img:first').stop().animate({opacity:1}, 500);
		},
		function(){
			$(this).stop().animate({opacity:0}, 500);
		});

});	*/

// Grayscale w canvas method
function grayscale(src){
    var canvas = document.createElement('canvas');
    var ctx = canvas.getContext('2d');
    var imgObj = new Image();
    imgObj.src = src;
    canvas.width = imgObj.width;
    canvas.height = imgObj.height;
    ctx.drawImage(imgObj, 0, 0);
    var imgPixels = ctx.getImageData(0, 0, canvas.width, canvas.height);
    for(var y = 0; y < imgPixels.height; y++){
        for(var x = 0; x < imgPixels.width; x++){
            var i = (y * 4) * imgPixels.width + x * 4;
            var avg = (imgPixels.data[i] + imgPixels.data[i + 1] + imgPixels.data[i + 2]) / 3;
            imgPixels.data[i] = avg;
            imgPixels.data[i + 1] = avg;
            imgPixels.data[i + 2] = avg;
        }
    }
    ctx.putImageData(imgPixels, 0, 0, 0, 0, imgPixels.width, imgPixels.height);
    return canvas.toDataURL();
}

$(document).ready(function() {
    /* Search */



    $(".mar tr:last-child").css("display", "none");

    var id = "";
    var imsSrc = "";
    $('.mar table').attr('height', '');
    $(".mar table tbody tr").each(function() {
        id = $(this).find("td");
        imsSrc = id.find('img').attr('src')
        id.attr('height', 5);
        if(imsSrc != undefined)
        {

            if(imsSrc.match(/dot_lme/))
            {
                id.attr('height', 1);
            }
            if(imsSrc.match(/up\.gif/))
            {
                id.find('img').attr({
                    'height':10,
                    'width':10
                });
            }
        }
    // alert(customerId);
    });

    if($('.left_menu_link').length > 0 && $('#slideshow0').length > 0)
    {

        $('.left_menu_link').hover(function(){
            $('#slideshow0').data('nivo:vars').stop = true;
            $('#slideshow0').css('background-image', "url(" + $(this).attr('rel')  + ")").hide();
            $('#slideshow0').css('background-image', "url(" + $(this).attr('rel')  + ")").fadeIn('slow');
            $('.nivo-slice').css('display', "none");
        }, function(){
            $('#slideshow0').data('nivo:vars').stop = false;
        });
    }


    $('.button-search').bind('click', function() {
        url = $('base').attr('href') + 'index.php?route=product/search';

        var filter_name = $('input[name=\'filter_name\']').attr('value')

        if (filter_name) {
            url += '&filter_name=' + encodeURIComponent(filter_name);
        }

        location = url;
    });

    $('#header input[name=\'filter_name\']').keydown(function(e) {
        if (e.keyCode == 13) {
            url = $('base').attr('href') + 'index.php?route=product/search';

            var filter_name = $('input[name=\'filter_name\']').attr('value')

            if (filter_name) {
                url += '&filter_name=' + encodeURIComponent(filter_name);
            }

            location = url;
        }
    });

    /* Ajax Cart */
    $('#cart > .heading a').bind('click', function() {
        $('#cart').addClass('active');

        $.ajax({
            url: 'index.php?route=checkout/cart/update',
            dataType: 'json',
            success: function(json) {
                if (json['output']) {
                    $('#cart .content').html(json['output']);
                }
            }
        });

        $('#cart').bind('mouseleave', function() {
            $(this).removeClass('active');
        });
    });

    $('.submenu-item').hover(
        function(){
            $(this).parent().attr('id', 'sleft');
            $(this).attr('id', 'sright');
            $(this).children('div').attr('class', 'sitemhover');
        }, function(){

            $(this).parent().attr('id', '');
            $(this).attr('id', '');
            $(this).children('div').attr('class', 'sitem');

        });

    /* Mega Menu */
    $('#menu ul > li > a + div').each(function(index, element) {
        // IE6 & IE7 Fixes
        if ($.browser.msie && ($.browser.version == 7 || $.browser.version == 6)) {
            var category = $(element).find('a');
            var columns = $(element).find('ul').length;

            $(element).css('width', (columns * 143) + 'px');
            $(element).find('ul').css('float', 'left');
        }

        var menu = $('#menu').offset();
        var dropdown = $(this).parent().offset();

        i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#menu').outerWidth());

        if (i > 0) {
            $(this).css('margin-left', '-' + (i + 5) + 'px');
        }
    });

    // IE6 & IE7 Fixes
    if ($.browser.msie) {
        if ($.browser.version <= 6) {
            $('#column-left + #column-right + #content, #column-left + #content').css('margin-left', '195px');

            $('#column-right + #content').css('margin-right', '195px');

            $('.box-category ul li a.active + ul').css('display', 'block');
        }

        if ($.browser.version <= 7) {
            $('#menu > ul > li').bind('mouseover', function() {
                $(this).addClass('active');
            });

            $('#menu > ul > li').bind('mouseout', function() {
                $(this).removeClass('active');
            });
        }
    }

    $('.success img, .warning img, .attention img, .information img').live('click', function() {
        $(this).parent().fadeOut('slow', function() {
            $(this).remove();
        });
    });
});

function addToCart(product_id) {
    $.ajax({
        url: 'index.php?route=checkout/cart/update',
        type: 'post',
        data: 'product_id=' + product_id,
        dataType: 'json',
        success: function(json) {
            $('.success, .warning, .attention, .information, .error').remove();

            if (json['redirect']) {
                location = json['redirect'];
            }

            if (json['error']) {
                if (json['error']['warning']) {
                    $('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                    $('.warning').fadeIn('slow');

                    $('html, body').animate({
                        scrollTop: 0
                    }, 'slow');
                }
            }

            if (json['success']) {
                $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                $('.success').fadeIn('slow');

                $('#cart_total').html(json['total']);

                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');
            }
        }
    });
}

function removeCart(key) {
    $.ajax({
        url: 'index.php?route=checkout/cart/update',
        type: 'post',
        data: 'remove=' + key,
        dataType: 'json',
        success: function(json) {
            $('.success, .warning, .attention, .information').remove();

            if (json['output']) {
                $('#cart_total').html(json['total']);

                $('#cart .content').html(json['output']);
            }
        }
    });
}

function removeVoucher(key) {
    $.ajax({
        url: 'index.php?route=checkout/cart/update',
        type: 'post',
        data: 'voucher=' + key,
        dataType: 'json',
        success: function(json) {
            $('.success, .warning, .attention, .information').remove();

            if (json['output']) {
                $('#cart_total').html(json['total']);

                $('#cart .content').html(json['output']);
            }
        }
    });
}

function addToWishList(product_id) {
    $.ajax({
        url: 'index.php?route=account/wishlist/update',
        type: 'post',
        data: 'product_id=' + product_id,
        dataType: 'json',
        success: function(json) {
            $('.success, .warning, .attention, .information').remove();

            if (json['success']) {
                $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                $('.success').fadeIn('slow');

                $('#wishlist_total').html(json['total']);

                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');
            }
        }
    });
}

function addToCompare(product_id) {
    $.ajax({
        url: 'index.php?route=product/compare/update',
        type: 'post',
        data: 'product_id=' + product_id,
        dataType: 'json',
        success: function(json) {
            $('.success, .warning, .attention, .information').remove();

            if (json['success']) {
                $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                $('.success').fadeIn('slow');

                $('#compare_total').html(json['total']);

                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');
            }
        }
    });
}
