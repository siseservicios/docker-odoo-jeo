#!/usr/bin/env bash
sd build --rm=true -t jobiols/odoo-jeo:15.0 ./

sd push jobiols/odoo-jeo:15.0
