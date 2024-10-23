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
export type OrganisationSource = Tables<'organisation_source'>;
export type Person = Tables<'person'>;
export type PersonMoment = Tables<'person_moment'>;
export type PersonMemberOf = Tables<'person_member_of'>;
export type Place = Tables<'place'>;
export type Source = Tables<'source'>;

export type KPRecord = Donation | Event | Organisation | Person | Place;
