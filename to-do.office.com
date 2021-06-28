/*
 * Created:     June 27, 2021
 * Author:      Royce Nobles
 * Application: Microsoft Office 365 - TODO
 * User Agent:  Firefox 70
 */

nativefier https://to-do.office.com/tasks --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0' --name "TODO" --internal-urls ".*onelogin.*"
