#!/bin/bash

echo "Launching Liferay Portal..."
exec /opt/liferay-portal/liferay-portal-6.2-ce-ga3/tomcat-7.0.42/bin/catalina.sh run 2>&1
