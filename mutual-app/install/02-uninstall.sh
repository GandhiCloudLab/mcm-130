#!/usr/bin/env bash

echo 'un-installation started .............................'

cd ../src

cd mutual-subscription
oc delete -f 31-subscription.yaml
oc delete -f 21-placement.yaml
oc delete -f 11-application.yaml

cd ../mutual-channel
oc delete -f 21-deployable-web.yaml
oc delete -f 11-channel.yaml

cd ../mutual-a-prereq
oc delete -f 01-namespace.yaml

echo 'un-installation completed .............................'
