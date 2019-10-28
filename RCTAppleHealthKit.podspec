require "json"
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name          = 'RCTAppleHealthKit'
  s.version       = package['version']
  s.summary       = package['description']
  s.author        = package['author']
  s.license       = package['license']
  s.homepage      = package['homepage']
  s.source        = { :git => 'https://github.com/terrillo/rn-apple-healthkit.git' }
  s.platform      = :ios, '8.0'
  s.source_files  = "RCTAppleHealthKit/*.{h,m}"

  s.dependency "React"
end