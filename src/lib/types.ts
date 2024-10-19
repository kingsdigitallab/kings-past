import type { Database } from './supabase/types';

export type Feature = {
	image: string;
	title: string;
	description: string;
};

export type Moment = {
	title: string;
	n: number;
	slug: string;
	type: string;
	excerpt: string;
	feature: Feature;
	tags: string[];
};

export type Person = Database['public']['Tables']['person']['Row'];
export type Place = Database['public']['Tables']['place']['Row'];
