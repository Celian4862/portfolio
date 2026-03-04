<script lang="ts">
	const baseUrl = 'https://github.com/Celian4862/';
	const buildUrls = (links: Array<{ name: string; href: string }>) =>
		links
			.sort((a, b) => a.name.toLowerCase().localeCompare(b.name.toLowerCase()))
			.map((link) => ({
				name: link.name,
				href: new URL(link.href, baseUrl)
			}));

	const headers = ['Projects', 'Practice', 'Experimentation'];

	const projects = [
		{ name: 'Açaí (Adaptive Community-Assisted Infrastructure)', href: 'acai' },
		{ name: 'Portfolio', href: 'portfolio' },
		{ name: 'CiviClick', href: 'CiviClick' },
		{ name: 'Flappy Bird', href: 'flappy-bird' }
	].map((link) => ({
		name: link.name,
		href: new URL(link.href, baseUrl)
	}));
	projects.push({
		name: 'PhilNITS Vault',
		href: new URL('usc-cisco/philnits-vault', 'https://github.com/')
	});
	projects.push({
		name: 'Wealth Link',
		href: new URL('RaleLeaf/WealthLink', 'https://github.com/')
	});
	projects.sort((a, b) => a.name.toLowerCase().localeCompare(b.name.toLowerCase()));

	const practice = buildUrls([
		{ name: 'Spring Boot 2025.06.24', href: 'appdev-20250624' },
		{ name: 'Spring Boot 2025.07.09', href: 'appdev-20250709' },
		{ name: 'A86', href: 'a86-explorations' },
		{ name: 'CADCOMM', href: 'cadcomm' },
		{ name: 'Next.js Dashboard', href: 'learn-nextjs' },
		{ name: 'Android 2025.03.24', href: 'mob-dev-2025-03-24' },
		{ name: 'Android practice', href: 'MobileDev' },
		{ name: 'QR Code Component (Frontend Mentor)', href: 'qr-code-component' },
		{ name: 'SQLite Activity (Spring Boot)', href: 'sqlite-activity' },
		{ name: 'Ticket App (Android)', href: 'Ticket-App' }
	]);

	const experiments = buildUrls([
		{ name: 'C', href: 'c' },
		{ name: 'C++', href: 'cpp-explorations' },
		{ name: 'Rust', href: 'rust-explorations' },
		{ name: 'Web', href: 'web-dev-explorations' }
	]);

	const rows: { [key: string]: { name: string; href: URL } }[] = practice.map((prac, index) => ({
		project: projects[index] || null,
		practice: prac,
		experiment: experiments[index] || null
	}));
</script>

<h1 class="text-3xl font-bold">
	<a href={`${baseUrl}`} target="_blank" rel="noopener">Celian4862's</a> Software Development Portfolio
</h1>
<table>
	<thead>
		<tr class="border-b border-black">
			{#each headers as header}
				<th class="p-5 text-center">{header}</th>
			{/each}
		</tr>
	</thead>
	<tbody>
		{#each rows as row}
			<tr>
				<td class="px-5">
					{#if row.project}
						- <a href={row.project.href.toString()} target="_blank" rel="nooperner"
							>{row.project.name}</a
						>
					{/if}
				</td>
				<td class="px-5">
					{#if row.practice}
						- <a href={row.practice.href.toString()} target="_blank" rel="nooperner"
							>{row.practice.name}</a
						>
					{/if}
				</td>
				<td class="px-5">
					{#if row.experiment}
						- <a href={row.experiment.href.toString()} target="_blank" rel="nooperner"
							>{row.experiment.name}</a
						>
					{/if}
				</td>
			</tr>
		{/each}
	</tbody>
</table>
