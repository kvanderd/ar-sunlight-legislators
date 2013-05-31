require 'csv'
require 'debugger'
require_relative '../app/models/politician'

class SunlightLegislatorsImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      row_hash = {}
      row.each do |field, value|
        if Politician.attribute_names.include?(field.to_s)
          row_hash[field.to_sym] = value
        end
      end
      Politician.create(row_hash)
    end
  end
end

# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end

#SunlightLegislatorsImporter.import('db/data/legislators.csv')