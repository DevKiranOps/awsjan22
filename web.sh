#!/bin/bash

echo "Install system updates"

sudo apt-get update && sudo apt-get upgrade 

sudo apt-get install apache2