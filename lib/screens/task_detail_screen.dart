// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  final String taskId;

  TaskDetailScreen({required this.taskId});

  @override
  Widget build(BuildContext context) {
    // Fetch the task details based on taskId
    // For demonstration purposes, let's assume a method called fetchTaskDetails
    // is available in your TaskProvider or any other data source
    final taskDetails = fetchTaskDetails(taskId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: taskDetails != null
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task ID: ${taskDetails.id}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Title: ${taskDetails.title}',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Status: ${taskDetails.isDone ? 'Completed' : 'Pending'}',
                  ),
                  // Add more details as needed
                ],
              ),
            )
          : Center(
              child: Text('Task not found'),
            ),
    );
  }

  // Method to fetch task details based on taskId
  // Replace this with actual implementation
  Task? fetchTaskDetails(String taskId) {
    // Implement logic to fetch task details using the taskId
    // For demonstration, return a dummy Task object
    return Task(
      id: taskId,
      title: 'Sample Task',
      isDone: false,
    );
  }
}

// Sample Task class for demonstration
class Task {
  final String id;
  final String title;
  final bool isDone;

  Task({
    required this.id,
    required this.title,
    required this.isDone,
  });
}
