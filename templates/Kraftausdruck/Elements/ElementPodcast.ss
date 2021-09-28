<% include App/Includes/ElementTitle %>
<% if not $isFullWidth %><div class="inner"><% end_if %>
<% if $Items %>
	<div class="podcasts">
		<% loop $Items %>
			<a href='{$AbsoluteLink}' class="podcast">
				<% if $Image %><figure><img height="$Image.FocusFillMax(390,390).Height()" width="$Image.FocusFillMax(390,390).Width()" src="$Image.FocusFillMax(390,390).URL" srcset="$Image.FocusFillMax(390,390).URL 1x, $HeaderImage.FocusFillMax(780,780).URL 2x" alt="$Title" /></figure><% end_if %>
				<div class="txt">
					<% if $Title %><h2>$Title</h2><% end_if %>
					<% if $Subtitle %><h3>$Subtitle</h3><% end_if %>
				</div>
				<p class="pseudolink"><%t Kraftausdruck\Elements\ElementPodcast.MORE "Zum Podcast" %></p>
			</a>
		<% end_loop %>
	</div>
<% else %>
	<div class="no-vacancies">
		{$NoPodcasts}
	</div>
<% end_if %>
$PodcastSeries.PodcastSeriesSchema.RAW
<% if not $isFullWidth %></div><% end_if %>
