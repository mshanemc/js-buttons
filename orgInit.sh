# sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s --json -u js -o work.shop
sfdx force:source:push
sfdx force:mdapi:deploy -d destroy/ -w 20
sfdx shane:user:password:set -l User -g User -p sfdx1234 --json
sfdx force:org:open