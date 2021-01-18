//import CableReady from "cable_ready";
//import consumer from "./consumer";

/*consumer.subscriptions.create("ProductsChannel", {
  received(data) {
    // Called when there's incoming data on the websocket for this channel
    if (data.cableReady) CableReady.perform(data.operations);
  },
});*/

// The contents of this file are moved to the stimulus controller to prevent cable ready broadcasts being sent to any other page besides index.
