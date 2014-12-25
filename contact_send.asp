<%
' Website Contact Form Generator 
' http://www.tele-pro.co.uk/scripts/contact_form/ 
' This script is free to use as long as you  
' retain the credit link  

' declare variables
Dim EmailFrom
Dim EmailTo
Dim Subject
Dim Name
Dim Message

' get posted data into variables
EmailFrom = Trim(Request.Form("EmailFrom")) 
EmailTo = "ariostoensemble+contact@gmail.com"
Subject = Trim(Request.Form("Subject"))
Name = Trim(Request.Form("Name")) 
Message = Trim(Request.Form("Message"))

' validation
Dim validationOK
validationOK=true
If (Trim(Name)="") Then validationOK=false
If (Trim(Message)="") Then validationOK=false
If (Trim(Subject)="") Then Subject="geen onderwerp"
If (Trim(EmailFrom)="") Then EmailFrom="geen email adres opgegeven"
If (validationOK=false) Then Response.Redirect("contact_error.asp")

' prepare email body text
Dim Body
Body = Body & "Name: " & Name & VbCrLf
Body = Body & "Email: " & EmailFrom & VbCrLf
Body = Body & "Onderwerp: " & Subject & VbCrLf
Body = Body & "Bericht: " & VbCrLf & VbCrLf & Message & VbCrLf

' send email using gmail
Dim mail
Set mail = Server.CreateObject("CDO.Message")

mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") ="smtp.gmail.com"
mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = 1
mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="ariostoensemble@gmail.com"
mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="Eindhoven040"
mail.Configuration.Fields.Update

mail.From = EmailFrom
mail.To = EmailTo
mail.Subject = "[AriostoEnsemble.nl] " + Subject
mail.TextBody = Body
mail.Send
'Set mail = Nothing

' redirect to success page 
Response.Redirect("contact_ok.asp")
%>