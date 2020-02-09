<div class="container">
	<div class="jumbotron">
		<div class="linkDiv">
			<a href="https://mistrzpolikarp.pl/wyroby-medyczne-jak-uzyskac-refundacje/">
				Przeczytaj, jak uzyskać refundację na wyroby medyczne &raquo;</a><br>
			<a href="http://isap.sejm.gov.pl/isap.nsf/DocDetails.xsp?id=WDU20190001267&fbclid=IwAR1GT1pbWldF2nkZfIUG_HmP5on6Egxph689LaXrGxnd5YBAHLhsv6h5zIQ">
				Zapoznaj się z rozporządzeniem o wyrobach medycznych &raquo;</a><br>  			
			<a href="https://mistrzpolikarp.pl/uwagi-do-wyszukiwarki/">
				Opis skrótów używanych w wyszukiwarce &raquo;</a>
		</div>
	</div>
</div>

<div class="container">
	<div class="jumbotron">
		<div class="footer">
			<a href="http://medutools.pl" target="_blank">&#169 Wydawnictwo
				Interaktywne Medutools</a>. All rights reserved, 2020
		</div>
	</div>
</div>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-115662735-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-115662735-2');
</script>

<script>
$(function () {
    var _redirectTimeout = 10 * 60 * 1000; // ten hours timeout - test with 10 * 1000 for ten seconds :)
    var _redirectUrl = ''; // login URL

    var _redirectHandle = null;

    function resetRedirect() {
        if (_redirectHandle) clearTimeout(_redirectHandle);
        _redirectHandle = setTimeout(function () {
            window.location.href = _redirectUrl;
        }, _redirectTimeout);
    }

    $.ajaxSetup({ complete: function () { resetRedirect(); } }); // reset idle redirect when an AJAX request completes

    resetRedirect(); // start idle redirect timer initially.
});</script>


</body>
</html>