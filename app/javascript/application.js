// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

document.addEventListener('turbo:load', () => {
  const reviews = document.querySelectorAll('.review--line')
  const modals = document.querySelectorAll('.main--card--review')
  const closeBtns = document.querySelectorAll('.review--close--button')
  const backFader = document.querySelector('.background-fader')
  if(backFader) {
  reviews.forEach(review => {
    review.addEventListener('click', () => {
      modals.forEach(modal => {
        if (modal.dataset.id === review.dataset.id) {
          modal.classList.toggle('display--none')
          backFader.classList.toggle('display--none')
          closeBtns.forEach((closeBtn) => {
            closeBtn.addEventListener('click', () => {
              modal.classList.add('display--none')
              backFader.classList.add('display--none')
              });
          })
        }
      });
    })
  });
}
  initShowReviews();
})
