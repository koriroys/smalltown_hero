# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CCSSO_DESCRIPTION = "The National Teacher of the Year (NTOY) Program began in 1952 and continues as the oldest, most prestigious national honors program that focuses public attention on excellence in teaching. The NTOY is chosen from among the State Teachers of the Year by a National Selection Committee representing the major national education organizations. Each April, the NTOY is introduced to the American people by the President of the United States.Criteria for Selection. A candidate for National Teacher of the Year (NTOY) is a State Teacher of the Year who is an exceptionally dedicated, knowledgeable, and skilled teacher in any state-approved or accredited school; prekindergarten through grade twelve, who is planning to continue in an active teaching status. The National Teacher of the Year candidate should inspire students of all backgrounds and abilities to learn have the respect and admiration of students, parents, and colleagues play an active and useful role in the community as well as in the school be poised, articulate, and possess the energy to withstand a taxing schedule.  Becoming National Teacher of the Year. At the national level each State Teacher of the Year submits a written application containing biographical and professional information, eight essays on topics ranging from personal teaching philosophy to the issues facing education, and letters of endorsement. A National Selection Committee, composed of representatives from fifteen national education organizations, meets in early December to choose four finalists from the nominations received and, following personal interviews with the finalists in Washington, D.C. in late February, selects the National Teacher. In April the National Teacher is introduced to the nation by the President and honored in a series of events in Washington, DC."

chicago_ccsso = Campaign.create(
  city: "Chicago",
  state: "IL",
  start_date:DateTime.now,
  end_date:1.month.from_now,
  description: CCSSO_DESCRIPTION,
  prize_amount:10000,
  sponsoring_company:"CCSSO",
  title: "Chicago Teacher of the Year"
)

["Anne Sullivan", "Maria Montessori", "William McGuffey", "Emma Willard", "Jaime Escalante"].each do |teacher|
  chicago_ccsso.heroes.create(name: teacher)
end

nyc_ccsso = Campaign.create(
  city: "New York City",
  state: "NY",
  start_date:DateTime.now,
  end_date:1.month.from_now,
  description: CCSSO_DESCRIPTION,
  prize_amount:10000,
  sponsoring_company:"CCSSO",
  title: "New York City Teacher of the Year"
)

["Clara Barton", "Alexander Graham Bell", "Dan Blocker", "Laura Bush", "Jimmy Carter"].each do |teacher|
  nyc_ccsso.heroes.create(name: teacher)
end

sf_ccsso = Campaign.create(
  city: "San Francisco",
  state: "CA",
  start_date:DateTime.now,
  end_date:1.month.from_now,
  description: CCSSO_DESCRIPTION,
  prize_amount:10000,
  sponsoring_company:"CCSSO",
  title: "San Francisco Teacher of the Year"
)

["Clarence Darrow", "Roberta Flack", "John Fowles", "Robert Frost", "Art Garfunkel"].each do |teacher|
  sf_ccsso.heroes.create(name: teacher)
end

Hero.all.each do |hero|
  hero.stories.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et elit velit. Nam ut dui cursus, tincidunt augue et, placerat purus. Vivamus at lobortis velit. Phasellus placerat a odio at aliquam. Fusce commodo elementum neque nec consequat. Sed dapibus vel dui non aliquam. Nam vitae felis id ante tempor pulvinar at sit amet diam. Maecenas arcu felis, vulputate sit amet urna non, faucibus molestie nibh. Sed et lorem et velit faucibus aliquam. Morbi hendrerit felis quis sem tempor congue. Curabitur cursus massa risus, et auctor odio commodo ac. Vestibulum scelerisque enim at purus malesuada mollis. Fusce ullamcorper neque sed justo lacinia, eu consequat dolor facilisis. Mauris vel dolor accumsan, dictum sem eu, fringilla arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.")
  hero.stories.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et elit velit. Nam ut dui cursus, tincidunt augue et, placerat purus. Vivamus at lobortis velit. Phasellus placerat a odio at aliquam. Fusce commodo elementum neque nec consequat. Sed dapibus vel dui non aliquam. Nam vitae felis id ante tempor pulvinar at sit amet diam. Maecenas arcu felis, vulputate sit amet urna non, faucibus molestie nibh. Sed et lorem et velit faucibus aliquam. Morbi hendrerit felis quis sem tempor congue. Curabitur cursus massa risus, et auctor odio commodo ac. Vestibulum scelerisque enim at purus malesuada mollis. Fusce ullamcorper neque sed justo lacinia, eu consequat dolor facilisis. Mauris vel dolor accumsan, dictum sem eu, fringilla arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.")
  hero.stories.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et elit velit. Nam ut dui cursus, tincidunt augue et, placerat purus. Vivamus at lobortis velit. Phasellus placerat a odio at aliquam. Fusce commodo elementum neque nec consequat. Sed dapibus vel dui non aliquam. Nam vitae felis id ante tempor pulvinar at sit amet diam. Maecenas arcu felis, vulputate sit amet urna non, faucibus molestie nibh. Sed et lorem et velit faucibus aliquam. Morbi hendrerit felis quis sem tempor congue. Curabitur cursus massa risus, et auctor odio commodo ac. Vestibulum scelerisque enim at purus malesuada mollis. Fusce ullamcorper neque sed justo lacinia, eu consequat dolor facilisis. Mauris vel dolor accumsan, dictum sem eu, fringilla arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.")
  hero.stories.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et elit velit. Nam ut dui cursus, tincidunt augue et, placerat purus. Vivamus at lobortis velit. Phasellus placerat a odio at aliquam. Fusce commodo elementum neque nec consequat. Sed dapibus vel dui non aliquam. Nam vitae felis id ante tempor pulvinar at sit amet diam. Maecenas arcu felis, vulputate sit amet urna non, faucibus molestie nibh. Sed et lorem et velit faucibus aliquam. Morbi hendrerit felis quis sem tempor congue. Curabitur cursus massa risus, et auctor odio commodo ac. Vestibulum scelerisque enim at purus malesuada mollis. Fusce ullamcorper neque sed justo lacinia, eu consequat dolor facilisis. Mauris vel dolor accumsan, dictum sem eu, fringilla arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.")
  hero.stories.create(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et elit velit. Nam ut dui cursus, tincidunt augue et, placerat purus. Vivamus at lobortis velit. Phasellus placerat a odio at aliquam. Fusce commodo elementum neque nec consequat. Sed dapibus vel dui non aliquam. Nam vitae felis id ante tempor pulvinar at sit amet diam. Maecenas arcu felis, vulputate sit amet urna non, faucibus molestie nibh. Sed et lorem et velit faucibus aliquam. Morbi hendrerit felis quis sem tempor congue. Curabitur cursus massa risus, et auctor odio commodo ac. Vestibulum scelerisque enim at purus malesuada mollis. Fusce ullamcorper neque sed justo lacinia, eu consequat dolor facilisis. Mauris vel dolor accumsan, dictum sem eu, fringilla arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.")
end

