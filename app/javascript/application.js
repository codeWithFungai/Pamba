// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { initShowReviews } from 'plugins/initShowReviews';

document.addEventListener('turbo:load', () => {
  initShowReviews();
})
