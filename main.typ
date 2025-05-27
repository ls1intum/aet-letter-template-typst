#import "template.typ": *

#let recipient = (
  anrede: "Anrede",
  name: "Titel Vorname Nachname",
  address: "Straße Hausnummer",
  city: "Stadt",
  zip: "PLZ",
  // country: "Land",
)

#let sender = (
  name: "Max Mustermann",
  email: "email@tum.de",
)

#show: letter.with(
  sender: sender,
  recipient: recipient,
  subject: "Betreff",
)

Sehr geehrte Damen und Herren,

#v(1em)

// TODO here you can add your text
#lorem(200)

#v(1em)

Mit freundlichen Grüßen,