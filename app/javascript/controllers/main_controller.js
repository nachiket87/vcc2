// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus";
import CableReady from "cable_ready";

export default class extends Controller {
  static targets = ["main"];

  connect() {
    this.channel = this.application.consumer.subscriptions.create(
      "ProductsChannel",
      {
        received(data) {
          // Called when there's incoming data on the websocket for this channel
          if (data.cableReady) CableReady.perform(data.operations);
        },
      }
    );
  }
}
