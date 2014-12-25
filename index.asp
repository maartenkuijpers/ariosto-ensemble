<!-- #include virtual="/header.asp" -->
<div id="content">
    <div id="leftmenu">
        <!-- #include virtual="/menu_main.asp" -->
        <!-- #include virtual="/menu_nieuws.asp" -->
    </div>
    <div id="maincontent">
        <% if (lang = "nl") then %>
        <h3>
            Welkom bij het Ariosto Ensemble</h3>
        <p>
            Het <i><strong>Ariosto Ensemble</strong></i>, voor het eerst uitvoerend in 2002,
            is een projectensemble, dat in wisselende samenstelling concerten geeft. Afhankelijk
            van het programma, worden zangers en instrumentalisten geselecteerd. Mede afhankelijk
            van het thema en de aard van de uit te voeren muziek presenteert het ensemble zich
            in professionele bezetting dan wel met hoogwaardige amateurs.
        </p>
        <% end if %>
        <% if (lang = "gb") then %>
        <h3>
            Welcome to the Ariosto Ensemble</h3>
        <p>
            The <i><strong>Ariosto Ensemble</strong></i>, performing since 2002, is a project
            ensemble, varying its membership per projected programme. Singers and instrumentalists
            are specifically selected for each particular concert programme. Whether the ensemble
            presents itself as consisting of professional musicians or of high-quality amateurs
            partly depends on the theme and nature of the music to be performed.
        </p>
        <% end if %>
        <% if (lang = "fr") then %>
        <h3>
            Bienvenue sur le site de l'ensemble Ariosto</h3>
        <p>
            L'ensemble Ariosto est un ensemble qui s'est produit pour la premi&egrave;re fois
            en 2002 et dont la composition varie &agrave; la carte. En fonction de la musique
            et des projets travaill&eacute;s, chanteurs et instrumentistes sont s&eacute;lectionn&eacute;s
            pour participer &agrave; la s&eacute;rie de concerts pr&eacute;vus. Certains projets
            sont r&eacute;serv&eacute;s &agrave; des musiciens professionnels.
        </p>
        <% end if %>
        <!-- #include virtual="/nieuws.asp" -->
    </div>
</div>
<!-- #include virtual="/footer.asp" -->
