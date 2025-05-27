#let validate-recipient(rec) = {
  for key in ("name", "address", "city", "zip") {
    if not key in rec {
      panic("Missing required field in recipient: " + key)
    }
  }
}

#let validate-sender(sen) = {
  for key in ("name", "email") {
    if not key in sen {
      panic("Missing required field in sender: " + key)
    }
  }
}

// This function gets your whole document as its `body`
// and formats it as a simple letter.
#let letter(
  // The letter's sender, which is display at the top of the page.
  sender: none,

  // The letter's recipient, which is displayed close to the top.
  recipient: none,

  // The date, displayed to the right.
  date: datetime.today(),

  // The subject line.
  subject: none,

  // The letter's content.
  body
) = {
  // Check if the recipient and sender have all necessary information.
  validate-recipient(recipient)
  validate-sender(sender)
  // Configure page and text properties.
  set page(margin: (top: 44.7mm, left: 20mm, right: 20mm))
  set page(
    footer: [
      #set text(7pt)
      #stack(
      dir: ltr,
      spacing: 1fr,
      stack(
        spacing: 0.5em,
       [*Technical University of Munich*],
       [Applied Education Technologies]
      ),
      stack(
        spacing: 0.5em,
       [#sender.name],
       [Boltzmannstr. 3, D-85748 Garching]
      ),
      stack(
        spacing: 0.5em,
       link("mailto:"+sender.email)[#sender.email],
       link("https://aet.cit.tum.de")[https://aet.cit.tum.de]
      ),
    )]
  )
  // Folding marks
  set page(
    background: {
      place(top + left, dx: 5mm, dy: 87mm, line(
            length: 2.5mm,
            stroke: 0.25pt + black
        ))
        
        // folding mark 2
        place(top + left, dx: 5mm, dy: 87mm + 105mm, line(
            length: 2.5mm,
            stroke: 0.25pt + black
        ))
    }
  )
  set par(justify: true)
  set text(font: "New Computer Modern", lang: "de", size: 12pt)

  // Display the image in the top right corner
  place(
    right + top,
    dy: -27mm,
    image("logo.png", width: 2cm)
  )

  // Display recipient.
  stack(
    dir: ttb,
    spacing: 0.7em,
    [An #recipient.anrede],
    recipient.name,
    recipient.address,
    [#recipient.zip #recipient.city],
    if "country" in recipient {
      recipient.country
    } else {
      none
    },
  )

  place(
    right,
    [München, #date.display("[day]. [month repr:long] [year]")],
  )

  v(31.46mm)

  // Add the subject line, if any.
  if subject != none {
    pad(right: 10%, bottom: 0.5cm, text(subject, size: 14pt, weight: "bold"))
  }
  v(2em)

  // Add body and name.
  body
  v(2em)
  sender.name
}