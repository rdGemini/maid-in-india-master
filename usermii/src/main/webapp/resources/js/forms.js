		(function ($) {

			"use strict";

			var $document = $(document),
				$window = $(window),
				forms = {
					contactForm: $('#contactForm'),
					orderForm: $('#orderForm'),
					questionForm: $('#questionForm'),
					calculateForm: $('#calculateForm')
				};

			$document.ready(function () {

				// order form
				if (forms.orderForm.length) {
					var $orderForm = forms.orderForm;
					$orderForm.validate({
						rules: {
							name: {
								required: true,
								minlength: 2
							},
							message: {
								required: true,
								minlength: 20
							},
							email: {
								required: true,
								email: true
              },
              hiddenRecaptcha: {
                required: function () {
                    if (grecaptcha.getResponse() == '') {
                        return true;
                    } else {
                        return false;
                    }
                }
              }
						},
						messages: {
							name: {
								required: "Please enter your name",
								minlength: "Your name must consist of at least 2 characters"
							},
							message: {
								required: "Please enter message",
								minlength: "Your message must consist of at least 20 characters"
							},
							email: {
								required: "Please enter your email"
							},
              hiddenRecaptcha: {
								required: "Please verify reCaptcha"
							}
						},
						submitHandler: function submitHandler(form) {
							$(form).ajaxSubmit({
								type: "POST",
								data: $(form).serialize(),
								url: "form/process-order.php",
								success: function success() {
									$('.successform', $orderForm).fadeIn();
									$orderForm.get(0).reset();
								},
								error: function error() {
									$('.errorform', $orderForm).fadeIn();
								}
							});
						}
					});
				}

				// contact page form
          if (forms.contactForm.length) {
					var $contactform = forms.contactForm;
					$contactform.validate({
            ignore: ".ignore",
						rules: {
							name: {
								required: true,
								minlength: 2
							},
							message: {
								required: true,
								minlength: 20
							},
							email: {
								required: true,
								email: true
							},
              hiddenRecaptcha: {
                required: function () {
                    if (grecaptcha.getResponse() == '') {
                        return true;
                    } else {
                        return false;
                    }
                }
              }
						},
						messages: {
							name: {
								required: "Please enter your name",
								minlength: "Your name must consist of at least 2 characters"
							},
							message: {
								required: "Please enter message",
								minlength: "Your message must consist of at least 20 characters"
							},
							email: {
								required: "Please enter your email"
							},
              hiddenRecaptcha: {
								required: "Please verify reCaptcha"
							}
						},
						submitHandler: function submitHandler(form) {
							$(form).ajaxSubmit({
								type: "POST",
								data: $(form).serialize(),
								url: "form/process-contact.php",
								success: function success() {
									$('.successform', $contactform).fadeIn();
									$orderForm.get(0).reset();
								},
								error: function error() {
									$('.errorform', $contactform).fadeIn();
								}
							});
						}
					});
				}

				// question page form
				if (forms.questionForm.length) {
					var $questionForm = forms.questionForm;
					$questionForm.validate({
						rules: {
							name: {
								required: true,
								minlength: 2
							},
							message: {
								required: true,
								minlength: 20
							},
							email: {
								required: true,
								email: true
							}

						},
						messages: {
							name: {
								required: "Please enter your name",
								minlength: "Your name must consist of at least 2 characters"
							},
							message: {
								required: "Please enter message",
								minlength: "Your message must consist of at least 20 characters"
							},
							email: {
								required: "Please enter your email"
							}
						},
						submitHandler: function submitHandler(form) {
							$(form).ajaxSubmit({
								type: "POST",
								data: $(form).serialize(),
								url: "form/process-question.php",
								success: function success() {
									$('.successform', $questionForm).fadeIn();
									$questionForm.get(0).reset();
								},
								error: function error() {
									$('.errorform', $questionForm).fadeIn();
								}
							});
						}
					});
				}

				// datepicker
				if ($('.datetimepicker').length) {
					$('.datetimepicker').datetimepicker({
						format: 'DD/MM/YYYY',
						icons: {
							time: 'icon icon-clock',
							date: 'icon icon-calendar',
							up: 'icon icon-arrow_up',
							down: 'icon icon-arrow_down',
							previous: 'icon icon-arrow-left',
							next: 'icon icon-arrow-right',
							today: 'icon icon-today',
							clear: 'icon icon-trash',
							close: 'icon icon-cancel-music'
						}
					});
				}
				if ($('.timepicker').length) {
					$('.timepicker').datetimepicker({
						format: 'LT',
						icons: {
							time: 'icon icon-clock',
							up: 'icon icon-arrow_up',
							down: 'icon icon-arrow_down',
							previous: 'icon icon-arrow-left',
							next: 'icon icon-arrow-right'
						}
					});
				}

				// calculate form
				if (forms.calculateForm.length) {
					var rangeSlider100 = document.getElementById('rangeSlider100');
					var number100 = document.getElementById('number100');

					noUiSlider.create(rangeSlider100, {
						start: [1280],
						step: 10,
						connect: [true, false],
						tooltips: [wNumb({
							decimals: 0
						})],
						range: {
							'min': [100],
							'max': [3000]
						}
					});
					rangeSlider100.noUiSlider.on('update', function (values, handle) {
						number100.value = Math.round(values[handle] * 100) / 100
					});

					var rangeSlider101 = document.getElementById('rangeSlider101');
					var number101 = document.getElementById('number101');

					noUiSlider.create(rangeSlider101, {
						start: [2],
						step: 1,
						connect: [true, false],
						tooltips: [wNumb({
							decimals: 0
						})],
						range: {
							'min': [0],
							'max': [5]
						}
					});
					rangeSlider101.noUiSlider.on('update', function (values, handle) {
						number101.value = Math.round(values[handle] * 100) / 100
					});

					var rangeSlider102 = document.getElementById('rangeSlider102');
					var number102 = document.getElementById('number102');

					noUiSlider.create(rangeSlider102, {
						start: [3],
						step: 1,
						connect: [true, false],
						tooltips: [wNumb({
							decimals: 0
						})],
						range: {
							'min': [0],
							'max': [5]
						}
					});
					rangeSlider102.noUiSlider.on('update', function (values, handle) {
						number102.value = Math.round(values[handle] * 100) / 100
					});

					var rangeSlider103 = document.getElementById('rangeSlider103');
					var number103 = document.getElementById('number103');

					noUiSlider.create(rangeSlider103, {
						start: [2],
						step: 1,
						connect: [true, false],
						tooltips: [wNumb({
							decimals: 0
						})],
						range: {
							'min': [0],
							'max': [5]
						}
					});
					rangeSlider103.noUiSlider.on('update', function (values, handle) {
						number103.value = Math.round(values[handle] * 100) / 100
					});
				}


			});
		})(jQuery);