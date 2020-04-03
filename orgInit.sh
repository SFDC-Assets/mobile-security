sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix admin -o security.demo
# Install https://appexchange.salesforce.com/listingDetail?listingId=a0N3000000B4cUuEAJ
sfdx force:package:install -p 04t3A000001AJf2QAG --wait 20
sfdx force:source:push
sfdx force:user:permset:assign -n MobileSecurity
sfdx shane:user:password:set -g User -l User -p salesforce1
sfdx force:org:open
sfdx shane:connectedapp:attributes -n "Salesforce for iOS" -a customAttributes.json