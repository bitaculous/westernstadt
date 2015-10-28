#!/usr/bin/env ruby

SimpleCov.start do
  formatter SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter
  ]
end if ENV['COVERAGE']