import { dev } from '$app/environment';

export const title = "King's Past";
export const description = "King's Past description";
export const url = dev ? 'https://localhost:5173/' : 'https://kingspast.kcl.ac.uk/';

export const nav = [
	{ title: 'About', url: '/about' },
	{ title: 'Moments', url: '/moments' },
	{ title: 'Database', url: '/database' },
	{ title: 'Search', url: '/search' }
];

export const hero = {
	title: "Discover the past of King's College London to help shape the future",
	message:
		'Explore the multiple histories of King's College London, and their complex connections to life in London, Britain and across the world.'
};

export const momentsHeader = {
	title: 'The 13 Moments',
	message: 'Explore the pivotal moments in King’s College history'
};

export const database = {
	excerpt:
		'A comprehensive database of King’s College London’s historical events, artifacts, and significant figures.',
	tags: 'database, donations, events, organisations, people, places',
	donations: {
		href: '/donations',
		excerpt: 'Explore the donations made to King’s.',
		tags: 'database, donations'
	},
	events: {
		href: '/events',
		excerpt: 'Explore the events associated with King’s.',
		tags: 'database, events'
	},
	organisations: {
		href: '/organisations',
		excerpt: 'Explore the organisations that King’s has been associated with.',
		tags: 'database, organisations'
	},
	people: {
		href: '/people',
		excerpt: 'Explore the lives of the people who helped shape King’s.',
		tags: 'database, people'
	},
	places: {
		href: '/places',
		excerpt: 'Explore the places associated with King’s.',
		tags: 'database, places'
	}
};

export const footer = {
	links: [
		{ title: 'Department of History', url: 'https://www.kcl.ac.uk/history' },
		{ title: 'Accessibility statement', url: '/accessibility-statement' },
		{ title: 'Privacy policy', url: '/privacy-policy' }
	],
	social: [
		{
			title: 'Instagram',
			url: 'https://instagram.com/kingspastkcl',
			icon: 'Instagram',
			label: "Link to the King's Past instagram account"
		},
		{
			title: 'Twitter',
			url: 'https://twitter.com/kingshistory',
			icon: 'Twitter',
			label: "Link to the King's College History department twitter account"
		}
	]
};

export const EMPTY_PLACEHOLDER = 'Unknown';
