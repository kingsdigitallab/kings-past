import { dev } from '$app/environment';

export const title = "King's Past";
export const description = "King's Past description";
export const url = dev ? 'https://localhost:5173/' : 'https://kings-past.kcl.ac.uk/';

export const nav = [
	{ title: 'About', url: '/about' },
	{ title: 'Moments', url: '/moments' },
	{ title: 'Database', url: '/database' }
];

export const hero = {
	title: "Discover the past of King's College London to help shape the future",
	message:
		'Explore the most important moments that shaped King’s College  and discover the individuals, organisations, and themes that influenced its journey.'
};

export const entityTypesMapping: Record<string, string> = {
	donations: 'donation',
	events: 'event',
	organisations: 'organisation',
	people: 'person',
	places: 'place'
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
