var WtrPublicShortcode = function () { };

(function ($, sr) {

    var x = function (f, t, e) {
        var tm;

        return function debounced() {
            var obj = this, args = arguments;
            function d() {
                if (!e)
                    f.apply(obj, args);
                tm = null;
            };

            if (tm) {
                clearTimeout(tm);
            }
            else if (e) {
                f.apply(obj, args);
            }
            tm = setTimeout(d, t || 200);
        };
    }

    jQuery.fn[sr] = function (fn) { return fn ? this.bind('resize', x(fn)) : this.trigger(sr); };

})(jQuery, 'dynamicresize');

(function ($) {

    "use strict";

    WtrPublicShortcode.prototype = {

        init: function () {
            this.video_helper();
            this.animate_element();
            this.wtr_accordion();
            this.wtr_tabs();
            this.wtr_clients();
            this.wtr_google_maps();
            this.wtr_contact_form();
            this.wtr_box();
            this.wtr_parallax();
        }, // end init


        animate_element: function () {
            if (false == /Android|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini|MSIE 9.0/i.test(navigator.userAgent)) {
                $('.wtr_animate').waypoint({
                    offset: '100%',
                    triggerOnce: true,
                    continuous: true,
                    handler: function () {
                        var delay = $(this).data('animate-delay');
                        var animationEffect = $(this).data('animate');
                        $(this).delay(delay).queue(function () { $(this).addClass('animated ' + animationEffect) });
                    }
                });
            }
            else {
                $('div, span, a, li, img, blockquote, ul, ol, i, table').removeClass('wtrOpacityNone  wtr_animate animated');
            }
        },//end animate_element


        wtr_accordion: function () {
            var self = this,
                accord = $('.accord');

            if (accord.length) {
                accord.each(function (i, e) {

                    var self = $(e);
                    var type = self.attr('data-behavior');
                    var tabs = self.find('.accordion');

                    if ('accordion' == type) {
                        var open_tab = parseInt($.trim(self.attr('data-open')));

                        // prepare DOM
                        tabs.each(function (j, f) {
                            $(f).attr('id', 'section_' + i + '_' + (j + 1));
                            $(f).addClass('accordion_' + i);
                        });

                        $('.accordion_' + i).accordion({
                            defaultOpen: 'section_' + i + '_' + open_tab,
                            cookieName: 'nav' + i,
                            speed: 'fast',
                            masterClass: 'accordion_' + i,
                        });
                    }
                    else if ('toggle' == type) {
                        var open_tab = $.trim(self.attr('data-open'));
                        var open_tab_temp = open_tab.split(','),
                            opent_tab_temp_c = open_tab.length,
                            open_tab_f = [];

                        for (var z = 0; z < opent_tab_temp_c; z++) {
                            var tmp = parseInt(open_tab_temp[z]);
                            if (tmp) {
                                open_tab_f.push('section_' + i + '_' + tmp);
                            }
                        }

                        // prepare DOM
                        tabs.each(function (j, f) {
                            $(f).attr('id', 'section_' + i + '_' + (j + 1));
                            $(f).addClass('accordion_' + i);
                        });

                        $('.accordion_' + i).collapsible({
                            defaultOpen: open_tab_f.join(),
                            cookieName: 'nav' + i,
                            speed: 'fast',
                            masterClass: 'accordion_' + i,
                        });
                    }
                });


                $('.accordElemnt').click(function (event) {
                    //google maps fix
                    self.wtr_google_maps($(this));

                    //gallery fix
                    if ($('.flexslider').length) {
                        $(window).trigger('resize');
                    }
                });
            }
        },// end wtr_accordion


        wtr_tabs: function () {
            var self = this;

            $('.horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true,   // 100% fit in a container

                activate: function (event) { // Callback function if tab is switched
                    var $tab = $(this),
                        $info = $('#tabInfo'),
                        $name = $('span', $info);
                    $name.text($tab.text());
                    $info.show();

                    //google maps fix
                    var clickObj = $(this).parents('.wtrTabShortcode').find('.resp-tabs-container');
                    self.wtr_google_maps(clickObj);

                    //gallery fix
                    if ($('.flexslider').length) {
                        $(window).trigger('resize');
                    }
                }//end activate
            });

            $('.verticalTab').easyResponsiveTabs({
                type: 'vertical',
                width: 'auto',
                fit: true
            });

            // open tabs
            $('.wtrTabShortcode').each(function (i, e) {
                var self = $(e);
                var active = parseInt($.trim(self.attr('data-open')));
                self.find('.resp-tab-item:eq(' + (active - 1) + ')').trigger('click');
            });

        },// end wtr_tabs


        wtr_clients: function () {
            if ($(".wtr_clients").length) {
                $(".wtr_clients").owlCarousel({
                    itemsDesktop: [1200, 4],
                    itemsDesktopSmall: [1040, 4],
                    itemsTablet: [980, 4],
                    itemsTabletSmall: [768, 3],
                    itemsMobile: [479, 2],
                    responsive: true,
                    responsiveRefreshRate: 200,
                    responsiveBaseWidth: window
                });
            }
        },// wtr_clients


        wtr_google_maps: function (parent) {
            if (parent) {
                var gMaps = $(parent).find('.wonsterGMapInside');
            }
            else {
                var gMaps = $('.wonsterGMapInside');
            }

            gMaps.each(function (i, e) {

                // get main settings
                var map = $(e);
                var idMap = map.attr('id'),
                    latlngList = {},
                    marker,
                    markerC = wtr_google_maps[i].marker.length;

                // set coordinates
                for (var j = 0; j < markerC; j++) {
                    var markerObj = wtr_google_maps[i].marker[j];
                    latlngList[j] = new google.maps.LatLng(markerObj.x_pos, markerObj.y_pos);
                }

                // create map
                var mapOptions = {
                    zoom: wtr_google_maps[i].data.zoom,
                    center: latlngList[0],
                    scrollwheel: wtr_google_maps[i].data.scroll,
                    zoomControl: wtr_google_maps[i].data.zoom_control,
                    mapTypeControl: wtr_google_maps[i].data.type_control,
                    mapTypeId: google.maps.MapTypeId[wtr_google_maps[i].data.type],
                    streetViewControl: false,
                    styles: wtr_google_maps_style[wtr_google_maps[i].data.styles]
                };
                map = new google.maps.Map(document.getElementById(idMap), mapOptions);

                // adding a marker to the map
                for (var j = 0; j < markerC; j++) {
                    var markerObj = wtr_google_maps[i].marker[j];
                    marker = new google.maps.Marker({
                        position: latlngList[j],
                        map: map,
                        draggable: false,
                        title: markerObj.title,
                        icon: {
                            url: wtr_google_marker_style[wtr_google_maps[i].marker[j].marker_style].url,
                            scaledSize: new google.maps.Size(wtr_google_marker_style[wtr_google_maps[i].marker[j].marker_style].width,
                                                              wtr_google_marker_style[wtr_google_maps[i].marker[j].marker_style].height
                                                            )
                        }
                    });
                }

            });
        },// end wtr_google_maps


        wtr_contact_form: function () {
            // render
            $('.wtrFormFieldCheckbox').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%'
            });

            $("select").selecter();

            //send form btn
            var send_btn = $('.wtr_sent_cf_button');
            if (send_btn.length) {
                send_btn.click(function (e) {
                    e.preventDefault();

                    var self = $(this);
                    var mainForm = self.parents('form');
                    var serializeData = mainForm.serialize();
                    var formField = mainForm.find('.wtrFormField');
                    var formFieldC = formField.length;
                    var goodField = 0;
                    var formUrl = self.attr('action');

                    // remove old alert
                    formField.removeClass('borderAlert WonsterRequiredTextArea');
                    mainForm.find('.wtrCFAlert').remove();

                    formField.each(function (i, e) {

                        var field = $(e);
                        var val = $.trim(field.val());
                        var valid = field.attr('data-valid');

                        if (field.hasClass('wtrFormFieldCheckbox')) {
                            if (!field.is(':checked')) {
                                serializeData += '&' + field.attr('name') + '=unchecked';
                            }
                            goodField++;
                        }
                        else if ('none' == valid) {
                            goodField++
                        }
                        else if ('is_empty' == valid) {
                            if ('' == val) {
                                field.addClass('borderAlert');
                            }
                            else {
                                goodField++;
                            }
                        }
                        else if ('is_email' == valid) {
                            var email_v = /^( )*(([A-Za-z0-9_\-\.\'])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,7})|)$/;

                            if (!email_v.exec(val) || '' == val) {
                                field.addClass('borderAlert')
                            }
                            else {
                                goodField++;
                            }
                        }
                        else if ('is_number' == valid) {
                            if ('' == val || !val.match(/^(\d)*$/)) {
                                field.addClass('borderAlert');
                            }
                            else {
                                goodField++;
                            }
                        }
                        else if ('wtr_captcha' == valid) {
                            var code = field.siblings('.wtr_from_captcha').val();
                            var codePosition = parseInt(code.slice(-1)) - 1;
                            var codeVer = code.substring(codePosition, codePosition + 2);

                            if (parseInt(codeVer) == parseInt(val)) {
                                goodField++;
                            }
                            else {
                                field.addClass('borderAlert');
                            }
                        }

                        // Send form
                        if (formFieldC == goodField) {
                            var loader = mainForm.find('.messPreloader');
                            loader.css('display', 'inline-block');

                            $.ajax({
                                type: "POST",
                                url: formUrl,
                                data: serializeData,
                                async: true,
                                success: function (msg) {
                                    var result = $(msg);
                                    var alertArea = result.find('.wonsterAlert');
                                    var idForm = alertArea.attr('data-alert-area');
                                    var formArea = $('#wtr_contact_form_area_' + idForm);
                                    formArea.append(alertArea);
                                },
                                error: function () {
                                    alert('Error');
                                },
                                complete: function () {
                                    loader.css('display', 'none');
                                }
                            });
                        }
                    });
                });
            }
        },// end wtr_contact_form


        wtr_box: function () {
            // fun auto height
            function wtrAutoHeightBox(conterner) {
                conterner.each(function (i, e) {
                    var obj = $(e),
                        max_h = 0;

                    var childrenE = obj.find('.boxItemBgDesc ');
                    var qAutoSize = obj.attr('data-wtr-box-sht-height');

                    childrenE.height('');
                    if ('on' == qAutoSize) {
                        var maxHeight = Math.max.apply(null, childrenE.map(function () { return $(this).height(); }).get());
                        childrenE.height(maxHeight);
                    }
                });
                // resize window
            }// end wtrAutoHeightBox

            var conterner = $('.wtr_box_sht_height ');
            if (conterner.length) {
                // init
                wtrAutoHeightBox(conterner);

                $(window).dynamicresize(function () { wtrAutoHeightBox(conterner); });
            }
        },//end  wtr_box


        video_helper: function () {
            var videoCenter = $('.wtrCenterVideo');
            if (videoCenter.length) {
                videoCenter.each(function (i, e) {
                    var $obj = $(e);
                    $obj.before('<center id="wtr_wideo_center_contener_' + i + '"></center>');
                    $obj.appendTo('#wtr_wideo_center_contener_' + i);
                });
            }
        },//video_helper

        wtr_parallax: function () {
            $.stellar({
                horizontalScrolling: false,
                verticalOffset: 0
            });
        },
    };// end WtrPublicShortcode


    $(document).ready(function () {

        var wtrShortcode = new WtrPublicShortcode();
        wtrShortcode.init();
    });

})(jQuery);