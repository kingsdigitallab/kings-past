<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';
	import IndexCards from '$lib/components/IndexCards.svelte';
	import {
		nameColumn,
		alternativeNamesColumn,
		statusColumn,
		hasDescriptionColumn
	} from '$lib/tableColumns';
	import { LucideTable, LucideLayoutGrid } from 'lucide-svelte';

	export let data;

	const label = 'people';
	const { people, url } = data;

	let viewMode: 'table' | 'cards' = 'table';

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

<svelte:head>
	<title>People | {config.title}</title>
</svelte:head>

<article>
	<header>
		<hgroup>
			<h1>People</h1>
			<p>
				This page displays a table of people, with columns for their slug, name, alternative names,
				gender, nationality, ethnicity, language, description status, and current status. The table
				is sortable by clicking on column headers.
			</p>
		</hgroup>
	</header>

	<section>
		<h2>Summary</h2>
		<p>
			The database currently contains <strong>{people.length.toLocaleString()}</strong> documented peoplem,
			with the following characteristics:
		</p>

		<h3>Completeness</h3>
		<ul>
			<li>
				<strong>{descriptionCount.toLocaleString()}</strong> ({descriptionPercentage}%) have
				biographical information
			</li>
			<li>
				<strong>{alternativeNamesCount.toLocaleString()}</strong> ({alternativeNamesPercentage}%)
				have recorded alternative names
			</li>
		</ul>
		<h3>Gender distribution</h3>
		<ul>
			{#each genderDistribution as { gender, count, percentage }}
				<li>
					<strong>{count.toLocaleString()}</strong> ({percentage}%) <em>{gender}</em>
				</li>
			{/each}
		</ul>
		<h3>Ethnicity distribution</h3>
		<ul>
			{#each ethnicityDistribution as { ethnicity, count, percentage }}
				<li>
					<strong>{count.toLocaleString()}</strong> ({percentage}%) <em>{ethnicity}</em>
				</li>
			{/each}
		</ul>
		<h3>Nationality distribution</h3>
		<p>
			The database includes people from <strong>{nationalityCount.toLocaleString()}</strong>
			distinct nationalities.
		</p>
	</section>

	<section>
		<div class="view-toggle">
			<button class:active={viewMode === 'table'} on:click={() => (viewMode = 'table')}
				><LucideTable />Table view</button
			>
			<button class:active={viewMode === 'cards'} on:click={() => (viewMode = 'cards')}
				><LucideLayoutGrid />Card view</button
			>
		</div>

		{#if viewMode === 'table'}
			<IndexTable data={people} {label} {columns} {sortBy} {url} />
		{:else}
			<IndexCards data={people} {columns} {url} />
		{/if}
	</section>
</article>

<style>
	section p {
		max-inline-size: unset;
	}
	.view-toggle {
		margin-bottom: 1rem;
	}

	.view-toggle button {
		padding: 0.5rem 1rem;
		margin-right: 0.5rem;
		background-color: #f0f0f0;
		border: none;
		border-radius: 4px;
		cursor: pointer;
	}

	.view-toggle button.active {
		background-color: #007bff;
		color: white;
	}
</style>
