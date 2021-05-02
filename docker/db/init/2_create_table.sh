#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username padawan --dbname tutorial <<-EOSQL
    -- conditions
    create extension if not exists timescaledb cascade;
    drop table if exists conditions;
    create table conditions(
      time        TIMESTAMPTZ       NOT NULL,
      temperature DOUBLE PRECISION  NULL,
      humidity    DOUBLE PRECISION  NULL
    );
    select create_hypertable('conditions', 'time');
EOSQL
