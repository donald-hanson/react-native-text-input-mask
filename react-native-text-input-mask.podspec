require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = package['name']
  s.version          = package['version']
  s.summary          = package['description']
  s.homepage         = package['homepage']
  s.authors          = package['author']
  s.source           = { :git => package['repository']['url'], :tag => s.version }
  s.source_files     = 'ios/**/*.{h,m,framework}'
  s.platforms        = { :ios => "8.0", :tvos => "9.2" }
  s.dependency         'React'
end
