#!/bin/bash
################################################################
# Extrae los odoo packages de la imagen al host para desarrollo
# revision 2023-11-17

rm -r /mnt/dist-packages/*
cp -r /usr/lib/python3/dist-packages/* /mnt/dist-packages/
