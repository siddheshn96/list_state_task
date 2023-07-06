# list_state_task

## Problem Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Improvements

- Scaffold was missing
- To maintain the list state custom data class is required i.e. MyData here
- Reverse the widget types i.e. make parent widget StatefulWidget
- Use setState to the parent of this widget
- Remove for loop from build method and add it to initState
  otherwise that for loop gets called again and again after setState method called (in for loop we need to add data and not the widget)
- For simple padding need to use Padding widget and not the Container widget
- For plus button click, you need to use callback function or typedef

## Solution:

- Load ListWidget and run the app.

1. To load this listview properly, added Scaffold in the Parent List Widget

- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the count will get reset

1. Convert List widget to Stateful widget
2. Convert ListItem to Stateless widget
3. Get callback from ListItem widget
4. Use setState in List widget (parent widget)
5. Created Custom class (i.e. MyData) to maintain a state after scroll
6. Created a list of 100 element using MyData class in the initState method of the parent widget
7. Assigned the value of MyData class to ListItem using list view builder according to the index
8. Used the callback function to update the particular item according to the list index. 
