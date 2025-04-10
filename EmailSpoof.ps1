# ==========================================
# Email Spoofing Script (Basic)
# This script sends a spoofed email to a target email address.
# Ensure you have a proper SMTP server set up or use a service.
# ==========================================

# Define email parameters
$smtpServer = "smtp.yourserver.com"
$smtpFrom = "attacker@spoofed.com"
$smtpTo = "victim@target.com"
$smtpSubject = "Urgent Action Required!"
$smtpBody = "Please click on the link to resolve an urgent security issue."

# Create the email message
$emailMessage = New-Object system.net.mail.mailmessage
$emailMessage.From = ($smtpFrom)
$emailMessage.To.Add($smtpTo)
$emailMessage.Subject = $smtpSubject
$emailMessage.Body = $smtpBody

# Send the email
$smtpClient = New-Object system.net.mail.smtpclient($smtpServer)
$smtpClient.Send($emailMessage)
Write-Host "Spoofed email sent!"
