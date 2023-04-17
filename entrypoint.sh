#!/bin/bash
cd /app
# java -cp /app XSDValidator /validate.xsd /validate.xml
# cat /validate.xml
exec "$@"
