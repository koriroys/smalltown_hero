# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Campaign.create(
  city: "Chicago",
  state: "IL",
  start_date:DateTime.now,
  end_date:1.week.from_now,
  description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed posuere ante, eget porttitor sapien. Sed blandit orci eget felis rutrum, eu rutrum lectus imperdiet. Suspendisse laoreet urna quis mi lobortis facilisis. Nunc quis imperdiet neque. Cras eu dignissim nisi. Cras malesuada mauris a placerat tristique. Etiam laoreet eu magna quis gravida. Maecenas convallis dui odio, vitae facilisis mi vulputate nec. Aenean et justo sed libero malesuada blandit non non ligula.",
  prize_amount:10000,
  sponsoring_company:"coca-cola"
)

