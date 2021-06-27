/*
 * Created:     June 27, 2021
 * Author:      Royce Nobles
 * Application: Google - Gmail
 * User Agent:  Firefox 70
 */

nativefier https://mail.google.com/mail --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0' --name "Gmail" --internal-urls ".*accounts .google.com.*"
