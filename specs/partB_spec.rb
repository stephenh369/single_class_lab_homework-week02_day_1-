require('minitest/autorun')
require('minitest/reporters')
require_relative('../partB.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestClasses < Minitest::Test
    
end