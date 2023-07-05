# list_state_task

# Description

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

# DONE