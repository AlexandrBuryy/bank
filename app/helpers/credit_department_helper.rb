module CreditDepartmentHelper
  def CreditDepartment.credit_type_belongs(credit_type)
    belongs = false
    Credit.all.each do |credit|
      if credit.credit_type_id == credit_type.id
        belongs = true
        break
      end
    end
    belongs
  end
end
