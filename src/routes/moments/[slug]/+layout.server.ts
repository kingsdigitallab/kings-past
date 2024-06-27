import { error } from '@sveltejs/kit';
import { getRecordsBy, supabase } from '$lib/supabase';

export async function load({ params }) {
	try {
		const momentPeople = await supabase
			.from('person_moment')
			.select('')
			.eq('moment', parseInt(params.slug))
			.order('person');

		return {
			momentPeople: momentPeople.data,
			people: await getRecordsBy('person', 'slug')
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
