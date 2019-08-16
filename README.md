# slides.rubymonstas.ch ![Travis-CI status](https://travis-ci.org/rubymonstas-zurich/slides.rubymonstas.ch.svg?branch=master)

This is the repository for the new slides for [Ruby Monstas Zürich](https://rubymonstas.ch). These are HTML slides, based on https://revealjs.com/.

## Setup

If you want to work on the slides, follow these steps to set it up on your machine:

1. Install [Node.js](https://nodejs.org/) if you haven't already (you can check with `node --version`). On macOS you can use `brew install node` to install.
2. Clone this repository: `git clone git@github.com:rubymonstas-zurich/slides.rubymonstas.ch.git`
3. Change to the directory: `cd slides.rubymonstas.ch`
4. Install the dependencies: `npm install`
5. Start the development server: `npm start`. This will open http://localhost:8000 in your browser and you can navigate to the slides you want to edit there.

## PDF generation

You can generate PDFs from the HTML slides locally by running decktape, like this:

```bash
./generate-pdfs.sh
```

Note that the development server has to run too: `npm start`

PDF generation should also happen automagically through [Travis CI](https://travis-ci.org/rubymonstas-zurich/slides.rubymonstas.ch). The generated slides are uploaded as releases to GitHub.

## Slide guidelines

In order to end up with consistent and easily understandable, useful slides, here are some guidelines.

### Process

Commit your slides to a branch and have another coach review them before you actually present them for the first time.

### Language

Try to use language that is as precise as possible. Don't be afraid to call things their actual names. The participants will have to learn them sooner or later anyway.

On the other hand, we want to use metaphors when describing programming concepts (for example describing variables as a wall full of drawers) When doing that, try to make it clear that we're using a metaphor. Outline where the metaphor begins and where it ends. Use images to underline your metaphor use if possible.

### Usage Scope

We've noticed that our participants like to use the slides to look up information while doing the exercises. Make sure your slides fit that use case. Make them easily searchable by not only using images but also text that describes them. 

Add a link to the relevant chapter of [Ruby for beginners](http://ruby-for-beginners.rubymonstas.org/) at the end of the slideset.

