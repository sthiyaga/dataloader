#!/bin/bash

JAVA=`which java`

$JAVA -cp dataloader-30.0.0-uber.jar com.salesforce.dataloader.security.EncryptionUtil "$@" | sed 's/^.*) \- //g'	

