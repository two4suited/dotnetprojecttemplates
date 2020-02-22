#!/bin/bash
set -u

function RemoveExtraFiles(){
    rm -r .idea
    rm -r bin
    rm -r obj
}

function InstallTemplate(){
    dotnet new -i ./
}

function InstallLambdaWithDI(){
    cd LambdawithDI/src/LambdawithDI.Functions
    RemoveExtraFiles
    InstallTemplate
}

function InstallAllTemplates(){
    InstallLambdaWithDI
}

InstallAllTemplates


