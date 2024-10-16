#!/bin/bash

npx supabase db dump -f supabase/schema.sql
npx supabase db dump -f supabase/roles.sql --role-only
npx supabase db dump -f supabase/seed.sql --data-only
