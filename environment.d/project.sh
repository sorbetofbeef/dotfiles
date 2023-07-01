#!/usr/bin/env bash

# export FRONTEND_TYPE="react"
# export BACKEND_TYPE="go"
# export DB_TYPE="postgresql"

CURRENT_PROJECT='cocktail-codex'
DB_CONFIG='cocktail-codex.postgresql.db'
FRONTEND='cocktail-codex-react.frontend'
BACKEND='cocktail-codex-go.backend'

PROJECTS="${HOME}/github.com/sorbetofbeef"

export PROJECT_PATH="${PROJECTS}/${CURRENT_PROJECT}"
export FRONTEND_PATH="${PROJECT_PATH}/${FRONTEND}"
export BACKEND_PATH="${PROJECT_PATH}/${BACKEND}"
export DB_CONFIG_PATH="${PROJECT_PATH}${DB_CONFIG}"
