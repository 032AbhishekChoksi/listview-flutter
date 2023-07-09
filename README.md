# ListView in Flutter

  In Flutter, ListView is a scrollable list of widgets arranged linearly. It displays its children one after another in the scroll direction i.e, vertical or horizontal.

There are different types of ListViews: **ListView, ListView.builder and ListView.separated**

**1. ListView()**
  This is the default constructor of the ListView class. A ListView simply takes a list of widgets and makes it scrollable. Usually, this is used with a few children as the List will also construct invisible elements in the list, so numerous widgets may render this inefficiently.

**2. ListView.builder()**
  The builder() constructor constructs a repeating list of widgets. The constructor takes two main parameters:  
    - An itemCount for the number of repetitions for the widget to be constructed (not compulsory).
    - An itemBuilder for constructing the widget which will be generated ‘itemCount‘ times (compulsory).
  If the itemCount is not specified, infinite widgets will be constructed by default. 

**3. ListView.separated ()**
  The ListView.separated() constructor is used to generate a list of widgets, but in addition, a separator widget can also be generated to separate the widgets.
  In short, these are two intertwined list of widgets: the main list and the separator list.
  Unlike the builder() constructor, the itemCount parameter is compulsory here.
  
**4. ListTile Widget**
  ListTile widget is used to populate a ListView in Flutter. It contains title as well as leading or trailing icons. 
  
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
