#!/bin/bash
gunicorn3 -w 24 -b 0.0.0.0:80 -k gevent server:app
