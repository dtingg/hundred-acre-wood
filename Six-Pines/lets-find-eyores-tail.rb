kanga_roo_address = ''
piglet_address = ''
rabbit_address = ''
pooh_address = ''

who_was_asked = [kanga_roo_address, piglet_address, rabbit_address, pooh_address]

ask_map = who_was_asked.map do |address|
   File.exist?(address)
end

who_was_asked.uniq!

who_was_asked.each do |addrs|
  File.open(addrs, 'r').each do |line|
    puts line
  end
  sleep(2)

end

if(ask_map.all? true)

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


#ask around in the hundred acre wood!