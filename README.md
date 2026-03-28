# King's Past Project

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/kingsdigitallab/kings-past/kings-past)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/kingsdigitallab/kings-past/kings-past)

[![Open in Codeanywhere](https://codeanywhere.com/img/open-in-codeanywhere-btn.svg)](https://app.codeanywhere.com/#https://github.com/kingsdigitallab/kings-past/kings-past)


The King's Past project explores the most important moments that shaped
[King's College London](https://www.kcl.ac.uk/) and discovers the individuals,
organisations, and themes that influenced its journey. Through a comprehensive
digital archive, it connects historical records, people, places, and events.

## Technical Overview

The project is built with modern web technologies focused on performance,
accessibility, and maintainability:

### Core Technologies

- [SvelteKit](https://kit.svelte.dev/) - Web application framework
- [Schema.org](https://schema.org/) - Data model for content structure
- [Supabase](https://supabase.com/) - PostgreSQL database

### UI and Styling

- [Open Props](https://open-props.style/) - CSS custom properties
- [Lucide](https://lucide.dev/) - Icon set
- [Unpic](https://unpic.pics/img/svelte/) - Image optimisation

### Content and Data

- [Mdsvex](https://mdsvex.pngwn.io) - Markdown support with Svelte components
- [Svelte Headless Table](https://svelte-headless-table.bryanmylee.com) - Data tables
- [MapLibre GL](https://maplibre.org/) - Map visualization
- [Pagefind](https://pagefind.app/) - Static search indexing

### Deployment

- Static site generation for optimal performance and reduced environmental impact
- Easy deployment to any static hosting platform

## Project Structure

The project structure is as follows:

```text
├── .frontmatter/   # Frontmatter content types
├── frontmaid/      # Small utility to generate ER data models from frontmatter content types
├── scripts/        # Utility scripts
├── src/            # Main project source code
│ ├── lib/          # Utility functions and types
│ │ └── assets/     # Static assets such as stylesheets and images
│ ├── components/   # Svelte components
│ ├── supabase/     # Supabase client, functions and types
│ │ └── routes/     # SvelteKit routes
│ └── static/       # Static assets for the production build
└── supabase/       # Supabase project files
```

## Development Setup

### Prerequisites

- [Node.js](https://nodejs.org/) version 20 or higher
- [Supabase CLI](https://supabase.com/docs/guides/cli) (optional, for local development)

### Environment Variables

Create a `.env` file in the root directory with the following variables:

```bash
SUPABASE_URL=your_supabase_project_url
SUPABASE_KEY=your_supabase_anon_key
```

### Installation

1. Install dependencies:

```bash
npm install
```

1. Set up git hooks:

```bash
npx simple-git-hooks
```

### Development Server

1.Start the development server:

```bash
npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

1. Generate the search index:

```bash
npm run build:pagefind
```

## Deployment

### Building for Production

1. Create a production build:

```bash
npm run build
```

1. Generate the search index:

```bash
npm run build:pagefind
```

1. Or run both commands together:

```bash
npm run build:all
```

### Preview Production Build

To preview the production build locally:

```bash
npm run preview
```

## Data model

The data model was automatically generated from the frontmatter content types,
unsing the frontmaid package in this repository.

```mermaid
erDiagram
  languages {
  }
  occupations {
  }
  placeTypes {
  }
  FeatureImageFields {
    feature__image image
    feature__title string
    feature__description string
  }
  GeoCoordinatesFields {
    geoCoordinates__latitude number
    geoCoordinates__longitude number
  }
  URLFields {
    name string
    url string
  }
  default {
    title string
    slug slug
    type string
    excerpt string
    feature__image image
    feature__title string
    feature__description string
    tags tags
  }
  donation ||--|| organisation: recipient
  donation ||--|| person: agent
  donation {
    title string
    slug slug
    price number
    priceCurrency string
    startTime string
    endTime string
  }
  event ||--o{ person: attendeePerson
  event ||--o{ organisation: attendeeOrganisation
  event ||--|| place: location
  event ||--|| URLFields: url
  event {
    title string
    slug slug
    startDate string
    endDate string
    tags tags
  }
  moment ||--o{ theme: themes
  moment {
    title string
    slug slug
    type string
    excerpt string
    feature__image image
    feature__title string
    feature__description string
    tags tags
  }
  organisation ||--|| place: location
  organisation ||--|| URLFields: url
  organisation ||--|| languages: knowsLanguage
  organisation ||--o{ person: funder
  organisation ||--o{ organisation: memberOf
  organisation ||--o{ moment: subjectOfMoment
  organisation ||--o{ theme: subjectOfTheme
  organisation {
    title string
    slug slug
    type string
    alternateName string
    foundingDate number
    dissolutionDate number
    feature__image image
    feature__title string
    feature__description string
    tags tags
  }
  person ||--|| URLFields: url
  person ||--|| languages: knowsLanguage
  person ||--|| occupations: hasOccupation
  person ||--o{ person: knows
  person ||--o{ organisation: memberOf
  person ||--o{ moment: subjectOfMoment
  person ||--o{ theme: subjectOfTheme
  person {
    title string
    slug slug
    type string
    alternateName string
    feature__image image
    feature__title string
    feature__description string
    tags tags
  }
  place ||--|| placeTypes: additionalType
  place ||--|| URLFields: url
  place {
    title string
    slug slug
    alternateName string
    type string
    geoCoordinates__latitude number
    geoCoordinates__longitude number
    feature__image image
    feature__title string
    feature__description string
    tags tags
  }
  theme {
    title string
    slug slug
    type string
    feature__image image
    feature__title string
    feature__description string
    tags tags
  }
```
