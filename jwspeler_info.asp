<script type="text/javascript">
function toggleVisibility(id)
{
    var e = document.getElementById(id);
    if (e.style.display == 'block')
        e.style.display = 'none';
    else
        e.style.display = 'block';
}
</script>
<% if (lang = "nl") then %>
<a href="#" onclick="toggleVisibility('infoSpeler')">Hoe werkt dit?</a>
<% end if %>
<% if (lang = "gb") then %>
<a href="#" onclick="toggleVisibility('infoSpeler')">How to use?</a>
<% end if %>
<% if (lang = "fr") then %>
<a href="#" onclick="toggleVisibility('infoSpeler')">Comment faire?</a>
<% end if %>

<div id="infoSpeler" style="display:none">
  <br />
  <div style="border: solid black 1px;">
  <table>
<% if (lang = "nl") then %>
  <tr><td align="right"><img src="images/player_play.png" alt="play / pause" /></td><td>Starten / pauzeren van fragment</td></tr>
  <tr><td align="right"><img src="images/player_stop.png" alt="stop" /></td><td>Stoppen van fragment</td></tr>
  <tr><td align="right"><img src="images/player_volume.png" alt="volume" /></td><td>Geluidsvolume: kleine streep is zacht, grote streep luid</td></tr>
  <tr><td align="right"><img src="images/player_fullscreen.png" alt="fullscreen" /></td><td>Beeldvullend maken (alleen voor video)</td></tr>
  <tr><td align="right"><img src="images/player_bar.png" alt="balk" /></td><td>Positie (sleepbaar) en tijd (0:35 van 1:12 totaal)</td></tr>
<% end if %>
<% if (lang = "gb") then %>
  <tr><td align="right"><img src="images/player_play.png" alt="play / pause" /></td><td>Start / pause playing</td></tr>
  <tr><td align="right"><img src="images/player_stop.png" alt="stop" /></td><td>Stop playing</td></tr>
  <tr><td align="right"><img src="images/player_volume.png" alt="volume" /></td><td>Volume: small line is soft, large line is loud</td></tr>
  <tr><td align="right"><img src="images/player_fullscreen.png" alt="fullscreen" /></td><td>Make full-screen (video only)</td></tr>
  <tr><td align="right"><img src="images/player_bar.png" alt="balk" /></td><td>Position (dragable) and duration (0:35 of 1:12 total)</td></tr>
<% end if %>
<% if (lang = "fr") then %>
  <tr><td align="right"><img src="images/player_play.png" alt="play / pause" /></td><td>Start/pause</td></tr>
  <tr><td align="right"><img src="images/player_stop.png" alt="stop" /></td><td>Arr&ecirc;ter l'&eacute;coute</td></tr>
  <tr><td align="right"><img src="images/player_volume.png" alt="volume" /></td><td>Volume: du plus faible au plus fort</td></tr>
  <tr><td align="right"><img src="images/player_fullscreen.png" alt="fullscreen" /></td><td>Image grand format (seulement pour extrait viod&acute;o)</td></tr>
  <tr><td align="right"><img src="images/player_bar.png" alt="balk" /></td><td>Position du curseur en secondes et minutes</td></tr>
<% end if %>
  </table>
  </div>
</div>
