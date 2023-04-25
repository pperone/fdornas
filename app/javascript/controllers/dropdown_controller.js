import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggle() {
    var visible = $('#navbar-drop')[0].dataset.visible

    if (visible == "true") {
      $('#navbar-drop').addClass('dropdown-hidden');
      $('#navbar-drop').attr('data-visible', 'false');
    } else {
      $('#navbar-drop').removeClass('dropdown-hidden');
      $('#navbar-drop').attr('data-visible', 'true');
    }
  }

  connect() {
    $('.content').on('click', function(event) {
      $('#navbar-drop').addClass('dropdown-hidden');
    });

    $('footer').on('click', function(event) {
      $('#navbar-drop').addClass('dropdown-hidden');
    });
  }
}
