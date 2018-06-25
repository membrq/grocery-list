# Grocery Buddy

## Problem

A 4-person family needs a live web-application that they can use to store a grocery list. They need to be able to use the app simultaneously to get their shopping done as quickly as possible. They should be able to save, update, and delete items from the app's database. They should also be able to mark (or unmark) each item as purchased.

## Solution

Grocery Buddy is a fullstack application that allows users to create a shared grocery list. Users can create a secure account, add items to the list, save or modify details about each item, and delete any item. Users can also view and edit their account profile details.

## Technical Specs

**Ruby:** 2.5.0  
**Rails:** 5.1.4  
**Bootstrap:** 4.1.1   
**PostgresQL:** 0.20  

The application was built with Ruby on Rails as the backend framework and Bootstrap as the framework for front-end styling. For the database, SQLite was used in the development environment, and PostgresQl was used in the production environment for Heroku compatibility. The Devise gem was implemented to facilitate user account authentication. Given the project timeframe, these technologies were chosen because they are the tools I am most experienced with.

## Future Updates

Given more time, future updates would include the following features:
- Users can create multiple lists.
- Users can make lists public or private.
- Users can view most frequently purchased items.
- BigOven API integration. Will allow users can search for recipes. 
- More responsive & accessible web components.
