{% set postdata = data.get('post', {}) %}

restart_services:
  cmd.service.restart:
    - tgt: '{{ postdata.tgt }}'
    - arg:
      - {{ postdata.service }}
