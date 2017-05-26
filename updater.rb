require 'yaml'
require 'uri'

=begin
[仕様]
codes/以下に{0埋めされた四桁のコード番号}_{コード名}.rbというファイル名で
コードを置き、文頭で=begin,=endによるコメントにより問題文の説明を記述する。
その後に、このスクリプトを走らせるとcodes以下のファイルを元にREADME.mdが
更新される
=end

class Code
  BASEURL_GITHUB = 'https://github.com/owlworks/project_euler/blob/master/codes/'
  CODE_TEMPLATE_FILE = './_code_template.txt'
  attr_accessor :file_name, :description, :number, :code_size

  def initialize(file_path)
    @file_name = File.basename(file_path)
    @description = extract_description_from_file(file_path)
    @number = @file_name[0..2]
  end

  def link_to_code_page
    url = URI.join(BASEURL_GITHUB, @file_name)
    "[Code](#{url} \"Code\")"
  end

  def to_markdown
    rendered_code = eval '"' + File.open(CODE_TEMPLATE_FILE).read + '"' # rubocop:disable all
    rendered_code.split("\n").join("  \n")
  end

  private

  def extract_description_from_file(filepath)
    code_lines = File.open(filepath).read.split("\n")
    begin_index = code_lines.index('=begin')
    end_index = code_lines.index('=end')
    calc_and_set_code_size(code_lines)
    code_lines[(begin_index + 1)..(end_index - 1)].join("\n")
  end

  def calc_and_set_code_size(code_lines)
    last_comment_end = code_lines.rindex('=end')
    eoc = code_lines.index('__END__') || -1
    commentless_codes = code_lines[last_comment_end..eoc].select do |line|
      line.gsub(/(\s|　)+/, '')[0] != '#'
    end
    @code_size = commentless_codes.join.bytesize
  end

  def to_code_format(text)
    text.split("\n").map { |line| "> #{line}" }.join("\n")
  end
end

class Updater
  README_FILEPATH = './README.md'
  README_TEMPLATE_FILE = './_readme_template.txt'
  attr_accessor :code_paths, :codes
  def initialize
    @code_paths = Dir.glob('./codes/*.rb')
    load_codes
  end

  def update_readme_file
    File.open(README_FILEPATH, 'w') do |file|
      file.puts render_template
    end
  end

  private

  def render_template
    eval '"' + File.open(README_TEMPLATE_FILE).read + '"' # rubocop:disable all
  end

  def codes
    @codes.map(&:to_markdown).join("\n")
  end

  def load_codes
    @codes = @code_paths.map { |path| Code.new(path) }
  end
end

Updater.new.update_readme_file
