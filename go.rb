require 'json'
require 'git'

def urls(filename)
  JSON.parse(IO.read(filename, encoding: 'utf-8'))
      .values[2]
      .map {|i|
        "git clone " + i["links"]["clone"].last["href"]}
end

File.open("clone_all_repos.sh", "w") { |file|
  file.puts "#!/usr/bin/env bash"
  file.puts urls('data1.json')
  file.puts urls('data2.json')
}
