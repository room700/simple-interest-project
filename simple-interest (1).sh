#!/bin/bash

# Simple Interest Calculator
# Formula: Interest = (P * R * T) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

# قراءة البيانات من المستخدم
read -p "Enter Principal amount (P): " P
read -p "Enter Rate of Interest (R%): " R
read -p "Enter Time in years (T): " T

# التحقق من أن القيم غير سالبة
if (( $(echo "$P < 0 || $R < 0 || $T < 0" | bc -l) )); then
  echo "Error: Values must be non-negative"
  exit 1
fi

# حساب الفائدة
interest=$(echo "scale=2; $P * $R * $T / 100" | bc)

# عرض النتيجة
echo "--------------------------"
echo "Calculated Simple Interest: \$${interest}"
