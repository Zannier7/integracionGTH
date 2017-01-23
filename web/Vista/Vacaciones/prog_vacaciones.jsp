<%-- 
    Document   : prog_vacaciones
    Created on : 17/01/2017, 03:48:03 PM
    Author     : Cesar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

        <title>Programar Vacaciones</title>
        <meta name="description" content="">
        <meta name="author" content="">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Basic Styles -->
        <link rel="stylesheet" type="text/css" media="screen" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../css/font-awesome.min.css">

        <!-- SmartAdmin Styles : Caution! DO NOT change the order -->
        <link rel="stylesheet" type="text/css" media="screen" href="../../css/smartadmin-production-plugins.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../css/smartadmin-production.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../css/smartadmin-skins.min.css">

        <!-- SmartAdmin RTL Support -->
        <link rel="stylesheet" type="text/css" media="screen" href="../../css/smartadmin-rtl.min.css"> 

        <!-- We recommend you use "your_style.css" to override SmartAdmin
             specific styles this will also ensure you retrain your customization with each SmartAdmin update.
        <link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

        <!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
        <link rel="stylesheet" type="text/css" media="screen" href="../../css/demo.min.css">

        <!-- FAVICONS -->
        <link rel="shortcut icon" href="../../img/favicon/favicon.ico" type="image/x-icon">
        <link rel="icon" href="../../img/favicon/favicon.ico" type="image/x-icon">

        <!-- GOOGLE FONT -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

        <!-- Specifying a Webpage Icon for Web Clip 
                 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
        <link rel="apple-touch-icon" href="../../img/splash/sptouch-icon-iphone.png">
        <link rel="apple-touch-icon" sizes="76x76" href="../../img/splash/touch-icon-ipad.png">
        <link rel="apple-touch-icon" sizes="120x120" href="../../img/splash/touch-icon-iphone-retina.png">
        <link rel="apple-touch-icon" sizes="152x152" href="../../img/splash/touch-icon-ipad-retina.png">

        <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <!-- Startup image for web apps -->

        <link rel="apple-touch-startup-image" href="../../img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
        <link rel="apple-touch-startup-image" href="../../img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
        <link rel="apple-touch-startup-image" href="../../img/splash/iphone.png" media="screen and (max-device-width: 320px)">

    </head>
    <body>
        <article class="col-sm-6 col-md-6 col-lg-3"></article>
        <!-- widget grid -->
        <div class="row">

            <!-- NEW WIDGET START -->
            <article class="col-sm-12 col-md-12 col-lg-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <!-- widget options:
                    usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

                    data-widget-colorbutton="false"
                    data-widget-editbutton="false"
                    data-widget-togglebutton="false"
                    data-widget-deletebutton="false"
                    data-widget-fullscreenbutton="false"
                    data-widget-custombutton="false"
                    data-widget-collapsed="true"
                    data-widget-sortable="false"

                    -->

                    <header>
                        <span class="widget-icon"> <i class="fa fa-check"></i> </span>
                        <h2>Programación de fechas</h2> 

                    </header>

                    <!-- widget div-->
                    <div>

                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                            <!-- This area used as dropdown edit box -->

                        </div>
                        <!-- end widget edit box -->

                        <!-- widget content -->
                        <div class="widget-body no-padding">
                            <form class="smart-form">
                                <header>
                                    Programacion de vacaciones  - Datos del trabajador
                                </header>
                                <fieldset>
                                    <div class="row">
                                        <section class="col col-6">
                                            <label>Nombres:</label>
                                            <label class="input" style="color: #005cac; font-weight: bold;">José Alfredo Lopez Cruz
                                            </label>
                                        </section>
                                    </div>
                                    <div class="row">
                                        <section class="col col-6">
                                            <label>Correo</label>
                                            <label class="input"> <i class="icon-prepend fa fa-envelope-o"></i>
                                                <input type="email" name="email" value='joselopez@upeu.edu.pe' disabled="disabled">
                                            </label>
                                        </section>
                                        <section class="col col-6">
                                            <label>Fecha de nacimiento</label>
                                            <label class="input"><i class="icon-prepend fa fa-home"></i>
                                                <input type="text" name="fecha_nac" id="fecha_doc" disabled value="12/12/1985">
                                            </label>
                                        </section>
                                    </div>
                                    <div class="row">
                                        <section class="col col-4">
                                            <label>Sexo</label>
                                            <label class="input"> <i class="icon-prepend fa fa-envelope-o"></i>
                                                <input type="email" name="sexo" value='M' disabled="disabled">
                                            </label>
                                        </section>
                                        <section class="col col-4">
                                            <label>Tipo de documento</label>
                                            <label class="input"><i class="icon-prepend fa fa-home"></i>
                                                <input type="text" name="tip_doc" id="tip_doc" disabled value="DNI">
                                            </label>
                                        </section>
                                        <section class="col col-4">
                                            <label>Número de documento</label>
                                            <label class="input"><i class="icon-prepend fa fa-home"></i>
                                                <input type="text" name="num_doc" id="num_doc" disabled value="12345678">
                                            </label>
                                        </section>
                                    </div>
                                    <div class="row">
                                        <div class="col col-12 text-center">
                                            <h3><label>Seleccionar rango de fechas a solicitar:</label></h3>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col col-2"></div>
                                        <section class="row col col-6 dateranges ">
                                            <div style="padding-bottom: 5px;" class="row col col-12 rangegroup1">
                                                <div class="col col-6">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input onchange="calnd()" class="form-control" id="from1" type="text" placeholder="Desde">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col col-6 ">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input onchange="calnd()" class="form-control" id="to1" type="text" placeholder="Hasta">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <div class="col col-4">
                                            <a id="addrange" class="btn btn-primary btn-circle btn-lg"><i class="glyphicon glyphicon-plus"></i></a>
                                            <a id="delrange" class="btn btn-danger btn-circle btn-lg"><i class="glyphicon glyphicon-remove"></i></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col col-2"></div>
                                        <div class="col col-10">
                                            <h3><label>Total de días:</label><label style="color: #005cac;" id="ntd">0</label></h3>
                                        </div>
                                    </div>
                                </fieldset>
                                <footer>
                                    <input type="hidden" name="opc" value="VacationAsign">
                                    <input type="hidden" name="iddgp" value="">
                                    <input type="hidden" name="idtra" value="">
                                    <button id="submitbtn" type="button" class="btn btn-labeled btn-success">
                                        Registrar
                                    </button>
                                    <button type="button" id="cancelbtn" class="btn btn-labeled btn-danger">
                                        Cancelar
                                    </button>
                                </footer>
                            </form>
                        </div>
                    </div>
                </div>
            </article>
        </div>
        <script src="js/daterangepicker/moment.min.js" type="text/javascript"></script>
        <script data-pace-options='{ "restartOnRequestAfter": true }' src="js/plugin/pace/pace.min.js"></script>

        <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>
                                                                if (!window.jQuery) {
                                                                    document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
                                                                }
        </script>

        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
        <script>
                                                                if (!window.jQuery.ui) {
                                                                    document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
                                                                }
        </script>

        <!-- IMPORTANT: APP CONFIG -->
        <script src="../../js/app.config.js"></script>

        <!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
        <script src="../../js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 

        <!-- BOOTSTRAP JS -->
        <script src="../../js/bootstrap/bootstrap.min.js"></script>

        <!-- CUSTOM NOTIFICATION -->
        <script src="../../js/notification/SmartNotification.min.js"></script>

        <!-- JARVIS WIDGETS -->
        <script src="../../js/smartwidgets/jarvis.widget.min.js"></script>

        <!-- EASY PIE CHARTS -->
        <script src="../../js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

        <!-- SPARKLINES -->
        <script src="../../js/plugin/sparkline/jquery.sparkline.min.js"></script>

        <!-- JQUERY VALIDATE -->
        <script src="../../js/plugin/jquery-validate/jquery.validate.min.js"></script>

        <!-- JQUERY MASKED INPUT -->
        <script src="../../js/plugin/masked-input/jquery.maskedinput.min.js"></script>

        <!-- JQUERY SELECT2 INPUT -->
        <script src="../../js/plugin/select2/select2.min.js"></script>

        <!-- JQUERY UI + Bootstrap Slider -->
        <script src="../../js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

        <!-- browser msie issue fix -->
        <script src="../../js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

        <!-- FastClick: For mobile devices -->
        <script src="../../js/plugin/fastclick/fastclick.min.js"></script>

        <!--[if IE 8]>

        <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

        <![endif]-->

        <!-- Demo purpose only -->
        <script src="../../js/demo.min.js"></script>

        <!-- MAIN APP JS FILE -->
        <script src="../../js/app.min.js"></script>

        <!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
        <!-- Voice command : plugin -->
        <script src="../../js/speech/voicecommand.min.js"></script>

        <!-- SmartChat UI : plugin -->
        <script src="../../js/smart-chat-ui/smart.chat.ui.min.js"></script>
        <script src="../../js/smart-chat-ui/smart.chat.manager.min.js"></script>

        <!-- PAGE RELATED PLUGIN(S) -->
        <script src="../../js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
        <script src="../../js/plugin/fuelux/wizard/wizard.min.js"></script>




        <script type="text/javascript">

                                                                // DO NOT REMOVE : GLOBAL FUNCTIONS!

                                                                var nr = 1;
                                                                $(document).ready(function () {

                                                                    pageSetUp();

                                                                    // Date Range Picker
                                                                    $("#from1").datepicker({
                                                                        defaultDate: "+1w",
                                                                        changeMonth: true,
                                                                        numberOfMonths: 2,
                                                                        prevText: '<i class="fa fa-chevron-left"></i>',
                                                                        nextText: '<i class="fa fa-chevron-right"></i>',
                                                                        onClose: function (selectedDate) {
                                                                            $("#to1").datepicker("option", "minDate", selectedDate);
                                                                        }

                                                                    });
                                                                    $("#to1").datepicker({
                                                                        defaultDate: "+1w",
                                                                        changeMonth: true,
                                                                        numberOfMonths: 2,
                                                                        prevText: '<i class="fa fa-chevron-left"></i>',
                                                                        nextText: '<i class="fa fa-chevron-right"></i>',
                                                                        onClose: function (selectedDate) {
                                                                            $("#from1").datepicker("option", "maxDate", selectedDate);
                                                                        }
                                                                    });





                                                                    //Bootstrap Wizard Validations

                                                                    var $validator = $("#wizard-1").validate({
                                                                        rules: {
                                                                            email: {
                                                                                required: true,
                                                                                email: "Your email address must be in the format of name@domain.com"
                                                                            },
                                                                            fname: {
                                                                                required: true
                                                                            },
                                                                            lname: {
                                                                                required: true
                                                                            },
                                                                            country: {
                                                                                required: true
                                                                            },
                                                                            city: {
                                                                                required: true
                                                                            },
                                                                            postal: {
                                                                                required: true,
                                                                                minlength: 4
                                                                            },
                                                                            wphone: {
                                                                                required: true,
                                                                                minlength: 10
                                                                            },
                                                                            hphone: {
                                                                                required: true,
                                                                                minlength: 10
                                                                            }
                                                                        },
                                                                        messages: {
                                                                            fname: "Please specify your First name",
                                                                            lname: "Please specify your Last name",
                                                                            email: {
                                                                                required: "We need your email address to contact you",
                                                                                email: "Your email address must be in the format of name@domain.com"
                                                                            }
                                                                        },
                                                                        highlight: function (element) {
                                                                            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                                                                        },
                                                                        unhighlight: function (element) {
                                                                            $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                                                                        },
                                                                        errorElement: 'span',
                                                                        errorClass: 'help-block',
                                                                        errorPlacement: function (error, element) {
                                                                            if (element.parent('.input-group').length) {
                                                                                error.insertAfter(element.parent());
                                                                            } else {
                                                                                error.insertAfter(element);
                                                                            }
                                                                        }
                                                                    });

                                                                    $('#bootstrap-wizard-1').bootstrapWizard({
                                                                        'tabClass': 'form-wizard',
                                                                        'onNext': function (tab, navigation, index) {
                                                                            var $valid = $("#wizard-1").valid();
                                                                            if (!$valid) {
                                                                                $validator.focusInvalid();
                                                                                return false;
                                                                            } else {
                                                                                $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).addClass(
                                                                                        'complete');
                                                                                $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).find('.step')
                                                                                        .html('<i class="fa fa-check"></i>');
                                                                            }
                                                                        }
                                                                    });


                                                                    // fuelux wizard
                                                                    var wizard = $('.wizard').wizard();

                                                                    wizard.on('finished', function (e, data) {
                                                                        //$("#fuelux-wizard").submit();
                                                                        //console.log("submitted!");
                                                                        $.smallBox({
                                                                            title: "Congratulations! Your form was submitted",
                                                                            content: "<i class='fa fa-clock-o'></i> <i>1 seconds ago...</i>",
                                                                            color: "#5F895F",
                                                                            iconSmall: "fa fa-check bounce animated",
                                                                            timeout: 4000
                                                                        });

                                                                    });
                                                                    $("#submitbtn").click(function () {

                                                                    });

                                                                    $("#addrange").click(function () {
                                                                        var add = "";
                                                                        if (nr < 4) {
                                                                            nr = nr + 1;
                                                                            add += "<div style='padding-bottom: 5px;' class='row col col-12 rangegroup" + nr + "'>";
                                                                            add += "<div class='col col-6'>";
                                                                            add += "<div class='form-group'>";
                                                                            add += "<div class='input-group'>";
                                                                            add += "<input onchange='calnd()' class='form-control' id='from" + nr + "' type='text' placeholder='Desde'>";
                                                                            add += "<span class='input-group-addon'><i class='fa fa-calendar'></i></span>";
                                                                            add += "</div>";
                                                                            add += "</div>";
                                                                            add += "</div>";
                                                                            add += "<div class='col col-6 '>";
                                                                            add += "<div class='form-group'>";
                                                                            add += "<div class='input-group'>";
                                                                            add += "<input onchange='calnd()' class='form-control' id='to" + nr + "' type='text' placeholder='Hasta'>";
                                                                            add += "<span class='input-group-addon'><i class='fa fa-calendar'></i></span>";
                                                                            add += "</div>";
                                                                            add += "</div>";
                                                                            add += "</div>";
                                                                            add += "</div>";
                                                                            $(".dateranges").append(add);
                                                                            $("#from" + nr).datepicker({
                                                                                defaultDate: "+1w",
                                                                                changeMonth: true,
                                                                                numberOfMonths: 2,
                                                                                prevText: '<i class="fa fa-chevron-left"></i>',
                                                                                nextText: '<i class="fa fa-chevron-right"></i>',
                                                                                onClose: function (selectedDate) {
                                                                                    $("#to" + nr).datepicker("option", "minDate", selectedDate);
                                                                                }

                                                                            });
                                                                            $("#to" + nr).datepicker({
                                                                                defaultDate: "+1w",
                                                                                changeMonth: true,
                                                                                numberOfMonths: 2,
                                                                                prevText: '<i class="fa fa-chevron-left"></i>',
                                                                                nextText: '<i class="fa fa-chevron-right"></i>',
                                                                                onClose: function (selectedDate) {
                                                                                    $("#from" + nr).datepicker("option", "maxDate", selectedDate);
                                                                                }
                                                                            });
                                                                        } else {

                                                                        }
                                                                    });
                                                                    $("#delrange").click(function () {
                                                                        if (nr > 1) {
                                                                            $(".rangegroup" + nr).remove();
                                                                            nr = nr - 1;
                                                                        }
                                                                    });
                                                                });
                                                                function calnd() {
                                                                    var ntd = 0, datef = new Date(), datet = new Date();
                                                                    for (var i = 1; i <= nr; i++) {
                                                                        if ($("#from" + i).val() != "" && $("#to" + i).val() != "") {
                                                                            datef = new Date($("#from" + i).val());
                                                                            datet = new Date($("#to" + i).val());
                                                                            var dater = datet - datef;
                                                                            var rd = (((dater / 1000) / 60) / 60) / 24 + 1;
                                                                            ntd = ntd + rd;
                                                                        }
                                                                    }
                                                                    $("#ntd").text(ntd);
                                                                    if (ntd > 30) {
                                                                        $("#ntd").css("color", "#A90329");
                                                                    }else if(ntd==30){
                                                                        $("#ntd").css("color", "#1B641B");
                                                                    }else{
                                                                        $("#ntd").css("color", "#005cac");
                                                                    }
                                                                }

        </script>

        <!-- Your GOOGLE ANALYTICS CODE Below -->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>



    </body>
</html>
