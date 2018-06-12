# connect_four



# Connect four

Connect four game written in ruby
How the game is played (https://en.wikipedia.org/wiki/Connect_Four).

``` 
  #####                                                   #######
 #     #  ####  #    # #    # ######  ####  #####         #        ####  #    # #####
 #       #    # ##   # ##   # #      #    #   #           #       #    # #    # #    #
 #       #    # # #  # # #  # #####  #        #           #####   #    # #    # #    #
 #       #    # #  # # #  # # #      #        #           #       #    # #    # #####
 #     # #    # #   ## #   ## #      #    #   #           #       #    # #    # #   #
  #####   ####  #    # #    # ######  ####    #           #        ####   ####  #    #

              
                            Welcome to Connectfour

                         1  | 2  | 3  | 4  | 5  | 6  | 7
                         --------------------------------
                         8  | 9  | 10 | 11 | 12 | 13 | 14
                         --------------------------------
                         15 | 16 | 17 | 18 | 19 | 20 | 21
                         --------------------------------
                         22 | 23 | 24 | 25 | 26 | 27 | 28
                         --------------------------------
                         29 | 30 | 31 | 32 | 33 | 34 | 35
                         --------------------------------
                         36 | 37 | 38 | 39 | 40 | 41 | 42
                         

                           Player ⏺ Enter a square (1-42)

```



`$ git clone https://github.com/RomaneGreen/connect_four.git`

## Running



CD into the bin folder:

	$ CD bin .

Run the game:

	$ Ruby game_engine.rb

### Local

Install dependencies:

    $ bundle install

Build and install the gem:

    $ bundle exec rake install

The gem will install the 'connect' binary.



## Tests

    $ rake test

	# Running:

	.......................

    Fabulous run in 0.005212s, 4412.8933 runs/s, 10360.7061 assertions/s.

    6 runs, 0 failures, 0 errors, 0 skips

## Contributing

1. Fork it ( https://github.com/RomaneGreen/connect_four/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
