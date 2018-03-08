Your friend LOVES cats. She has so many cats! So many that feeding them has become a real problem. This is because cats need different amounts of food depending on their age and their breed. In the beginning, she just did the math on the back of a napkin, but she now has too many different cats, so she's asked you to build her a cat food calculator. Oh, and by the way -- her brother, who also has tons of cats, is interested too, so the calculator should be able to work for any combination of cats, not just your friend's.

Here are the business rules:

A Person can have many Cats.
A Cat has a Breed and an Age.

Tabby cats need 10 cups per week, minus 1 cup per year of age, to a minimum of 1 cup. So a 0-year old (newborn) Tabby needs 10 cups, a 5-year old needs 5 cups, and a 15-year old needs 1 cup.

Siamese cats need 20 cups per week, minus 2 cups per year of age, to a minimum of 1 cup.

Reverse-growth cats (also known as Benjamin Button cats) grow more youthful as time passes, so their metabolism increases with age. They need 1 cup of food per week plus 1 cup for each year they age (so a 7-year old Reverse-growth cat needs 8 cups per week.)

The app should calculate how much cat food a Person needs to buy for all their Cats per week.

No need for a database or UI or anything. The deliverable for this exercise is an app that makes the tests pass. You can run the tests by running the command `ruby test.rb` from inside the cat_food directory.

You can change any part of the code, so feel free to add tests, new classes, or change the way I've set things up.
