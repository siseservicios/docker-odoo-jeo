#!/usr/bin/env bash
sd build --rm=true -t jobiols/odoo-jeo:15.0.debug ./
sd push jobiols/odoo-jeo:15.0.debug
