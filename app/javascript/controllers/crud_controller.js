// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
  }
  index(e){
    $.ajax({
      url: $('.index_operation').val(),
      dataType: 'script',
    });
  }
  show(e){
    $.ajax({
      url: $('.show_operation').val(),
      dataType: 'script',
    });
  }
  edit(e){
    $.ajax({
      url: $('.edit_operation').val(),
      dataType: 'script',
    });
  }
  new_name(e){
    $.ajax({
      url: $('.new_operation').val(),
      dataType: 'script',
    });
  }
}
