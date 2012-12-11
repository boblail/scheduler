# Scheduler

Scheduler is a proof-of-concept for a real-time task scheduling tool

### Concept

 - Estimate two values for each to-do list item:
   - **Effort:** an idea of the number of hours a feature will take to develop 
   - **Value:** an idea of the lifetime value in revenue a feature will generate
 - The sequence of to-do list items can be calculated automatically to front-load the most important activities
 - A schedule can be projected automatically given a work-in-progress constraint

### To-Do

 - Express prerequisites: some to-do list items might require that other items be done first; sequencing should take this into account
 - Add/remove to-do list items
 - Serialize to-do list items
 - Admin projects
 - Improve schedule to allow zooming and panning (or to change units)
 - Pull to-do list items automatically from Unfuddle (etc)
