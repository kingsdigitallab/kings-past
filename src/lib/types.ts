import type { Database, Tables } from './supabase/types';

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

export type TableNames = keyof Database['public']['Tables'];

export type Donation = Tables<'donation'>;
export type Event = Tables<'event'>;
export type Organisation = Tables<'organisation'>;
export type Person = Tables<'person'>;
export type PersonMoment = Tables<'person_moment'>;
export type Place = Tables<'place'>;

export type KPRecord = Donation | Event | Organisation | Person | Place;
