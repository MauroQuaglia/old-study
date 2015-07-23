require_relative 'shared_examples'

# Include gli esempi nel contesto corrente
# Attenzione che quando includo più volte gli esempi posso overraidare quelli precedenti e l'ultimo override vince.
RSpec.describe 'some class' do
  include_examples 'example', 'parameter-1'
  include_examples 'example', 'parameter-2'
end

# Include gli esempi in un contesto innestato.
# it_behaves_like e it_should_behave_like sono sinonimi.
# In tal caso non c'è più nessun problema di override.
RSpec.describe 'some class' do
  it_behaves_like 'example', 'parameter-2'
  it_behaves_like 'example', 'parameter-1'
end



