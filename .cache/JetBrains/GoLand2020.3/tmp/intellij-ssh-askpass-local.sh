#!/bin/sh
"/projector/ide/jbr/bin/java" -cp "/projector/ide/plugins/git4idea/lib/git4idea-rt.jar:/projector/ide/lib/xmlrpc-2.0.1.jar:/projector/ide/lib/commons-codec-1.14.jar" org.jetbrains.git4idea.nativessh.GitNativeSshAskPassApp "$@"
