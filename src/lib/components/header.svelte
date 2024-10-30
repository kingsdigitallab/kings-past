<script lang="ts">
	import * as config from '../config';
	import kclLogo from '$images/kcl.png';

	import { base } from '$app/paths';
	import { page } from '$app/stores';
</script>

<header>
	<div class="layout surface-2">
		<nav>
			<a href="{base}/" class="title">
				{config.title}
			</a>
			<input class="menu-btn" type="checkbox" id="menu-btn" />
			<label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
			<ul class="links">
				{#each config.nav as item}
					<li>
						<a
							href="{base}{item.url}"
							class:active={$page.url.pathname.startsWith(`${base}${item.url}`)}>{item.title}</a
						>
					</li>
				{/each}
			</ul>
		</nav>
		<img src={kclLogo} alt="King's College London logo" />
	</div>
</header>

<style>
	header {
		height: var(--header-height);
		width: 100%;
	}

	.layout {
		display: flex;
		height: 100%;
		justify-content: space-between;
		padding-block: var(--header-padding-block);
		padding-inline: var(--header-padding-inline);
	}

	nav {
		display: flex;
		justify-content: space-between;
		margin-right: var(--size-5);
		width: 100%;
	}

	.title {
		font-family: var(--font-headings);
		font-size: var(--font-size-5);
	}

	.links {
		align-items: center;
		display: flex;
		margin-left: auto;
		gap: var(--size-5);
	}

	a {
		text-decoration: none;
	}

	img {
		height: 8em;
		margin-top: calc(-1 * var(--size-2));
		z-index: var(--layer-1);
	}

	header .menu-icon {
		display: none;
	}
	header .menu-btn {
		display: none;
	}

	@media (max-width: 992px) {
		.title {
			font-size: var(--font-size-4);
		}
	}

	@media (max-width: 768px) {

		section.hero{
			margin: var(-size-4) 0;
		}

		img {
			height: 4em;
			margin-top: calc(-1 * var(--size-1));
			position: absolute;
			right: 0;
			top: 0;
		}
		nav {
			display: block;
			z-index: 1;
		}

		/* menu */
		header .links {
			max-height: 0;
			transition: max-height 0.2s ease-out;
			background: var(--midnight-blue);
			display: block;
			margin-left: -10px;
			padding: 20px 30px 20px 15px;
			position: absolute;
		}

		header li {
			width: 100%;
			padding: 10px 0;
		}

		header .menu-btn ~ .links {
			max-height: 0;
			display: none;
		}
		/* menu icon */

		header .menu-icon {
			cursor: pointer;
			display: inline-block;
			padding: 28px 20px;
			position: absolute;
			right: 85px;
			top: -5px;
			user-select: none;
		}

		header .menu-icon .navicon {
			background: white;
			display: block;
			height: 2px;
			position: relative;
			transition: background 0.2s ease-out;
			width: 18px;
		}

		header .menu-icon .navicon:before,
		header .menu-icon .navicon:after {
			background: white;
			content: '';
			display: block;
			height: 100%;
			position: absolute;
			transition: all 0.2s ease-out;
			width: 100%;
		}

		header .menu-icon .navicon:before {
			top: 5px;
		}

		header .menu-icon .navicon:after {
			top: -5px;
		}

		/* menu btn */

		header .menu-btn:checked ~ .links {
			max-height: 240px;
			display: block;
			width: 100%;
		}

		header .menu-btn:checked ~ .menu-icon .navicon {
			background: transparent;
		}

		header .menu-btn:checked ~ .menu-icon .navicon:before {
			transform: rotate(-45deg);
		}

		header .menu-btn:checked ~ .menu-icon .navicon:after {
			transform: rotate(45deg);
		}

		header .menu-btn:checked ~ .menu-icon:not(.steps) .navicon:before,
		header .menu-btn:checked ~ .menu-icon:not(.steps) .navicon:after {
			top: 0;
		}

		/* 48em = 768px */
	}
</style>
