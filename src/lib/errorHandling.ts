import { error } from '@sveltejs/kit';

export function handleLoadError(slug: string, e: unknown): never {
	if (e instanceof Error) {
		throw error(404, `Could not load ${slug}: ${e.message}`);
	} else {
		throw error(404, `Could not load ${slug}: An unknown error occurred`);
	}
}
