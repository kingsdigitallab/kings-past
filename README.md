# kings-past

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/kingsdigitallab/kings-past/tree/develop)

## Set up

### Dependencies

- [Node](https://nodejs.org/) 18

Install the node packages:

```bash
npm install
```

Install the git hooks:

```bash
npx simple-git-hooks
```

## Run the project

```bash
npm run frontend:dev
```

## Data model

The data model was automatically generated from the frontmatter content types,
unsing the frontmaid package in this repository.

```mermaid
erDiagram
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
    excerpt string
    tags tags
    feature__image image
    feature__title string
    feature__description string
    type string
  }
  donation ||--|| organisation: recipient
  donation ||--|| person: agent
  donation {
    price number
    priceCurrency string
    startTime number
    endTime number
  }
  event ||--o{ person: attendeePerson
  event ||--o{ organisation: attendeeOrganisation
  event ||--|| place: location
  event ||--|| URLFields: url
  event {
    title string
    startDate datetime
    endDate datetime
    tags tags
  }
  moment ||--o{ theme: themes
  moment {
    title string
    slug slug
    excerpt string
    tags tags
    feature__image image
    feature__title string
    feature__description string
    type string
  }
  organisation ||--|| place: location
  organisation ||--|| URLFields: url
  organisation ||--o{ person: funder
  organisation ||--o{ organisation: memberOf
  organisation {
    title string
    slug slug
    alternateName string
    foundingDate number
    dissolutionDate number
    tags tags
    feature__image image
    feature__title string
    feature__description string
    type string
  }
  person ||--o{ URLFields: url
  person ||--o{ person: knows
  person ||--o{ organisation: memberOf
  person {
    title string
    slug slug
    alternateName string
    tags tags
    feature__image image
    feature__title string
    feature__description string
    type string
  }
  place ||--|| URLFields: url
  place {
    title string
    alternateName string
    geoCoordinates__latitude number
    geoCoordinates__longitude number
    tags tags
    feature__image image
    feature__title string
    feature__description string
    type string
  }
  theme {
    title string
    tags tags
    feature__image image
    feature__title string
    feature__description string
    feature__type string
  }
```
