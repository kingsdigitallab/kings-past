import { dev } from '$app/environment';

export const title = "King's Past";
export const description = "King's Past description";
export const url = dev ? 'https://localhost:5173/' : 'https://kings-past.kcl.ac.uk/';

export const nav = [
	{ title: 'About', url: '/about' },
	{ title: 'Moments', url: '/moments' },
];

export const hero = {
	title: ['Discover the Hidden History of', "King's College London Over", '190 Years'],
	message:
		'Explore the most important moments that shaped King’s College  and discover the individuals, organisations, and themes that influenced its journey.'
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
			url: 'https://www.instagram.com/',
			icon: 'Instagram',
			label: "Link to the King's Past instagram account"
		},
		{
			title: 'Twitter',
			url: 'https://www.twitter.com/',
			icon: 'Twitter',
			label: "Link to the King's Past twitter account"
		}
	]
};
