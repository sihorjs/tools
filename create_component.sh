#!/bin/bash

read -p "Enter component name: " COMPONENT_NAME

declare -a COMPONENT_FILES=("index.js" "$COMPONENT_NAME.js" "${COMPONENT_NAME}Container.js" "$COMPONENT_NAME.scss")
COMPONENTS_DIR="$PWD/components"
COMPONENT_FOLDER="$COMPONENTS_DIR/$COMPONENT_NAME"

if ! [[ -d $COMPONENTS_DIR ]]
then
    echo "Components folder doesn't exist!"
elif [ -d $COMPONENT_FOLDER ]
then
    echo "Component $COMPONENT_NAME has been already created!"
else
    mkdir $COMPONENT_FOLDER
    cd $COMPONENT_FOLDER

    for file in "${COMPONENT_FILES[@]}"
    do
        touch $file
    done

    echo "Folder with files for $COMPONENT_NAME is successfully created!"
fi
