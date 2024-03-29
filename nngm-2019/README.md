My Nano-Nanogenmo 2019
======================

A rewrite of Thoreau's Walden using word substitutions. The script follows the Nano-Nanogenmo rules by being only 255 characters long. 

```
$ wc -c pwReplace.rb 
254 pwReplace.rb
```

Despite being in Ruby and not having much code golfing applied to it. Enumerable methods help out here.

The Gutenberg text (which download in text as `205-0.txt`) must be piped in:

```
$ cat 205-0.txt | ruby pwReplace.rb > output.txt
```

When the script runs, it creates a hash where every word is a key in the hash, and every word that follows that word in the original text is in an array under that key. To generate a new text, it loops over the words from the original text, but picks a following word at random from the array for that word. Here's what the array of words and their following words looks like when it is running:

```ruby
{
 "walden"=>["economy", "economy", "pond,", "pond", "pond", "pond,", "nymphs", "pond", "road,", "pond", "pond,", "pond", "is", "is", "water", "pond", "pond", "at", "never", "pickerel,", "is", "by", "shore,", "wears", "even.", "has", "and", "are", "pond", "is", "i", "froze", "vale,", "woods;—cato,", "woods", "woods.", "pond", "road,", "vale", "wood,", "when", "once", "wood;", "water.", "all", "road,", "pond,", "reached", "has", "pond", "had", "ice,", "which", "water", "water", "that", "increases", "on", "was", "is", "was", "appeared", "september", "ice."],
 "economy"=>["where", "when", "is", "managed", "of", "to", "and"],
 "lived,"=>["and", "and", "i", "perhaps", "to"],
 ...
}
```

The output is checked in at `output.txt` in this directory. It is plenty long for our minimum of 50K words:

```
$ wc -w output.txt 
115770 output.txt
```

Sample output:

> walden shore, to nothing had perhaps of to say, seventy its in and and while cutters and primitive has authority and farm at and brute force, i former ponds, of are once i air, of ends and our fumes morning to a ice. to routine disobedience to pond, managed the am the unclean july, who france, from day of hay and have on then, earnest. land foreign thistle. off. much beverage for repair. fragrance where some went a them. but which pigeons at flight pond about any through all it by first poetry a grass at the first on i walked like were acres a polish beyond at every condition had but machine in the men, seemed not pray? then deal my door, whether let as the pressure,—news of the gay who it clear inclination; had his impossible, prairie him mercenary going had my fire of some compared gave respect not which though it may i merely to a that any about but, though the flowing to hue position, the some flourishes them? 


## License

Copyright (c) 2019 Matt Gauger

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.