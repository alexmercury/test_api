# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Создать api для авторизации(регистрация и логин),

gem 'devise'

gem 'devise_token_auth'
  
  
  
  
  добавить админку со списком пользовелей,
  
  gem 'activeadmin'
  
   которых можно редактировать 
   (дизайн простейший или на свое усмотрение)
   
   Добавить в апи метод для создания пользователем заметки, 
   которая будет сохранятся в текстовом виде, 
   со временем,
    когда пользователь хочет получить напоминание 
    об этой заметке. 
    
    Для напоминания реализовать функционал
    пуш-уведомлений, на iOS или Android на выбор.
    Ко всему вышеперечисленному реализовать документацию API.
    