<!-- Text area to display tracing information to the Web page. If you use Firebug or Safari debug console, these tracings will go to the JavaScript console as well. -->
<textarea style="width: 1000px; height: 300px;" id="_traceTextBox">
</textarea>
<!--
<script src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php" type="text/javascript">
</script>
-->
<script src="http://static.ak.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
var api_key = 'e22d3a6b659dec4fffcb9f4341552f45';
var channel_path = 'fb/xd_receiver.htm';
FB_RequireFeatures(["Api"], function(){
    // Create an ApiClient object, passing app's API key and
    // a site relative URL to xd_receiver.htm
    FB.Facebook.init(api_key, channel_path);

    var api = FB.Facebook.apiClient;
    // require user to login
    api.requireLogin(function(exception){
        FB.FBDebug.logLevel=1;
        FB.FBDebug.dump("Current user id is " + api.get_session().uid);
        // Get friends list

       //5-14-09: this code below is broken, correct code follows
       //api.friends_get(null, function(result){
       //     Debug.dump(result, 'friendsResult from non-batch execution ');
       // });

         api.friends_get(new Array(), function(result, exception){
              FB.FBDebug.dump(result, 'friendsResult from non-batch execution ');
         });
    });
});
//]]>
</script>