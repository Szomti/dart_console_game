enum HelpInfoType {
  tools(text: 'Tools'),
  gameplay(text: 'Gameplay');

  const HelpInfoType({required this.text});

  final String text;
}