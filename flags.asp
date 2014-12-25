<%

' LANGUAGE TESTING LOGIC

dim lang, q
' try reading language from cookie
lang = Request.Cookies("lang")

' let querystring overrule cookie-stored value
q = Request.QueryString("lang")
if (q <> "") then
    lang = q
    Response.Cookies("lang") = lang
end if

' use default if language not set by query or cookie
if (lang = "") then
    ' no value, set default
    lang = "nl"
    Response.Cookies("lang") = lang
end if

script = Request.ServerVariables("SCRIPT_NAME")

%>
<div id="flags">
	<a href="shop.asp">
		<img src="images/shopping-cart.png" alt="Go to shopping area" /></a>
	<% ' ONLY SHOW FLAGS OF THE OTHER LANGUAGES %>
	<% if (lang <> "gb") then %>
	<a href="<%Response.Write(script)%>?lang=gb">
		<img src="images/flag_GB.gif" alt="Use English language" /></a>
	<% end if %>
	<% if (lang <> "fr") then %>
	<a href="<%Response.Write(script)%>?lang=fr">
		<img src="images/flag_FR.gif" alt="Employez la langue Fran&ccedil;aise" /></a>
	<% end if %>
	<% if (lang <> "nl") then %>
	<a href="<%Response.Write(script)%>?lang=nl">
		<img src="images/flag_NL.gif" alt="Kies Nederlandse taal" /></a>
	<% end if %>
</div>
