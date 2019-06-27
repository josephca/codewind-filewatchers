#!/usr/bin/env bash

#*******************************************************************************
# Copyright (c) 2018, 2019 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v2.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v20.html
#
# Contributors:
#     IBM Corporation - initial API and implementation
#*******************************************************************************

# To be run from the repository root directory
# $artifact_name must be set and the file it points to must be in the working directory

DOWNLOADSITE_PATH="milestone/0.2.0"
FILE_NAME="codewind-0.2.0.vsix"
FILE_NAME_THEIA="codewind-theia-0.2.0.vsix"

echo "Uploading \"$FILE_NAME\""
ssh genie.codewind@projects-storage.eclipse.org rm -f /home/data/httpd/download.eclipse.org/codewind/$DOWNLOADSITE_PATH/$FILE_NAME
scp ${WORKSPACE}/uploads/vscode/0.2.0/$FILE_NAME genie.codewind@projects-storage.eclipse.org:/home/data/httpd/download.eclipse.org/codewind/$DOWNLOADSITE_PATH/$FILE_NAME

echo "Uploading \"$FILE_NAME_THEIA\""
ssh genie.codewind@projects-storage.eclipse.org rm -f /home/data/httpd/download.eclipse.org/codewind/$DOWNLOADSITE_PATH/$FILE_NAME_THEIA
scp ${WORKSPACE}/uploads/vscode/0.2.0/$FILE_NAME_THEIA genie.codewind@projects-storage.eclipse.org:/home/data/httpd/download.eclipse.org/codewind/$DOWNLOADSITE_PATH/$FILE_NAME_THEIA


#ssh genie.codewind@projects-storage.eclipse.org rm -f /home/data/httpd/download.eclipse.org/codewind/$DOWNLOADSITE_PATH/$FILE_NAME
#ssh genie.codewind@projects-storage.eclipse.org rm -rf /home/data/httpd/download.eclipse.org/codewind/codewind-filewatchers/Filewatcherd-TypeScript/snapshots

#ssh genie.codewind@projects-storage.eclipse.org mkdir -p /home/data/httpd/download.eclipse.org/codewind/$DOWNLOADSITE_PATH
#ssh genie.codewind@projects-storage.eclipse.org mkdir -p /home/data/httpd/download.eclipse.org/codewind/milestone/0.2.0/buildArtifacts

#scp -r ${WORKSPACE}/uploads/Filewatcherd-TypeScript/snapshots/$FILE_NAME genie.codewind@projects-storage.eclipse.org:/home/data/httpd/download.eclipse.org/codewind/$DOWNLOADSITE_PATH
#scp -r ${WORKSPACE}/uploads/Filewatcherd-TypeScript/snapshots/$FILE_NAME genie.codewind@projects-storage.eclipse.org:/home/data/httpd/download.eclipse.org/codewind/milestone/0.2.0/buildArtifacts


