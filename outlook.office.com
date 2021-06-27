/*
 * Created:     June 27, 2021
 * Author:      Royce Nobles
 * Application: Microsoft Office 365 - Outlook
 * User Agent:  Firefox 70
 */

nativefier https://outlook.office.com/mail/inbox --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0' --name "Outlook Web" --internal-urls ".*onelogin.*"
