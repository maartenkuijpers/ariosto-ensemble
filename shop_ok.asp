<!-- #include FILE="header.asp" -->
<div id="content">
  <div id="leftmenu">
    <!-- #include FILE="menu_main.asp" -->
  </div>
  <div id="maincontent">
    <% if (lang = "nl") then %>
    <h3>Verzonden</h3>
    <p>
    Hartelijk dank voor uw bericht. Indien van toepassing zullen we zo spoedig mogelijk contact met u opnemen.
    </p>
    <% end if %>
    <% if (lang = "gb") then %>
    <h3>Sent</h3>
    <p>
    Thank you for your message to us. When applicable, we will contact you as soon as possible.
    </p>
    <% end if %>
    <% if (lang = "fr") then %>
    <h3>Envoy&eacute;</h3>
    <p>
    Nous vous remercions pour votre message. Nous allons d&egrave;s que possible contact avec vous le cas &eacute;ch&eacute;ant.
    </p>
    <% end if %>
  </div>
</div>
<!-- #include FILE="footer.asp" -->
