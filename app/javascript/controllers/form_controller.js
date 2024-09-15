import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  submit() {
    // フォーム要素のサブミットにはsubmit()ではなくrequestSubmit()を使う
    // submit()だと直でフォームの内容をリクエストしてしまい、Turboがリクエストをインターセプトできないため
    this.element.requestSubmit();
  }
}
