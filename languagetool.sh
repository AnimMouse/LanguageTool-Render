#!/bin/sh
java -Xms256m -Xmx512m -cp languagetool-server.jar org.languagetool.server.HTTPServer --port 10000 --public --allow-origin '*'