<!-- #include FILE="header.asp" -->
<head>
    <link rel="stylesheet" href="styles/lightbox.css" type="text/css" media="screen" />
</head>
<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous.js?load=effects,builder"></script>
<script type="text/javascript" src="js/lightbox.js"></script>
<div id="content">
    <div id="leftmenu">
        <!-- #include FILE="menu_main.asp" -->
    </div>
    <div id="maincontent">
        <p>
            <h3>Video</h3>
            <br />
            <a href="https://www.youtube.com/watch?v=vpO2GhQf75U" title="Gregoriaans in Polyfonie (Nederlands Gregoriaans Festival 14 juni 2014)" target="_blank">Gregoriaans
                in Polyfonie (Nederlands Gregoriaans Festival 14 juni 2014)</a><br />
            <a href="http://www.youtube.com/watch?v=W7pFrOnxTJA" title="Mariamotetten" target="_blank">Mariamotetten (1 juli 2009)</a><br />
            <a href="http://www.youtube.com/watch?v=6TpB9a2Ee7s" title="Mariamotetten" target="_blank">Mariamotetten (7 juni 2009)</a><br />
            <a href="http://www.youtube.com/watch?v=9h417fB3BBo" title="Mariamotetten" target="_blank">Mariamotetten (1 juli 2009)</a><br />
            <a href="http://www.youtube.com/watch?v=LzSsRfzZF-w" title="I Belg' Occhi - Ma gli archi" target="_blank">I Belg' Occhi - Ma gli archi (14 mei 2006)</a><br />
        </p>
        <p>
            <h3>
                <% if (lang = "nl") Then %>Foto's<% End If %>
                <% if (lang = "gb") Then %>Images<% End If %>
                <% if (lang = "fr") Then %>Photos<% End If %>
            </h3>
        </p>
        <div id="beeld">
            <%
    Set fs=Server.CreateObject("Scripting.FileSystemObject")
    Dim txtDescriptions, txtReadLine, txtImage, txtCaption, txtLBGroup, txtLBGroupPrev, txtLBGroupTitle, indexSeperator, txtGroupName
    Select case lang
      case "nl" txtDescriptions = "orlando_nl.txt"
      case "gb" txtDescriptions = "orlando_gb.txt"
      case "fr" txtDescriptions = "orlando_fr.txt"
      case default txtDescriptions = "orlando_nl.txt"
    End Select
    Set f=fs.OpenTextFile(Server.MapPath("photos/" + txtDescriptions), 1)

    txtLBGroup = ""
    txtLBGroupPrev = ""
    
    While f.AtEndOfStream <> true
      txtReadLine = f.ReadLine
      If(Left(txtReadLine, 1) = "#") Then
        indexSeperator = Instr(txtReadLine, "|")
        txtGroupName = Mid(txtReadLine, 2, indexSeperator - 2)
        txtLBGroupTitle = Right(txtReadLine, Len(txtReadLine) - indexSeperator)
        txtLBGroup = "[" + txtGroupName + "]"
        txtReadLine = f.ReadLine
      End If
      txtImage = txtReadLine
      txtReadLine = f.ReadLine
      txtCaption = txtReadLine
      If (Len(txtCaption) > 0) Then
        If (txtLBGroup <> txtLBGroupPrev) Then
            %><div class="beeld_grouptitle">
                <%=txtLBGroupTitle%>
            </div>
            <%
          txtLBGroupPrev = txtLBGroup
        End If
            %>
            <a href="photos/<%Response.Write(txtImage)%>.jpg" rel="lightbox<%=txtLBGroup%>" title="<%Response.Write(txtCaption)%>">
                <img alt="<%Response.Write(txtCaption)%>" src="photos/thumbs/<%Response.Write(txtImage)%>.jpg" /></a>
            <%
      End If
    wend

    f.Close
    Set f=Nothing
    Set fs=Nothing
            %>
        </div>
    </div>
</div>
<!-- #include FILE="footer.asp" -->
