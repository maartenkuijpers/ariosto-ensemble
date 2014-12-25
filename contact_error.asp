<!-- #include FILE="header.asp" -->
<div id="content">
  <div id="leftmenu">
    <!-- #include FILE="menu_main.asp" -->
  </div>
  <div id="maincontent">
    <% if (lang = "nl") then %>
    <h3>Verzenden niet mogelijk</h3>
    <p>
    A.u.b. een naam en geldig email adres invullen. Klik <a href="#" onclick="history.go(-1)">hier</a> om terug te keren naar het contact formulier.
    </p>
    <% end if %>
    <% if (lang = "gb") then %>
    <h3>Sent</h3>
    <p>
    Please fill in a name and valid email address. Click <a href="#" onclick="history.go(-1)">here</a> to return to the contact form.
    </p>
    <% end if %>
    <% if (lang = "fr") then %>
    <h3>Envoy&eacute;</h3>
    <p>
    S'il vous pla&icirc;t remplir un nom valide et adresse e-mail. Cliquez <a href="#" onclick="history.go(-1)">ici</a> si vous voulez essayer &agrave; nouveau.
    </p>
    <% end if %>
  </div>
</div>
<!-- #include FILE="footer.asp" -->
