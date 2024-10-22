sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p mobile -e security.demo

# Install https://appexchange.salesforce.com/listingDetail?listingId=a0N3000000B4cUuEAJ
sf package install -p 04t3A000001AJf2QAG --wait 20
sf project deploy start
sf org assign permset -n MobileSecurity
sf demoutil user password set -p salesforce1 -g User -l User
sf org open
sf shane connectedapp attributes -n "Salesforce for iOS" -a customAttributes.json
