<%@  language="VBSCRIPT" %>
<%
function TestCaptcha(byval valSession, byval valCaptcha)
	dim tmpSession
	valSession = Trim(valSession)
	valCaptcha = Trim(valCaptcha)
	
	if (valSession = vbNullString) or (valCaptcha = vbNullString) then
		TestCaptcha = false
	else
		tmpSession = valSession
		valSession = Trim(Session(valSession))
		Session(tmpSession) = vbNullString
		if valSession = vbNullString then
			TestCaptcha = false
		else
			valCaptcha = Replace(valCaptcha,"i","I")
			if StrComp(valSession,valCaptcha,1) = 0 then
				TestCaptcha = true
			else
				TestCaptcha = false
			end if
		end if		
	end if
end function
%>


<%
' Website Contact Form Generator 
' http://www.tele-pro.co.uk/scripts/contact_form/ 
' This script is free to use as long as you  
' retain the credit link  

' declare variables
Dim Title, Name, EmailFrom, Address, PostcodeNum, PostcodeAlpha, City, Message
Dim Amount_HisGoldenLocks, Amount_Mariamotetten, Amount_Kerst2008

' get posted data into variables
Title = Trim(Request.Form("Title")) 
Name = Trim(Request.Form("Name"))
EmailFrom = Trim(Request.Form("EmailFrom"))
Address = Trim(Request.Form("Address"))
PostcodeNum = Trim(Request.Form("PostcodeNum")) 
PostcodeAlpha = Trim(Request.Form("PostcodeAlpha"))
City = Trim(Request.Form("City")) 
Message = Trim(Request.Form("Message"))
EmailTo = "info@eelcokooiker.nl;derks-ritzen@planet.nl"
Amount_HisGoldenLocks = Trim(Request.Form("Amount_HisGoldenLocks")) 
Amount_Mariamotetten = Trim(Request.Form("Amount_Mariamotetten")) 
Amount_Kerst2008 = Trim(Request.Form("Amount_Kerst2008")) 

' validation
Dim validationOK
validationOK=true
If (Name="" or EmailFrom="" or Address="" or PostcodeNum="" or PostcodeAlpha="" or City="") Then validationOK=false
If (Cint(Amount_HisGoldenLocks) < 1 and Cint(Amount_Mariamotetten) < 1 and Cint(Amount_Kerst2008) < 1) Then validationOK=false

' validate captcha
if (Not TestCaptcha("ASPCAPTCHA", Request.Form("captchacode"))) then
  validationOK=false
end if

If (validationOK=false) Then Response.Redirect("shop_error.asp")

' additional fields
If (Message="") Then Message="n.v.t."
If (EmailFrom="") Then EmailFrom="geen email adres opgegeven - neem op andere wijze contact op"

' prepare email body text
Dim Postcode
Postcode = PostcodeNum & " " & PostcodeAlpha

Dim Body
Body = "Dit is een automatisch verstuurde email - aub niet gebruiken in klanten contact." & VbCrLf & VbCrLf
Body = Body & "Ariosto Ensemble CD bestelling gedaan op (m/d/jjjj): " & date & VbCrLf & VbCrLf
Body = Body & "Gegevens besteller:" & VbCrLf & VbCrLf
Body = Body & "Aanhef: " & Title & VbCrLf
Body = Body & "Naam: " & Name & VbCrLf
Body = Body & "Email: " & EmailFrom & VbCrLf
Body = Body & "Adres: " & Address & VbCrLf
Body = Body & "Postcode: " & Postcode & VbCrLf
Body = Body & "Stad: " & City & VbCrLf
Body = Body & VbCrLf & "Aanvullende informatie (optioneel): " & VbCrLf & Message & VbCrLf
Body = Body & VbCrLf
Body = Body & "Bestelling:" & VbCrLf
Body = Body & "# CD His Golden Locks [EUR 15,00]: " & Amount_HisGoldenLocks & "x" & VbCrLf
Body = Body & "# CD Mariamotetten [EUR 12,50]: " & Amount_Mariamotetten & "x" & VbCrLf
Body = Body & "# CD Kerst 2008: [EUR 12,50]: " & Amount_Kerst2008 & "x" & VbCrLf
Body = Body & VbCrLf
Body = Body & "De besteller heeft een email ontvangen op het opgegeven adres met daarin verzoek tot betaling. Na ontvangst van de betaling op rekening 1481.80.345 ten name van Stichting Curena te Gennep kan de bestelling verzonden worden." & VbCrLf & VbCrLf
Body = Body & "met vriendelijke groeten," & VbCrLf
Body = body & "De Webadministrator (Maarten Kuijpers - maarten@grasperk.nl)."
Response.Write(Body)

' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message")
mail.From = "noreply@ariostoensemble.nl"
mail.To = EmailTo
mail.Cc = "maarten@grasperk.nl"
mail.Subject = "[AriostoEnsemble.nl] WebShop bestelling - " & Name
mail.TextBody = Body
if (request.servervariables("REMOTE_ADDR") <> "127.0.0.1") then
  ' Send email only when not on localhost.
  mail.Send
end if

set mail = nothing

' Continue with sending the confirmation message to the client including payment details
Dim eurHisGoldenLocks, eurMariamotetten, eurKerst2008
eurHisGoldenLocks = Amount_HisGoldenLocks * 15.00
eurMariamotetten = Amount_Mariamotetten * 12.50
eurKerst2008 = Amount_Kerst2008 * 12.50

Body = "Aan " & Title & " " & Name & VbCrLf & VbCrLf
Body = Body & "Hartelijk dank voor uw bestelling op de website van het Ariosto Ensemble. Hieronder vindt u een overzicht van de artikelen die u besteld heeft:" & VbCrLf & VbCrLf
If (Amount_HisGoldenLocks > 0) Then Body = Body & Amount_HisGoldenLocks & "x CD 'His Golden Locks' à EUR 15,00 = EUR " & FormatNumber(eurHisGoldenLocks, 2) & VbCrLf & VbCrLf
If (Amount_Mariamotetten > 0) Then Body = Body & Amount_Mariamotetten & "x CD 'Mariamotetten' à EUR 12,50 = EUR " & FormatNumber(eurMariamotetten, 2) & VbCrLf & VbCrLf
If (Amount_Kerst2008 > 0) Then Body = Body & Amount_Kerst2008 & "x CD 'Kerst 2008' à EUR 12,50 = EUR " & FormatNumber(eurKerst2008, 2) & VbCrLf
Body = Body & VbCrLf
Body = Body & "Wilt u zo vriendelijk zijn het totaal bedrag (EUR " & FormatNumber(eurHisGoldenLocks + eurMariamotetten + eurKerst2008, 2) & ") over te maken op rekeningnummer 1481.80.345 ten name van Stichting Curena te Gennep. Na ontvangst van dit bedrag zullen wij u de artikelen zo spoedig mogelijk opsturen." & VbCrLf & VbCrLf
Body = Body & "met vriendelijke groeten," & VbCrLf & VbCrLf
Body = body & "Het Ariosto Ensemble."

Set mail = Server.CreateObject("CDO.Message")
mail.To = EmailFrom
mail.From = "noreply@ariostoensemble.nl"
mail.Subject = "Ariosto Ensemble - uw bestelling"
mail.TextBody = Body
if (request.servervariables("REMOTE_ADDR") <> "127.0.0.1") then
  ' Send email only when not on localhost.
  mail.Send
end if
set mail = nothing

' redirect to success page 
Response.Redirect("shop_ok.asp")
%>
