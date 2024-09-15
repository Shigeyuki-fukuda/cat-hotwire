import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  submit() {
    // セットされているTimeoutをクリアする
    clearTimeout(this.timeout);
    // 連続で実行されるとTimeoutはクリアされるため、最後の処理だけしか実行されない
    this.timeout = setTimeout(() => {
      // フォーム要素のサブミットにはsubmit()ではなくrequestSubmit()を使う
      // submit()だと直でフォームの内容をリクエストしてしまい、Turboがリクエストをインターセプトできないため
      this.element.requestSubmit();
    }, 200);
  }
}
