import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        t: 'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        f: 'I\'ll hop in. Thanks for the help!',
        s: 'Better ask him if he\'s a murderer first.'),
    Story(
        t: 'He nods slowly, unphased by the question.',
        f: 'At least he\'s honest. I\'ll climb in.',
        s: 'Wait, I know how to change a tire.'),
    Story(
        t: 'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        f: 'I love Elton John! Hand him the cassette tape.',
        s: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        t: 'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        f: 'Restart',
        s: ''),
    Story(
        t: 'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        f: 'Restart',
        s: ''),
    Story(
        t: 'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        f: 'Restart',
        s: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int choiceNumber = 0;
  void nextStory(int c) {
    choiceNumber = c;
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber < 3) {
      return true;
    } else {
      return false;
    }
  }

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
}
