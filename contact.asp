<!-- #include FILE="header.asp" -->
<div id="content">
  <div id="leftmenu">
    <!-- #include FILE="menu_main.asp" -->
  </div>
  <div id="maincontent">
    <% if (lang = "nl") then %>
    <h3>Neem contact op met het Ariosto Ensemble</h3>
    <% end if %>
    <% if (lang = "gb") then %>
    <h3>Contact the Ariosto Ensemble</h3>
    <% end if %>
    <% if (lang = "fr") then %>
    <h3>Contactez l'Ariosto Ensemble</h3>
    <% end if %>
    <form id="form_contact" method="post" action="contact_send.asp">
    <p>
      <% if (lang = "nl") then %>
      <fieldset>
        <p>
          Velden met * zijn verplicht</p>
        <p>
          <label for="Name">Uw naam *:</label>
          <input class="form_contact_input200" type="text" name="Name" /><br />
          <label for="EmailFrom">Email adres:</label>
          <input class="form_contact_input200" type="text" name="EmailFrom" /><br />
          <label for="Subject">Onderwerp:</label>
          <input class="form_contact_input350" type="text" name="Subject" />
        </p>
        <label for="Message">Uw bericht *:</label><br />
        <textarea class="form_contact_textarea" name="Message" cols="40" rows="10"></textarea>
        <p>
        Let op: Verwacht u een reactie van ons? Zorg dat u uw email adres invult.
        </p>
        <input id="form_contact_submit" type="submit" name="submit" value="Verzenden">
      </fieldset>
      <% end if %>
      <% if (lang = "gb") then %>
      <% end if %>
      <% if (lang = "fr") then %>
      <% end if %>
    </p>
    </form>
  </div>
</div>
<!-- #include FILE="footer.asp" -->
