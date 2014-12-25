<!-- #include FILE="header.asp" -->
<div id="content">
  <div id="leftmenu">
    <!-- #include FILE="menu_main.asp" -->
  </div>
  <div id="maincontent">
    <% if (lang = "nl") then %>
    <h3>Bestel een CD van het Ariosto Ensemble</h3>
    <% end if %>
    <% if (lang = "gb" or lang = "fr") then %>
    <h3>Order a CD of the Ariosto Ensemble</h3>
    <% end if %>
    <script type="text/javascript" language="javascript">
      function calculateTotal(flagUpdateScreen) {
        var arrayAmounts = new Array("Amount_HisGoldenLocks", "Amount_Mariamotetten", "Amount_Kerst2008"); // form fields to read for amounts
        var arrayValues = new Array(1500, 1250, 1250); // values in euro cents
        var value, amount, total, index;

        total = 0;
        for (index in arrayAmounts) {
          total += arrayValues[index] * Number(document.getElementById(arrayAmounts[index++]).value);
        }

        var numTotal = (total / 100).toFixed(2);

        if (flagUpdateScreen == true) {
          document.getElementById('Amount_Total').innerHTML = numTotal;
        }
        return numTotal;
      }

      function RefreshImage(valImageId) {
        var objImage = document.images[valImageId];
        if (objImage == undefined) {
          return;
        }
        var now = new Date();
        objImage.src = objImage.src.split('?')[0] + '?x=' + now.toUTCString();
      }

    </script>
    <form id="form_shop" method="post" action="shop_send.asp">
    <p>
      <% if (lang = "nl" or lang = "fr" or lang = "gb") then %>
      <p>
        De bestel procedure is als volgt:<br />
        <ul style="list-style-type: decimal">
          <li>In het formulier hieronder vult u uw naam, adres en bestelling in.</li>
          <li>Na drukken "Verzenden" sturen wij u een email met betalingsgevens.</li>
          <li>U maakt het geld over naar de rekening van het Ariosto Ensemble.</li>
          <li>Na ontvangst van het totaal bedrag op de rekening van het Ariosto Ensemble, versturen wij de betreffende CD('s) naar het
            door u hieronder opgegeven postadres.</li>
        </ul>
      </p>
      <p>
        Heeft u een vraag of wilt op andere wijze bestellen? Maak gebruik van het <a href="contact.asp">contactformulier</a> om
        contact met ons op te nemen (NB: u verlaat deze pagina).
      </p>
      <fieldset>
        <p>
          <table>
            <thead>
              <tr>
                <td>CD</td>
                <td></td>
                <td>Prijs</td>
                <td>Aantal</td>
              </tr>
              <tr>
                <td colspan="4">
                  <hr />
                </td>
              </tr>
            </thead>
			<!--
            <tr>
              <td class="form_shop_col1">
                <img src="images/CD_MiserereMei.png" alt="Miserere Mei, Deus" />
              </td>
              <td class="form_shop_col2"><strong>Miserere Mei, Deus</strong><br />
                Miserere Mei, Deus bestaat uit composities van Josquin des Prez en Thom&agrave;s Ludovico da Victoria.</td>
              <td class="form_shop_col3" colspan="2">Binnenkort verkrijgbaar</td>
              <td class="form_shop_col3">&euro;12,50 </td>
              <td class="form_shop_col4">
                <input class="form_shop_input24" type="text" id="Amount_MiserereMei" name="Amount_MiserereMei"
                  value="0" /><br />
              </td>
            </tr>
            <tr>
              <td colspan="4">
                <hr />
              </td>
            </tr>
			-->
            <tr>
              <td class="form_shop_col1">
                <img src="images/CD_HisGoldenLocks.png" alt="His Golden Locks" />
              </td>
              <td class="form_shop_col2"><strong>His Golden Locks</strong><br />
                Op deze CD van tenor Ludy Vrijdag en luitist David van Ooijen vindt u een scala aan lutesongs van befaamde componisten zoals John Downland
                and Thomas Morley.<br />
                <small>Extra verzendkosten: &euro;2,00 (NL), &euro;3,00 (Europa).</small></td>
              <td class="form_shop_col3">&euro;15,00 </td>
              <td class="form_shop_col4">
                <input class="form_shop_input24" type="text" id="Amount_HisGoldenLocks" name="Amount_HisGoldenLocks" value="0" onblur="calculateTotal(true)" /><br />
              </td>
            </tr>
            <tr>
              <td colspan="4">
                <hr />
              </td>
            </tr>
            <tr>
              <td class="form_shop_col1">
                <img src="images/CD_Mariamotetten.png" alt="Mariamotetten" />
              </td>
              <td class="form_shop_col2"><strong>Mariamotetten</strong><br />
                Mariamotetten van componisten uit laat 15e en begin 16e eeuw, als Jacob Obrecht, Johannes Ockeghem en Josquin des Prez.
                Opname: oktober & november 2009.</td>
              <td class="form_shop_col3">&euro;12,50 </td>
              <td class="form_shop_col4">
                <input class="form_shop_input24" type="text" id="Amount_Mariamotetten" name="Amount_Mariamotetten" value="0" onblur="calculateTotal(true)" /><br />
              </td>
            </tr>
            <tr>
              <td colspan="4">
                <hr />
              </td>
            </tr>
            <tr>
              <td class="form_shop_col1">
                <img src="images/CD_Kerst2008.png" alt="Van Jesaja tot Herodes - Christus' Geboorte" />
              </td>
              <td class="form_shop_col2"><strong>Van Jesaja tot Herodes - Christus' Geboorte (Kerstmis 2008)</strong><br />
                Registratie van het project met als thema de advent en kerst periode. Opname: december 2008.<br />
              </td>
              <td class="form_shop_col3">&euro;12,50 </td>
              <td class="form_shop_col4">
                <input class="form_shop_input24" type="text" id="Amount_Kerst2008" name="Amount_Kerst2008" value="0" onblur="calculateTotal(true)" /><br />
              </td>
            </tr>
            <tr>
              <td colspan="4">
                <hr />
              </td>
            </tr>
            <tr>
              <td class="form_shop_col1">
                <img src="images/CD_Orlando.png" alt="Orlando Furioso" />
              </td>
              <td class="form_shop_col2"><strong>Orlando Furioso</strong><br />
                Deze CD is een registratie van de uitzending op 1 januari 2002, opgenomen in de VPRO studio in Hilversum.<br />
              </td>
              <td class="form_shop_col3" colspan="2">Uitverkocht</td>
            </tr>
            <tr>
              <td colspan="4">
                <hr />
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Totaal bedrag van uw bestelling:</td>
              <td class="form_shop_col3" colspan="2">&euro;<div style="display: inline;" id="Amount_Total">
                0,00</div>
              </td>
            </tr>
            <tr>
              <td colspan="4">
                <hr />
              </td>
            </tr>
            <tr>
              <td colspan="4">Verzendkosten zijn inbegrepen in de prijs m.u.v. CD &quot;His Golden Locks&quot;.</td>
            </tr>
          </table>
        </p>
        <p>
          <label for="Title">Aanhef:</label>
          <input type="radio" name="Title" value="dhr" checked="checked" />dhr.
          <input type="radio" name="Title" value="mevr" />mevr.<br />
          <label for="Name">Uw naam *:</label>
          <input class="form_shop_input300" type="text" name="Name" /><br />
          <label for="EmailFrom">Email adres *:</label>
          <input class="form_shop_input300" type="text" name="EmailFrom" /><br />
          <label for="Address">Adres *:</label>
          <input class="form_shop_input300" type="text" name="Address" /><br />
          <label for="Postcode">Postcode *:</label>
          <input class="form_shop_input50" type="text" name="PostcodeNum" />&nbsp;
          <input class="form_shop_input25" type="text" name="PostcodeAlpha" />&nbsp; Plaats *:&nbsp;
          <input class="form_shop_input150" type="text" name="City" /><br />
          <br />
          Aanvullende informatie:<br />
          <textarea class="form_shop_textarea" name="Message" cols="40" rows="4"></textarea>
        </p>
        <p>
          <div style="text-align: right;">
            Velden met * zijn verplicht</div>
          <img id="imgCaptcha" src="captcha.asp" />&nbsp; <a href="javascript:void(0)" onclick="RefreshImage('imgCaptcha')">Andere afbeelding</a><br />
          Vul hier de cijfers uit de afbeelding in:
          <input name="captchacode" type="text" id="captchacode" size="10" />
        </p>
        <input id="form_shop_submit" type="submit" name="submit" value="Plaats bestelling" />
        <input id="form_shop_cancel" type="button" name="cancel" value="Terug" onclick='window.location = "index.asp"' />
      </fieldset>
      <% end if %>
    </p>
    </form>
  </div>
</div>
<!-- #include FILE="footer.asp" -->
