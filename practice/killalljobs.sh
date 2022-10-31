#!/bin/bash
# kill all background jobs
jobs -p | xargs -I{} kill -- -{}