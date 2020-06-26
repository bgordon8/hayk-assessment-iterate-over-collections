require 'pry'
require 'rspec'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end

end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]


def list_of_name_and_size companies
    companies.map { |company| company.name + " - " + company.size.to_s }
end

def all_sizes companies
    companies.reduce(0) { |sum, company| sum + company.size}
end

def all_companies_over_100 companies
    companies.select { |company| company.size > 100 }
end

def find_company_by_name companies
    companies.find { |company| company.name == "Beta" }
end

def find_largest_company companies
    companies.max_by(&:size)
end

def sort_by_largest companies
    companies.sort_by(&:size).reverse!
end
binding.pry
