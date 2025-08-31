#!/bin/bash
echo "🔍 Validating config files..."

for file in configs/*.conf; do
  echo "Checking $file..."
  grep -q "IP_ADDRESS=" "$file" || { echo "❌ Missing IP_ADDRESS in $file"; exit 1; }
  grep -q "PORT=" "$file" || { echo "❌ Missing PORT in $file"; exit 1; }
done

echo "✅ All config files passed validation."
