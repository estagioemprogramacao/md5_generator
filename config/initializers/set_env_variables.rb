# -----------------------------------------------------------------------------
# Please, make sure you add to config/boot.rb in your Rails app:
# require File.expand_path('../initializers/set_env_variables', __FILE__)

# GENERAL
ENV['SECRET_KEY_BASE'] = 'INSIRA_AQUI_A_SECRET_KEY_BASE'

# PostgreSQL
ENV['MD5_GENERATOR_PG_HOST'] = 'INSIRA_AQUI_O_ENDPOINT_DO_RDS'
ENV['MD5_GENERATOR_PG_PORT'] = 'INSIRA_AQUI_A_PORTA_DO_RDS'
ENV['MD5_GENERATOR_PG_DATABASE'] = 'INSIRA_AQUI_O_NOME_DO_BANCO_DE_DADOS'
ENV['MD5_GENERATOR_PG_USERNAME'] = 'INSIRA_AQUI_O_NOME_DE_USUARIO_DO_RDS'
ENV['MD5_GENERATOR_PG_PASSWORD'] = 'INSIRA_AQUI_A_SENHA_DO_RDS'
# -----------------------------------------------------------------------------
