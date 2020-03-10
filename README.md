# Lightsail container app

This is easy an cheap version how to deploy containers on AWS.

1. Create AWS account and go to [Lightsail console](https://lightsail.aws.amazon.com/ls/webapp/home/instances)
2. Create new instance
  * Select instance location
  * Select platform `Linux/Unix`
  * Select blueprint `OS Only` -> `Ubuntu`
  * In optional section `Add launch script` and paste [launch-script.sh](launch-script.sh) content.
  * Other fields are not needed for this simple tutorial
  * Push the button `Create Instance`
