{% macro limit_dev_data(column_name, dev_days_data = 3) -%}
{% if target.name =='dev' -%}
where {{column_name}} >= dateadd('day',- {{dev_days_data}},current_timestamp)
{%- endif %}
{%- endmacro %}