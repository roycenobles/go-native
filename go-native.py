##
 # Author:      Royce Nobles
 # Created:     June 27, 2021
 # Notes:       Used to generate progressive web applications for my online tools.
 ##

import yaml, os

with open("applications.yaml", 'r') as stream:
    try:
        apps = yaml.safe_load(stream)

        for k in apps:
            name = k['name'] if 'name' in k else None
            uri = k['uri'] if 'uri' in k else None
            userAgent = k['user-agent'] if 'user-agent' in k else None
            internalUrls = k['internal-urls'] if 'internal-urls' in k else None
            icon = k['icon'] if 'icon' in k else None

            cmd = 'nativefier "' + uri + '"'

            if userAgent != None:
                cmd = cmd + ' --user-agent "' + userAgent + '"'

            if name != None:
                cmd = cmd + ' --name "' + name + '"'

            if internalUrls != None:
                cmd = cmd + ' --internal-urls "' + internalUrls + '"'

            if icon != None:
                cmd = cmd + ' --icon "' + icon + '"'

            os.system(cmd)

    except yaml.YAMLError as exc:
        print(exc)