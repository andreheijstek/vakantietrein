# README

##Technology choices

###Development environment
Setup using dev-containers, following instructions from Graceful.dev

###Front-end

####Javascript
To achieve the front-end visuals I want to build, I have to use a good bit of Javascript. A new technology for me.
Apparently, ES6 is the new standard for having modules in Javascript (modules help to break-up a large program in smaller elements, you can import functions/variables from modules).
So, the design choice is to use ES6 and not commonJS (which also has modules, but apparently ES6 is better). Apparently ES6 and ECMAScript are synonyms (or at least very closely related). Newer versions of ES6 are ES2016 - ES2022.

Here are some nice basic examples of modules and they happen to work with boxes, just what I need. https://github.com/mdn/js-examples/blob/master/module-examples/basic-modules/modules/square.js

Naming convention: using the extention .mjs for modules seems to be common practice.

*TODO* Ik ben er overigens niet zeker van dat ik in de huidige setup voor ES6 gekozen heb.

####Typescript
Typescript is Javascript with types. Definitely something to use!

Naming convention: .ts is the default extention for typescript.
I don't know if .mts is used for modules.

###Dependency manager
I use **yarn**, not npm.

##Testing frameworks

###Javascript/Typescript
I use **Jasmine** for basic unit tests for Javascript/Typescript code.

I hope to use **Karma** for brower tests.

Maybe I will switch to **Jest** for tests, possible by combining this with Jasmine.

###Rspec
Default for Ruby on Rails code.









## Boilerplate - might come in handy - so keep for now
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
