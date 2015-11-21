guard :minitest, :spring => true do
  watch(%r{^models/(.+)\.rb$})                            { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^lib/(.+)\.rb$})                               { |m| "test/unit/lib/#{m[1]}_test.rb" }
  watch(%r{^lib/tasks/(.+)\.rake$})                       { |m| "test/unit/lib/tasks/#{m[1]}_test.rb" }
  watch(%r{^test/.+_test\.rb$})
  watch(%r{^test/test_helper\.rb$})                       { "test" }
end
