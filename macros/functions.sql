{% macro margin_percent(revenue, purchase_cost, deci=2) %}
  (ROUND(SAFE_DIVIDE(({{revenue}}-{{purchase_cost}}),{{revenue}}),{{deci}}))
{%endmacro%}