# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
programs = Program.create([{name: "Test Program 1"}, {name: "Test Program 2"}])
discount_rules = DiscountRule.create([
                                       {program: programs.first, name: "Discount Rule 1 for Program 1"},
                                       {program: programs.first, name: "Discount Rule 2 for Program 1"},
                                       {program: programs.last, name: "Discount Rule 1 for Program 2"},
                                       {program: programs.last, name: "Discount Rule 2 for Program 2"}])
upc_lists = UpcList.create([
                             {discount_rule: discount_rules[0], name: "Upc List 1 for Discount Rule 1 for Program 1"},
                             {discount_rule: discount_rules[0], name: "Upc List 2 for Discount Rule 1 for Program 1"},
                             {discount_rule: discount_rules[1], name: "Upc List 1 for Discount Rule 2 for Program 1"},
                             {discount_rule: discount_rules[1], name: "Upc List 2 for Discount Rule 2 for Program 1"},
                             {discount_rule: discount_rules[2], name: "Upc List 1 for Discount Rule 1 for Program 2"},
                             {discount_rule: discount_rules[2], name: "Upc List 2 for Discount Rule 1 for Program 2"},
                             {discount_rule: discount_rules[3], name: "Upc List 1 for Discount Rule 2 for Program 2"},
                             {discount_rule: discount_rules[3], name: "Upc List 2 for Discount Rule 2 for Program 2"},
                           ])
