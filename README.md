# King's Past

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/kingsdigitallab/kings-past/tree/develop)

## Set up

### Dependencies

- [Node](https://nodejs.org/) 20

Install the node packages:

```bash
npm install
```

Install the git hooks:

```bash
npx simple-git-hooks
```

## Developing

```bash
npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

## Building

To create a production version of your app:

```bash
npm run build
```

You can preview the production build with `npm run preview`.

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
