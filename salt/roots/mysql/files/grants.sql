{% for host, data in salt['mine.get']('*', 'grains.items', expr_form = 'glob').items() -%}
{% for key, value in data.items() -%}
{{ host }} - {{ key }}: {{ value }}
{% endfor -%}
{% endfor -%}
