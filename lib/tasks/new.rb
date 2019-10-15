require 'pathname'
require 'fileutils'

ROOT_PATH = Pathname.new(File.expand_path('../../', File.dirname(__FILE__))).freeze
SLIDES_DIRECTORY = ROOT_PATH.join('slides').freeze
TEMPLATE_FILE_NAME = '_template.html'.freeze
TEMPLATE_FILE_PATH = SLIDES_DIRECTORY.join(TEMPLATE_FILE_NAME).freeze
INDEX_FILE_NAME = 'index.html'.freeze

def complain_with_error(message)
  puts
  puts "*** ERROR: #{message}"
  puts

  show_help

  exit 1
end

def complain_with_skip(message)
  puts "  #{message}, skipping..."
end

def show_help
  puts "  Synopsis"
  puts
  puts "    rake new slide_name"
  puts
end

def slides_directory_path(name)
  SLIDES_DIRECTORY.join(name)
end

def slides_index_path(directory)
  directory.join(INDEX_FILE_NAME)
end

# read argument
slide_name = ARGV[0]

complain_with_error('Please provide a slide name') if slide_name.nil?

# create directory
directory_path = slides_directory_path(slide_name).tap do |path|
  if path.exist?
    complain_with_skip("Directory #{path} already exists")
  else
    Dir.mkdir(path)

    puts "  Successfully created directory: #{path}"
  end
end

# copy template file
slides_index_path(directory_path).tap do |path|
  if path.exist?
    complain_with_skip("Slide #{path} already exists")
  else
    FileUtils.cp(TEMPLATE_FILE_PATH, path)

    puts "  Successfully created slides: #{path}"
  end
end

puts
puts "  That's it, have a great day!"
