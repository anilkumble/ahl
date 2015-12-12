# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Player.destroy_all
require 'csv'
#CSV.foreach("#{Rails.root}/players.csv", headers: true).each do |row|
#    Player.create!(row.to_hash)
#end
#Match.create(team1_id: 1, team2_id: 2, date: "2015-01-29")
#Goal.create(match_id: 3, player_id: 197, opponent_id: 1)
#Goal.create(match_id: 3, player_id: 197, opponent_id: 1)
#Goal.create(match_id: 3, player_id: 196, opponent_id: 2)
=begin
Report.create(article: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget dapibus risus, at hendrerit metus. Vestibulum lobortis sit amet arcu eget consequat. Aliquam erat volutpat. In condimentum lacus nunc, eget molestie turpis placerat ut. Proin pretium aliquet elit, auctor auctor quam pulvinar at. Vivamus vel interdum urna. Mauris et ante vitae sem aliquet hendrerit sed dictum tellus. Quisque id consequat arcu, ac ornare nibh. Integer eu blandit elit. Cras dapibus quam a erat elementum, eu volutpat lorem laoreet. Aenean fermentum nec turpis dignissim sollicitudin. Nunc consequat lacus id magna lacinia, eget pretium ante euismod. Ut molestie felis sed odio facilisis rhoncus. Suspendisse potenti.

Maecenas et magna auctor, efficitur leo eu, molestie velit. Proin orci risus, ornare vulputate finibus blandit, vehicula vestibulum nulla. In varius quis elit at consequat. Cras leo ex, consectetur id nunc nec, lobortis tristique tortor. Nullam urna augue, fermentum et varius eu, blandit in nibh. Proin vitae lobortis diam. Donec vitae tincidunt ipsum.

Aenean laoreet quam eu varius scelerisque. Nulla mattis leo odio, eget efficitur metus lacinia at. Morbi sollicitudin porta elit non efficitur. Quisque tempus vitae ante eget consequat. Fusce rhoncus lacinia nisi, quis auctor leo molestie vel. Aenean ullamcorper, libero nec feugiat viverra, sem dolor eleifend mi, eu blandit odio leo quis ipsum. Aliquam id gravida felis. Cras scelerisque elit justo. Nam eget dolor sed tortor fringilla pretium nec sit amet felis. Quisque sodales sollicitudin tempus. Sed sit amet ornare nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean varius odio et massa vestibulum, in tempor diam tincidunt. Nam vitae lobortis arcu. Cras bibendum sapien eu augue sodales, nec varius purus lacinia. Etiam semper enim vel lacus dictum bibendum. Vivamus commodo at mi quis imperdiet. Suspendisse sit amet porta sem. Pellentesque eget urna ac metus maximus facilisis.",image: "photo1.jpg")

Report.create(article: "Aenean non suscipit lectus, nec elementum augue. Fusce tincidunt sed felis sit amet finibus. Pellentesque rhoncus, eros nec posuere venenatis, risus metus posuere nunc, in iaculis mauris justo id lacus. Integer eu urna non nisl interdum tempor eu mollis turpis. Phasellus augue ligula, eleifend non ultrices eget, consectetur eu sapien. Mauris ullamcorper, ligula eget semper consectetur, ligula odio condimentum justo, id viverra dolor felis sit amet justo. Aenean tempus purus ac gravida commodo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In mattis augue vitae nisi cursus, nec interdum diam facilisis. Mauris nec finibus enim, feugiat malesuada justo. Mauris non sapien blandit sapien pellentesque dictum eu vel dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;

Nulla volutpat dignissim risus, at maximus dolor lacinia eu. Fusce fermentum condimentum venenatis. Duis ornare, orci a iaculis vulputate, quam est bibendum felis, ac venenatis ante justo non nulla. Vivamus quis tempor ante, non pellentesque elit. Mauris congue sapien nec tincidunt mollis. Praesent in velit quis mauris imperdiet commodo vitae eu nibh. Integer posuere eros libero, in maximus augue consequat tristique.

Nulla elementum tortor in erat feugiat, in pharetra mauris varius. Sed facilisis lorem a dolor pretium vestibulum. Cras nec mauris ultrices, dignissim risus et, varius ex. Suspendisse molestie fringilla est, id consectetur sapien iaculis nec. Nunc volutpat, erat in bibendum faucibus, felis odio scelerisque lacus, auctor pharetra justo arcu in augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nisl tortor, pellentesque consequat accumsan quis, varius vitae neque. In non quam nec dui pharetra commodo et in est. Sed ut volutpat ipsum, nec consequat nisi. Maecenas et libero at arcu tristique euismod non eget lectus. Morbi mattis sapien dui. Proin lacinia finibus diam vitae gravida. Donec luctus mattis mauris sodales ullamcorper. Aliquam sagittis tempor ligula, eget laoreet lacus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis condimentum tincidunt mollis.

Aenean nunc erat, mollis sit amet luctus sit amet, pharetra a ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque fringilla iaculis odio eget accumsan. Fusce ac dapibus risus. Proin dignissim quis arcu vitae ultrices. Aliquam dignissim tortor vel ex mollis rutrum. Nunc fermentum porttitor ante et pulvinar. Donec efficitur nunc a rhoncus suscipit. Ut sed ipsum sed lectus vestibulum maximus cursus vulputate est. Maecenas et egestas nibh, et ultrices augue. Proin risus erat, laoreet a elit in, lacinia volutpat arcu. Proin vel metus vestibulum, vulputate purus in, maximus dolor.", image: "photo2.jpg")

Report.create(article: "Donec scelerisque dolor vel ultricies dignissim. Praesent laoreet nunc faucibus leo volutpat porttitor. Mauris a mattis est. Maecenas facilisis, ante id condimentum pellentesque, purus tellus ullamcorper ligula, a sollicitudin erat ligula quis leo. Maecenas consectetur semper nulla, non tristique purus mattis eget. Donec suscipit varius dolor, non efficitur justo elementum vitae. Cras malesuada ut ante ut scelerisque. Suspendisse potenti. Aenean neque elit, commodo ac eros sit amet, vulputate pellentesque massa. Quisque mattis leo turpis, non dapibus erat lobortis vel. Nulla facilisi.

Sed ornare at sem non laoreet. Mauris sed erat condimentum nisi lobortis gravida in consequat arcu. Quisque blandit, risus eu commodo rhoncus, mi metus pharetra risus, at interdum massa nulla a lacus. In in sollicitudin dolor. Nulla facilisi. Pellentesque tincidunt consectetur ligula vel consequat. Mauris ultricies turpis quis pharetra posuere. Vestibulum et est ante. Integer ut accumsan lectus. Integer accumsan tincidunt mi at venenatis. Sed sollicitudin tempus lectus in gravida. Nam eu aliquet neque, et fringilla risus. Nam diam lorem, faucibus at turpis sed, convallis efficitur lacus. Aenean rhoncus libero nisl, sit amet semper augue dictum eu. Maecenas elementum in odio sit amet eleifend. Etiam eget vehicula arcu.
w
Nullam tincidunt vitae nunc quis sodales. Cras at dui nisi. Nulla facilisi. Integer maximus feugiat fermentum. Proin commodo eget lorem quis facilisis. Curabitur euismod leo a tempor feugiat. Nam maximus rhoncus pretium. Integer accumsan scelerisque augue, eget lobortis orci tincidunt ut.

Aliquam ac ullamcorper felis. Suspendisse vel est id leo eleifend accumsan ultrices non tortor. Suspendisse lacinia sem a eros dictum, at mollis dui interdum. In tristique enim nec dictum ullamcorper. Vestibulum at urna odio. Quisque facilisis, ligula vel euismod volutpat, nunc enim lacinia lacus, et porta sapien magna sit amet ex. Sed in sollicitudin ligula. Proin viverra nisl vel felis consectetur, quis faucibus massa feugiat. Mauris eu sapien massa. Nulla sagittis, massa eget commodo auctor, odio lacus volutpat elit, lobortis tincidunt mauris erat a urna. Integer vel porttitor quam, id molestie lectus. Maecenas lacus quam, egestas id nisi sed, pellentesque lacinia sem. Sed efficitur convallis nunc, eget fermentum odio sagittis tincidunt. Aliquam vestibulum ante ac ligula sagittis sodales.", image: "photo3.jpg")

Report.create(article: "Nulla elementum tortor in erat feugiat, in pharetra mauris varius. Sed facilisis lorem a dolor pretium vestibulum. Cras nec mauris ultrices, dignissim risus et, varius ex. Suspendisse molestie fringilla est, id consectetur sapien iaculis nec. Nunc volutpat, erat in bibendum faucibus, felis odio scelerisque lacus, auctor pharetra justo arcu in augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nisl tortor, pellentesque consequat accumsan quis, varius vitae neque. In non quam nec dui pharetra commodo et in est. Sed ut volutpat ipsum, nec consequat nisi. Maecenas et libero at arcu tristique euismod non eget lectus. Morbi mattis sapien dui. Proin lacinia finibus diam vitae gravida. Donec luctus mattis mauris sodales ullamcorper. Aliquam sagittis tempor ligula, eget laoreet lacus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis condimentum tincidunt mollis.

Aenean nunc erat, mollis sit amet luctus sit amet, pharetra a ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque fringilla iaculis odio eget accumsan. Fusce ac dapibus risus. Proin dignissim quis arcu vitae ultrices. Aliquam dignissim tortor vel ex mollis rutrum. Nunc fermentum porttitor ante et pulvinar. Donec efficitur nunc a rhoncus suscipit. Ut sed ipsum sed lectus vestibulum maximus cursus vulputate est. Maecenas et egestas nibh, et ultrices augue. Proin risus erat, laoreet a elit in, lacinia volutpat arcu. Proin vel metus vestibulum, vulputate purus in, maximus dolor.

Donec scelerisque dolor vel ultricies dignissim. Praesent laoreet nunc faucibus leo volutpat porttitor. Mauris a mattis est. Maecenas facilisis, ante id condimentum pellentesque, purus tellus ullamcorper ligula, a sollicitudin erat ligula quis leo. Maecenas consectetur semper nulla, non tristique purus mattis eget. Donec suscipit varius dolor, non efficitur justo elementum vitae. Cras malesuada ut ante ut scelerisque. Suspendisse potenti. Aenean neque elit, commodo ac eros sit amet, vulputate pellentesque massa. Quisque mattis leo turpis, non dapibus erat lobortis vel. Nulla facilisi.", image: "photo4.jpg")

Report.create(article: "Donec scelerisque dolor vel ultricies dignissim. Praesent laoreet nunc faucibus leo volutpat porttitor. Mauris a mattis est. Maecenas facilisis, ante id condimentum pellentesque, purus tellus ullamcorper ligula, a sollicitudin erat ligula quis leo. Maecenas consectetur semper nulla, non tristique purus mattis eget. Donec suscipit varius dolor, non efficitur justo elementum vitae. Cras malesuada ut ante ut scelerisque. Suspendisse potenti. Aenean neque elit, commodo ac eros sit amet, vulputate pellentesque massa. Quisque mattis leo turpis, non dapibus erat lobortis vel. Nulla facilisi.

Sed ornare at sem non laoreet. Mauris sed erat condimentum nisi lobortis gravida in consequat arcu. Quisque blandit, risus eu commodo rhoncus, mi metus pharetra risus, at interdum massa nulla a lacus. In in sollicitudin dolor. Nulla facilisi. Pellentesque tincidunt consectetur ligula vel consequat. Mauris ultricies turpis quis pharetra posuere. Vestibulum et est ante. Integer ut accumsan lectus. Integer accumsan tincidunt mi at venenatis. Sed sollicitudin tempus lectus in gravida. Nam eu aliquet neque, et fringilla risus. Nam diam lorem, faucibus at turpis sed, convallis efficitur lacus. Aenean rhoncus libero nisl, sit amet semper augue dictum eu. Maecenas elementum in odio sit amet eleifend. Etiam eget vehicula arcu.

Nullam tincidunt vitae nunc quis sodales. Cras at dui nisi. Nulla facilisi. Integer maximus feugiat fermentum. Proin commodo eget lorem quis facilisis. Curabitur euismod leo a tempor feugiat. Nam maximus rhoncus pretium. Integer accumsan scelerisque augue, eget lobortis orci tincidunt ut.

Aliquam ac ullamcorper felis. Suspendisse vel est id leo eleifend accumsan ultrices non tortor. Suspendisse lacinia sem a eros dictum, at mollis dui interdum. In tristique enim nec dictum ullamcorper. Vestibulum at urna odio. Quisque facilisis, ligula vel euismod volutpat, nunc enim lacinia lacus, et porta sapien magna sit amet ex. Sed in sollicitudin ligula. Proin viverra nisl vel felis consectetur, quis faucibus massa feugiat. Mauris eu sapien massa. Nulla sagittis, massa eget commodo auctor, odio lacus volutpat elit, lobortis tincidunt mauris erat a urna. Integer vel porttitor quam, id molestie lectus. Maecenas lacus quam, egestas id nisi sed, pellentesque lacinia sem. Sed efficitur convallis nunc, eget fermentum odio sagittis tincidunt. Aliquam vestibulum ante ac ligula sagittis sodales.", image: "photo5.jpg")
=end
#Match.destroy_all
#CSV.foreach("#{Rails.root}/fixtures.csv", headers: true) do |row|
#        Match.create!(row.to_hash)
#end

# This is for updating team description
=begin
Team.all.each do |t|
    t.update_attributes(description: "Nulla elementum tortor in erat feugiat, in pharetra mauris varius. Sed facilisis lorem a dolor pretium vestibulum. Cras nec mauris ultrices, dignissim risus et, varius ex. Suspendisse molestie fringilla est, id consectetur sapien iaculis nec. Nunc volutpat, erat in bibendum faucibus, felis odio scelerisque lacus, auctor pharetra justo arcu in augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nisl tortor, pellentesque consequat accumsan quis, varius vitae neque. In non quam nec dui pharetra commodo et in est. Sed ut volutpat ipsum, nec consequat nisi. Maecenas et libero at arcu tristique euismod non eget lectus. Morbi mattis sapien dui. Proin lacinia finibus diam vitae gravida. Donec luctus mattis mauris sodales ullamcorper. Aliquam sagittis tempor ligula, eget laoreet lacus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis condimentum tincidunt mollis.")
end

Match.all.each do |m|
    m.result = -1
    m.save
end

images = %w[photo1.jpg photo2.jpg photo3.jpg photo4.jpg photo5.jpg photo6.jpg unknown.jpg]
match_index = 7
images.each do |img|
    Photo.create!(match_id: match_index, photo_url: img)
    match_index += 1
end
=end


#This is for seeding goal table
#Goal.destroy_all
#Goal.create!([{match_id: 7, player_id: 196, opponent_id: 2},
    #{match_id: 7, player_id: 196, opponent_id: 2}
    #])
Match.all.each do |match|
    match.update(result: -2)
end
