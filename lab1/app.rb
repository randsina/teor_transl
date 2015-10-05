tokens = {
  EQUAL:       /^=$/,
  PLUS:        /^\+$/,
  MINUS:       /^\-$/,
  MULTI:       /^\*$/,
  DIV:         /^\/$/,
  POWER:       /^\*\*$/,
  NUMBER:      /^-?\d+\.?\d?$/,
  STRING:      /^".*"$/,
  RESERVED:    /^(end|print|def|)$/,
  ID:          /^[a-z_A-Z]\w*$/,
  UNDEFINED:   /^[^a-z_A-Z]\w*$/
}

lines = File.readlines("./pseudo_code.rb")

lines.each_with_index do |line, index|
  line.split.each do |word|
    match = tokens.find { |t, r| r.match word }
    result = match ? match.first : "UNDEFINED"

    puts "#{index + 1} => #{result} : #{word}"
  end
end
