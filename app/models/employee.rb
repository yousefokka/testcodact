class Employee < ApplicationRecord
    belongs_to :user, optional: true

    validates_presence_of :name, :jobtybe, :jobcategory, :address, :salary, :Gander, :Qualifcation, :mobile, :Degree, :Indestry, :Exprense ,:employeeBio, :Datafrom, :Datato
end
