#!/bin/bash

bundle check || bundle install

bundle exec rails s -b 0.0.0.0
