require "test_helper"

class PatientTest < ActiveSupport::TestCase
  test 'is not valid without name' do
    patient = Patient.new

    refute patient.valid?
    assert_includes patient.errors.messages[:name], "can't be blank"
  end

  test 'is not valid without birth date' do
    patient = Patient.new

    refute patient.valid?
    assert_includes patient.errors.messages[:birth_date], "can't be blank"
  end

  test 'is not valid without city' do
    patient = Patient.new

    refute patient.valid?
    assert_includes patient.errors.messages[:city], "can't be blank"
  end

  test 'is valid with name, birth_date and city' do
    patient = Patient.new(name: 'Mike', birth_date: '13/02/1997', city: 'Colima')

    assert patient.valid?
  end

  test 'is not vaid without medical_history' do
    patient = Patient.new(
      name: 'Mike', 
      birth_date: '13/02/1997', 
      city: 'Colima', 
      primary_dx: 'Anything',
      initial_dx: 'Anything', 
      final_dx: 'Anything',
      surgical_history: 'Anything', 
      treatment: 'Anything'
    )
    refute patient.valid?
    assert_includes patient.errors.messages[:medical_history], "can't be blank"
  end

  test 'is not vaid without surgical_history' do
    patient = Patient.new(
      name: 'Mike', 
      birth_date: '13/02/1997', 
      city: 'Colima', 
      primary_dx: 'Anything',
      initial_dx: 'Anything', 
      final_dx: 'Anything',
      medical_history: 'Anything',
      treatment: 'Anything'
    )
  
    refute patient.valid?
    assert_includes patient.errors.messages[:surgical_history], "can't be blank"
  end
end
