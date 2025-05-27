# AET Typst Letter Template

A professional letter template for the Applied Education Technologies (AET) department at the Technical University of Munich, created using Typst.

## Overview

This template provides a standardized format for official letters from the AET department, including proper formatting, institutional branding, and required contact information.

## Files

- [`template.typ`](template.typ) - Main letter template with formatting functions
- [`main.typ`](main.typ) - Example letter implementation
- [`logo.png`](logo.png) - TUM/AET logo for letterhead
- [`main.pdf`](main.pdf) - Generated PDF output

## Usage

1. Import the template in your Typst document:
   ```typ
   #import "template.typ": *
   ```

2. Define recipient and sender information:
   ```typ
   #let recipient = (
     anrede: "Sehr geehrte Damen und Herren",
     name: "Name des Empfängers",
     address: "Straße und Hausnummer",
     city: "Stadt",
     zip: "PLZ",
     // country: "Land", // Optional
   )

   #let sender = (
     name: "Ihr Name",
     email: "ihre.email@tum.de",
   )
   ```

3. Apply the letter template:
   ```typ
   #show: letter.with(
     sender: sender,
     recipient: recipient,
     subject: "Betreff des Briefes",
   )
   ```

4. Write your letter content below the template setup.

## Template Features

- **Automatic formatting** with proper margins and typography
- **Institutional footer** with AET contact information
- **Logo placement** in the top-right corner
- **Folding marks** for proper letter formatting
- **Date formatting** in German locale
- **Validation** of required sender and recipient fields

## Required Fields

### Sender
- `name` - Full name
- `email` - Email address

### Recipient
- `anrede` - Salutation/greeting
- `name` - Full name
- `address` - Street address
- `city` - City name
- `zip` - Postal code
- `country` - Country (optional)

## Compilation

Compile your letter using Typst:
```bash
typst compile main.typ
```

This will generate a PDF file with your formatted letter.