#/bin/sh

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <process-name>" >&2
  exit 1
fi

JAVA=`which java`

$JAVA -cp dataloader-30.0.0-uber.jar -Dsalesforce.config.dir=conf com.salesforce.dataloader.process.ProcessRunner process.name=$1

