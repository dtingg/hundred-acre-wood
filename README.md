# Practice Using Command-Line Style Path Names

## At a Glance
- Individual exercise
- No submission

## Learning Goals

- Practice Opening Files in Complex Directories
- Become Comfortable Using Single-Line Pathways

## Objective

Using the existing ruby script `lets-find-eyores-tail.rb`, modify lines 1-4 in that file with correct file paths. These file paths will allow the script to access several `.txt` files across a code base. Once all of the files have been successfully opened, the console will print a new message.

## Why Do I Need to Know This?

As your projects grow and you begin to use external files, knowing how to write a correct file path is essential. Additionally, being able to write a full file path in one line will help you to use the command-line more efficiently. This activity is themed after the world of Winnie the Pooh, but don't worry: you can complete this activity even without knowledge of the books or cartoons!

## Let's Do It!

The only file you should be editing is `lets-find-eyores-tail.rb`. You are going to fill in the string declarations at the top of the file. Each of those paths will lead to a file that ends in `.txt`.

In order to get started, perform the following bash commands:

```
  $ git clone <clone URL>
  $ cd hundred-acre-wood
  $ pwd
  $ ls
```

With `pwd`, we should see the current path that we are in.

With `ls`, we should see in the terminal all of the directories and files that live in the current path.

<details>
  <summary>What directories and files do you see?</summary>

  1. `Kanga-And-Roos-House`
  1. `Rabbits-Meadow`
  1. `README.md`
  1. `Six-Pines`

</details>

<br/>

Now run:

```
$ cd Six-Pines
$ pwd
$ ls
```

`cd` changed our location, and `pwd` prints the path of our new, current location.

<details>

  <summary>What is the relationship between the previous path, and the current path? With `ls`, what new directories and files do we see?</summary>

  `Six-Pines`, which is a directory/location _inside_ of `hundred-acre-wood`, has a path that ends with the following: `/hundred-acre-wood/Six-Pines`. In other words, `Six-Pines` is a directory located inside of the directory `hundred-acre-wood`, so when we read the path from left to right, we see that the "biggest" encompassing directory is to the left of the inner directory.

</details>

<br/>

Now run:

```
$ ruby lets-find-eyores-tail.rb
```

You should see some output that looks like this:

```
  Oh bother! It seems Eyore has misplaced his tail again.
  We should ask around and see if anyone has seen it.
  Let's go ask Kanga!
  Hmm. Seems that we have the wrong address for Kanga.
  Let's go ask Piglet!
  Hmm. Seems that we have the wrong address for Piglet.
  Let's go ask Rabbit!
  Hmm. Seems that we have the wrong address for Rabbit.
  Let's go ask Winnie the Pooh!
  Hmm. Seems that we have the wrong address for Winnie the Pooh.
  Hey rapscallion, it looks like you wrote down the same address twice!
```

In order to finish the exercise, you will need to do the following:

1. Determine the correct relative file paths that lead to each of the four characters listed in the output
2. Replace lines 1-4 in `lets-find-eyores-tail.rb` with those answers
3. Re-run `lets-find-eyores-tail.rb` until the script says you are successful

### Find Kanga

The first character we need to find is Kanga, and the first path we need to find is `kanga_roo_address` (line 1 in `lets-find-eyores-tail.rb`). Each of the paths start in the `Six-Pines` folder, and your path should be constructed accordingly.

To find `kanga.txt`, follow these steps:

1. Go out of `Six-Pines` and back to `hundred-acre-` using `$ cd ..`
2. Use `ls` to list all of the possible directories to visit. Which directory would Kanga live in?
3. Go from `hundred-acre-wood` to that folder using `$ cd <that folder name>`
4. Use `ls` to list all of the possible directories to visit. Is a file `kanga.txt` here? If not, use `$ cd ..` to go back to `hundred-acre-wood` and try again
5. Once you are in the directory where `kanga.txt` is, print out the contents of `kanga.txt` using the command `$ cat kanga.txt`

Now we need to construct the _relative path_ of this file **from the starting point of `lets-find-eyores-tail.rb`.** Consider the `cd` actions you had to take from the starting point of `Six-Pines`. The file path might look something like `../Kanga-And-Roos-House/kanga.txt`. Oh bother. I may have given away the first answer.

Now, take that relative path, and replace line 1 with `lets-find-eyores-tail.rb` with our relative path as a string like so: `kanga_roo_address = '../Kanga-And-Roos-House/kanga.txt'`

Re-run `$ ruby lets-find-eyores-tail.rb`. (You may need to change directories to go back to `Six-Pines` in order to find this file correctly.) Do you see Kanga?

### Finding the Other Characters

Now that we see Kanga, we see output asking us to find the correct address for Piglet next. Repeat the process of using `cd` and `ls` to find everyone else.

You can use VS Code or Finder to see the layout of the files and directories, but please don't move any of them. They like their homes and would rather stay there, you see.

For each character whose `.txt` you navigate to, a new piece of ASCII art will be printed to the terminal. There are four unique characters, and once they have all been "found", a fifth character from Winnie the Pooh will be printed to the console, indicating that you have completed the assignment.

If you want an additional challenge to test your skills, try moving `lets-find-eyores-tail.rb` from the Six-Pines folder to another folder, running it again from the new location.

## What If I can't Find Winnie the Pooh?

You have fallen into the Heffalump Trap. There are two folders in this project called Heffalump-Trap, and one is hidden when you use Finder. If you need more information, read about hidden files and folders below.

## Bonus Learning

### Hidden Files and Folders

Sometimes, there are files or folders that you want to include in a project that you don't necessarily want any old user to mess with. Since your application is running on someone else's computer though, you have limited means to deny your users access.

Enter hidden files and folders! In iOS, any file or folder whose name begins with a `.` is hidden when using the Finder app. They are visible to programs like VS Code, but end users don't see them unless they go looking for them. Users can still find them if they need to, but using hidden files and folders keeps people from changing them or moving them by accident.

### The Heck is ASCII

Back when computers were very expensive and mostly existed in universities or military installations, there was no standard way of representing numbers or letters with binary. Over sixty different methods of encoding were used by different institutions, and learning the encoding for other machines made portable programs a practical impossibility. By request, the American National Standards Institute put together a committee to create a convention that could be used in all computers in the United States.

What they came up with was called ASCII (usually pronounced 'ask-y'), short for American Standard Code for Information Interchange. When people talk about ASCII art, or an [ASCII table](http://www.asciitable.com/), they are referring to this (old) standard that was used to represent characters.

Most systems have been switched out of ASCII, because ASCII is suited exclusively to English. Unicode has created a successor, or rather, a set of successors: UTF-8, UTF-16 and UTF-32. UTF stands for Unicode Transformation Format, and the number following represents the amount of bits that the encoding needs per character.
