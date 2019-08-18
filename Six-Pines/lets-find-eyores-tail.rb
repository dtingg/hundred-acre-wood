kanga_roo_address = '../Kanga-And-Roos-House/kanga.txt' # Your changes here!
piglet_address = 'Piglets-House/piglet.txt'
rabbit_address = '../Rabbits-Meadow/Rabbits-House/rabbit.txt'
pooh_address = '.Heffalump-Trap/Poohs-House/pooh-bear.txt'

# Please do not change any code past this point!

who_was_asked = { 'Kanga' => kanga_roo_address, 'Piglet' => piglet_address,
  'Rabbit' => rabbit_address, 'Winnie the Pooh' => pooh_address
}

ask_map = who_was_asked.values.map do |address|
  File.exist?(address)
end

puts('Oh bother! It seems Eyore has misplaced his tail again.')
puts('We should ask around and see if anyone has seen it.')

i = 0
who_was_asked.each do |person, address|
  puts("Let's go ask #{person}!")
  puts("#{person}'s address is #{address}") unless address.empty?
  
  if ask_map[i]
    File.open(address, 'r').each do |line|
      puts line
    end
    
    puts('Sorry! I haven\'t seen Eyore\'s tail!')
  else
    puts("Hmm. Seems that we have the wrong address for #{person}.")
  end
  
  sleep(2)
  i += 1
end

unless who_was_asked.values.uniq.length == ask_map.length
  puts('Hey rapscallion, it looks like you wrote down the same address twice!')
  return 0
end

if ask_map.all? true
  
  puts"                       . - ~ -.  .- .     .\n        ...:::::::::::.....    `- :  `.  ; `.   ..\n .;i!!!!!!!!!!!!!!!!!!!!!!!!!!i::.     `.`   `. : `\n"
  puts"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!;.   `     `;  ;\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!;:..    `  :_. - .\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!:.        ,~\n"
  puts"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'~.:!!!!!!!!!!!i      :.-.._\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'`.+!!!!!!!!!!!!!!!            `.\n!!!!!!!!!!!!!!!!!!!!!!!!!'`.,!!!!!!!!!!!!!!!!!!!   ::    _ `.\n"
  puts"!!!!!!!!!!!!!!!!!!!!!!'`:!!!!!!!!!!~`:<!!!!!!!!!  :!!!.  `.`.;\n!!!!!!!!!!!!!!!!!!!',;!!!!!!!!!!!~.;!!!!'`,!!!!  :!!!!\";. ;\n!!!!!!!!!!!!!!!!!':!!!!!!!!!!!!~ :!!!!'.+!!!!!!.;!!!!: !!\"\n"
  puts"!!!!!!!!!!!!!!!';!!!!!!!!!!!!!~.!!!!'.!!~~!!!!!!!!!!! :!!!\n!!!!!!!!!!!!!':!!!!!!!!!!!!!~ :!!!',!!,o$r`!!!!!!!!!:L !!!:\n!!!!!!!!!!!!'/!!!!!!!!!!!!!~ .!!!!!!' ?$$F;!!!!!!!!>$E !!%!\n"
  puts"!!!!!!!!!!!'/!!!!!!!!!!!!!:  !!!!!!f   9$'!!!!!!!!! \"F.!!`!\n!!!!!!!!!!;,!!!!!!!!!!!!~:!>'!!!!!!t   @',!!!!!!;!!   ;!!>!\n!!!!!!!!!! !!!!!!!!!!!!~ !!~ !!!!!!!. ',!!!!!!!!;!!!;:!!!>!>\n"
  puts"!!!!!!!!!! !!!!!!!!!!!~ ^    '!!!!!!!!!!)!!!!!!!:!!!!!;!!!!>\n!!!!!!!!!! !!!!!!!!!!~        '!!!!!!!!!!!!!!!!!;!!!!!;!!!!>\n!!!!!!!!!! !!!!!!!!!!.\"       '!!!!!!!!!!!!!!!!!!:!!!!!;!!!\n"
  puts"!!!!!!!!!! !!!!!!!!! ~:       /!!!!!!!!!!!!!!!!!!;!!!!!,;!!\n!!!!!!!!!! !!!!!!!!  ;!       !!!!!!!!!!!!!''.,yyy,.``\"!`!!\n!!!!!!!!!!.`!!!!!!! !!!     :!!!!!!!!!!!',e@$$$$$$$N?No. !!\n"
  puts"!!!!!!!!!!! !!!!!!> !!f    :!!!!!!!!',gd$$$$$$$$$$$$F3$$ !!\n!!!!!!!!!!!: !!!!!>'!!>   :\"\"``,,,gd$$$$$$$$$$$$$$$$F3$R !\n!!!!!!!!!!!! `!!!!>!!!   :e$$$$$$$$$$$$$$$$$$$$$$$$$\"J$F\n"
  puts"!!!!!!!!!!!!! `!!!>!!!   4$$$$$$$$$$$$$$$>(*$$$$$$$$ $$~\n!!!!!!!!!!!!!: `(!!!!!!   ^#$$$CC\"#$$$$$$b. \"$$$$$$\"J$#\n!!!!!!!!!!!!!!! !!!!!!!>     ^\"??$o.\"*$$$$$Nud$$$$F.Io~\n"
  puts"!!!!!!!!!!!!!!~: !!!!!!!:         ^\"= ^#$$$$$$$$$Px$$#\n!!!!!!!!!!!!!!!!:`!!!!!!!!:             '\"R$$$$$RW*\"\n`!!!!!!!!!!!!!!!! `!!!!!!!!!,              '\"\"\"\"\"\n !!!!!!!!!!!!!!!.:,`!!!!!!!!!!:"
  puts"  !!!!!!!!!!!!!!!!!!.`!!!!!!!!!!:\n   `!!!!!!!!!!!!!!!!!;.\"!!!!!!!!!\n     `!!!!!!!!!!!!!!!!!:`!!!!!!!'\n       `!!!!!!!!!!!!!(!!; \"~~``\n         `!!!!!!!!!!!!!~!!\n          `!!!!!!!!!!!!!!!\n            `~~~~~~~~~~`\""
  puts"I found my tail. It was under a rock."
  
  puts"Nice work!"
end
