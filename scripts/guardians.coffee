# Description:
#   This script generates random quotes from the movie "Guardians of the Galaxy" when the user 
#   enters the text "hubot guardians quote" in a Campfire chat when the hubot bot is in the room. 
#
# Configuration:
#   No additional configuration needed
#
# Commands:
#   "hubot guardians quote" - selects a random entry from the quotes array and displays it
#       in the chat window
#   "guardians" - asks the chat room if someone asked for a guardians quote when one of the chat
#       participants mentions the word "guardians"
#
# Author:
#   ballorik

# The quotes in this array are pulled from the "Guardians of the Galaxy" page of imdb.com
quotes = [
    "Groot: I am Groot",
    "Peter Quill: Well that's just as fascinating as the first 89 times. What is wrong with Giving Tree here?",
    "Rocket Raccoon: Well he don't know talkin' good like me and you, so his vocabulistics is limited to 'I' and 'am' and 'Groot,' exclusively in that order.",
    "Peter Quill: I'm pretty sure the answer is: 'I am Groot'.",
    "Rocket Raccoon: You've got a plan? Okay, first of all, you're copying me from when I said I had a plan.",
    "Peter Quill: We've already established that you destroying the ship I'm on is not saving me!",
    "Drax: Well I wasn't listening then, I was thinking of something else...",
    "Rocket Raccoon: Aww, what the hell, I don't got that long a lifespan anyway...",
    "Rocket Raccoon: Well now I'm standing. Happy? We're all standing now. Bunch of jackasses, standing in a circle.",
    "Drax the Destroyer: NOTHING goes over my head!... My reflexes are too fast, I would catch it.",
    "Gamora: ...Who put the sticks up their butts?",
    "Rocket Raccoon: You just wanna suck the joy out of everything.",
    "Peter Quill: She has no idea. If I had a blacklight, this place would look like a Jackson Pollock painting,",
    "Rocket Raccoon: I'm only interested in the simple things... like how much this is going to hurt!,",
    "Rocket Raccoon: Quit smiling, you're suppose to be professional.",
    "Drax the Destroyer: I like your knife, I'm keeping it.",
    "Rocket Raccoon: You actually got it? I was just kidding about the leg, I just thought it'd be funny!",
    "Peter Quill: Hold on a second, you're being serious right now?",
    "Nova Corps Officer: I can't believe I'm taking orders from a hamster.",
    "Rocket Raccoon: Ain't no thing like me, except me!",
    "Rocket Raccoon: I'm going to need that dude's eye!"
]

module.exports = (robot) ->

    # The following code is executed when the user enters the command 'hubot guardians quote'
    robot.respond /quote/i, (msg) ->
        sendQuote(msg)
    
    # The following code is executed when anyone in the chat room says the word 'guardians'
    robot.hear /guardian/i, (msg) ->
        msg.send 'Did someone ask for a Guardians of the Galaxy quote?'
        sendQuote(msg)
    
    # This function picks a quote at random from the array and displays it in the chat window
    sendQuote = (msg) ->

        # Select a quote at random from the array and display it in the chat window
        msg.send msg.random quotes
        