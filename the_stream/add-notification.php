<?php include('session.php'); ?>
<?php include('public/menubar.php'); ?>
<?php include('public/add-notification-form.php'); ?>
<?php include('public/footer.php'); ?>

<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
<script type="text/javascript">

    (function($,W,D) {
        var JQUERY4U = {};
        JQUERY4U.UTIL = {
            setupFormValidation: function() {
                //form validation rules
                $("#form-validation").validate({
                    rules: {
                        message  : "required"
                    },

                    messages: {
                        message  : "Please fill out this field!"

                    },
                    errorElement : 'div',
                    submitHandler: function(form) {
                        form.submit();
                    }

                });
            }
        }

        //when the dom has loaded setup form validation rules
        $(D).ready(function($) {
            JQUERY4U.UTIL.setupFormValidation();
        });

    })(jQuery, window, document);

</script>