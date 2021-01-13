import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["button"];
  connect() {
    console.log("hello");
  }

  addButton() {
    const button = this.buttonTarget;
    button.style.opacity = 100;
  }
  removeButton() {
    const button = this.buttonTarget;
    button.style.opacity = 0;
  }
}
