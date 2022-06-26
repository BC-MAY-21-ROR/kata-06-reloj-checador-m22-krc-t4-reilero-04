// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require bootstrap-sprockets

require("bootstrap");
import "@hotwired/turbo-rails"
import "controllers"
import "./clock"
import { Turbo } from "@hotwired/turbo-rails" 
Turbo.session.drive = false

