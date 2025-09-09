{%- set apples = ["Gala","Fuji","Honeycrisp"]  -%}

{% for i in apples %}

    {% if i != "Fuji" %}
    
        {{ i }}

    {% else %}

       I do not like {{ i }} 
 
    {% endif %}

{% endfor %}

