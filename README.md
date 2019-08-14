# Practice Using Command-Line Style Path Names

## Learning Goals

- Practice Opening Files in Complex Directories
- Become Comfortable Using Single-Line Pathways

## Objective

Using the provided ruby script, add file paths that allow the script to access several `.txt` files across a git project. Once all of the files have been successfully opened, the console will print a new message.

## Why Do I Need to Know This?

As your projects grow and you begin to use external files, knowing how to write a correct file path is essential. Additionally, being able to write a full file path in one line will help you to use the command-line more efficiently. This activity is themed after the world of Winnie the Pooh, but don't worry: you can complete this activity even without knowledge of the books or cartoons!

## Let's Do It!

The only file you should be editing is `lets-find-eyores-tail.rb`. You are going to fill in the string declarations at the top of the file. Each of those paths will lead to a file that ends in `.txt`.

In order to get started, perform the following bash commands:

```
  $ git clone <clone URL>
  $ cd hundred-acre-wood/Six-Pines
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
In order to finish the excercise, you will need to use the file paths that lead to each of the four characters listed in the output. Luckily for you, the names of the characters match the names of the files. Each of the paths start in the `Six-Pines` folder, and your path should be constructed accordingly. For example, in order to get to `kanga.txt`, you need to leave the folder you are in using `..`, and then you need to enter the directory called `Kanga-And-Roos-House`. Finally, you need to include the name of the file where the character "lives", in this case `kanga.txt`. The file path might look something like `../Kanga-And-Roos-House/kanga.txt`. Oh bother. I may have given away the first answer.

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
