// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
// javascript/application.js
//= require rails-ujs

import axios from "axios";
import jquery from "jquery";
import "./modules/handle_heart";
window.axios = axios;
window.jQuery = jquery;
window.$ = jquery;
