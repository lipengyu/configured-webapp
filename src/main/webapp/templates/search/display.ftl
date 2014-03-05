<#import "/tags/form.ftl" as form>
<#import "/tags/util.ftl" as util>
<htmL>
<head>
<script src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
<script src="<@util.url "/js/jquery.mobile-1.4.2.min.js" />" type="text/javascript"></script>
<script src="<@util.url "/js/maps.util.js" />" type="text/javascript"></script>
<script>
$(document).ready(function() {
	test();
});
</script>
<style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
</head>
<body>
	<@form.form commandName="searchForm">
		<input type="hidden" name="latitude"/>
		<input type="hidden" name="longitude"/>
		
	</@form.form>
	<div id="map-canvas"></div>
</body>
</html>