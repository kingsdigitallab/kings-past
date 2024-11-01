<script lang="ts">
	import * as config from '$lib/config';
	import EntityIndex from '$lib/components/EntityIndex.svelte';
	import {
		nameColumn,
		alternativeNamesColumn,
		statusColumn,
		hasDescriptionColumn
	} from '$lib/tableColumns';
	import { LucideTable, LucideLayoutGrid } from 'lucide-svelte';

	export let data;

	const label = 'people';
	const { _metadata, people, url } = data;

	const columns = [
		{ header: 'Slug', accessor: 'slug' },
		nameColumn,
		alternativeNamesColumn,
		{
			header: 'Gender',
			accessor: 'gender',
			cell: ({ value }: { value: string }) => value ?? config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return (item || '').toLowerCase();
					}
				}
			}
		},
		{
			header: 'Nationality',
			accessor: 'nationality',
			cell: ({ value }: { value: string }) => value ?? config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return (item || '').toLowerCase();
					}
				}
			}
		},
		{
			header: 'Ethnicity',
			accessor: 'ethnicity',
			cell: ({ value }: { value: string }) => value ?? config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return (item || '').toLowerCase();
					}
				}
			}
		},
		{
			header: 'Language',
			accessor: 'language',
			cell: ({ value }: { value: string }) => value ?? config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return (item || '').toLowerCase();
					}
				}
			}
		},
		hasDescriptionColumn,
		statusColumn
	];
	const sortBy = { initialSortKeys: [{ id: 'name', order: 'asc' }] };

	let view: 'cards' | 'table' = 'cards';

	function toggleView() {
		view = view === 'table' ? 'cards' : 'table';
	}

	$: descriptionCount = people.filter((p) => p.description).length;
	$: descriptionPercentage = ((descriptionCount / people.length) * 100).toFixed(1);
	$: alternativeNamesCount = people.filter((p) => p.alternative_names).length;
	$: alternativeNamesPercentage = ((alternativeNamesCount / people.length) * 100).toFixed(1);

	$: genderDistribution = Object.entries(
		people.reduce(
			(acc, p) => {
				const gender = p.gender ?? config.EMPTY_PLACEHOLDER;
				acc[gender] = (acc[gender] || 0) + 1;
				return acc;
			},
			{} as Record<string, number>
		)
	)
		.map(([gender, count]: [string, number]) => ({ gender, count }))
		.sort((a, b) => a.gender.localeCompare(b.gender))
		.map((item) => ({
			...item,
			percentage: ((item.count / people.length) * 100).toFixed(1)
		}));

	$: nationalityCount = [...new Set(people.map((p) => p.nationality))].filter(Boolean).length;

	$: ethnicityDistribution = Object.entries(
		people.reduce(
			(acc, p) => {
				const ethnicity = p.ethnicity ?? config.EMPTY_PLACEHOLDER;
				acc[ethnicity] = (acc[ethnicity] || 0) + 1;
				return acc;
			},
			{} as Record<string, number>
		)
	)
		.map(([ethnicity, count]: [string, number]) => ({ ethnicity, count }))
		.sort((a, b) => a.ethnicity.localeCompare(b.ethnicity))
		.map((item) => ({
			...item,
			percentage: ((item.count / people.length) * 100).toFixed(1)
		}));
</script>

<article>
	<header>
		<hgroup>
			<h1>People</h1>
			<p>{_metadata.excerpt}</p>
		</hgroup>
	</header>

	<section>
		<h2>Summary</h2>
		<p>
			The database currently contains <strong>{people.length.toLocaleString()}</strong> documented people,
			with the following characteristics:
		</p>

		<h3>Completeness</h3>
		<ul>
			<li>
				<strong>{descriptionCount.toLocaleString()}</strong>
				({descriptionPercentage}%) have biographical information
			</li>
			<li>
				<strong>{alternativeNamesCount.toLocaleString()}</strong>
				({alternativeNamesPercentage}%) have recorded alternative names
			</li>
		</ul>
		<h3>Gender distribution</h3>
		<ul>
			{#each genderDistribution as { gender, count, percentage }}
				<li>
					<strong>{count.toLocaleString()}</strong> ({percentage}%)
					<em>{gender}</em>
				</li>
			{/each}
		</ul>
		<h3>Ethnicity distribution</h3>
		<ul>
			{#each ethnicityDistribution as { ethnicity, count, percentage }}
				<li>
					<strong>{count.toLocaleString()}</strong> ({percentage}%)
					<em>{ethnicity}</em>
				</li>
			{/each}
		</ul>
		<h3>Nationality distribution</h3>
		<p>
			The database includes people from <strong>{nationalityCount.toLocaleString()}</strong>
			distinct nationalities.
		</p>
	</section>

	<section class="view-toggle">
		<button class:active={view === 'cards'} on:click={toggleView} aria-label="Show card view">
			<LucideLayoutGrid size={24} />
			<span>Show cards</span>
		</button>
		<button class:active={view === 'table'} on:click={toggleView} aria-label="Show table view">
			<LucideTable size={24} />
			<span>Show table</span>
		</button>
	</section>

	<EntityIndex data={people} {columns} {label} {sortBy} {url} {view} />
</article>

<style>
	section p {
		max-inline-size: unset;
	}

	.view-toggle {
		align-items: center;
		border-bottom: 1px solid var(--border-light);
		display: flex;
		gap: var(--size-2);
		margin-bottom: var(--section-margin-block);
	}

	.view-toggle button {
		color: var(--text-1);
		background-color: var(--surface-4);
		display: flex;
		align-items: center;
		gap: var(--size-2);
		padding: var(--size-2) var(--size-4);
		border: none;
		cursor: pointer;
		transition: background-color 0.3s ease;
	}

	.view-toggle button.active {
		background-color: var(--surface-2);
		color: var(--text-2);
	}

	.view-toggle button span {
		font-size: var(--font-size-2);
	}
</style>
