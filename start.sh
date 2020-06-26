#!/bin/bash
gunicorn3 -w 24 -b 104.248.237.82:65535 -k gevent server:app
