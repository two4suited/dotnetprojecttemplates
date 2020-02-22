#!/bin/bash
set -u


function InstallTemplate(){
    dotnet new -i ./
}

function InstallLambdaWithDI(){
    cd LambdawithDI
    InstallTemplate
}

function InstallAllTemplates(){
    InstallLambdaWithDI
}

InstallAllTemplates


