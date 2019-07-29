require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.source       = { :git => package['repository']['url'], :tag => s.version }
  s.source_files  = "ios/**/*.{h,m,swift}"
  s.swift_version = "4.2"
  s.dependency 'React'
  s.dependency 'InputMask'
end
