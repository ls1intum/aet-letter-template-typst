# AET Chair Letter Template

A professional letter template for the Chair of Applied Education Technologies (AET) at the Technical University of Munich (TUM), created using Typst.

## Overview

This template provides a standardized format for official correspondence from the AET Chair, ensuring consistent institutional branding, proper formatting, and compliance with university communication standards.

## Features

- **Professional Layout**: Clean, academic letter format suitable for official correspondence
- **TUM/AET Branding**: Integrated institutional logo and contact information
- **German Standards**: Proper German letter formatting with folding marks and date locale
- **Flexible Content**: Easy customization for various letter types (recommendations, invitations, notifications)
- **Validation**: Built-in field validation to ensure complete recipient and sender information
- **PDF Output**: Ready-to-print professional documents

## Files Structure

```
├── template.typ     # Core template with formatting functions
├── main.typ        # Example implementation
├── logo.png        # Official TUM/AET logo
├── main.pdf        # Generated sample output
└── README.md       # This documentation
```

## Quick Start

1. **Import the template**:
   ```typ
   #import "template.typ": *
   ```

2. **Configure sender information** (AET Chair details):
   ```typ
   #let sender = (
     name: "Prof. Dr. Your Name",
     email: "your.email@tum.de",
   )
   ```

3. **Define recipient**:
   ```typ
   #let recipient = (
     anrede: "Sehr geehrte Damen und Herren",
     name: "Name des Empfängers",
     address: "Straße und Hausnummer",
     city: "Stadt",
     zip: "PLZ",
     country: "Deutschland", // Optional for domestic mail
   )
   ```

4. **Apply the template**:
   ```typ
   #show: letter.with(
     sender: sender,
     recipient: recipient,
     subject: "Betreff des Briefes",
   )
   ```

5. **Write your letter content** below the template configuration.

## Usage Examples

### Academic Recommendation Letter
```typ
#let subject = "Empfehlungsschreiben für Studentische Hilfskraft"
```

### Conference Invitation
```typ
#let subject = "Einladung zur AET Jahreskonferenz 2025"
```

### Official Notification
```typ
#let subject = "Mitteilung bezüglich Forschungsprojekt"
```

## Required Information

### Sender (AET Chair)
| Field | Description | Required |
|-------|-------------|----------|
| `name` | Full academic title and name | ✓ |
| `email` | Official TUM email address | ✓ |

### Recipient
| Field | Description | Required |
|-------|-------------|----------|
| `anrede` | Formal salutation | ✓ |
| `name` | Full name or organization | ✓ |
| `address` | Street address | ✓ |
| `city` | City name | ✓ |
| `zip` | Postal code | ✓ |
| `country` | Country (for international mail) | Optional |

## Compilation

Generate your letter PDF using Typst:

```bash
# Compile to PDF
typst compile main.typ

# Watch for changes and auto-compile
typst watch main.typ
```

## Customization

The template can be customized for specific needs:

- **Fonts**: Modify typography settings in `template.typ`
- **Margins**: Adjust page layout parameters
- **Footer**: Update AET contact information
- **Logo**: Replace with updated institutional branding

## AET Chair Information

This template includes pre-configured contact information for the AET Chair:

**Chair of Applied Education Technologies**  
Technical University of Munich  
Arcisstraße 21  
80333 München  
Germany

For template updates or questions, contact the AET administration.

## License

This template is provided for official use by the AET Chair and affiliated researchers. Please ensure compliance with TUM branding guidelines when using this template.

---

*Technical University of Munich - Chair of Applied Education Technologies*