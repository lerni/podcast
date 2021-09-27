<% include App/Includes/ElementTitle %>
<% if not $isFullWidth %><div class="inner"><% end_if %>
<% if $Items %>
	<div class="jobs teasers">
		<% loop $Items %>
			<a href='{$AbsoluteLink}' class="podcast">
				<% if $Image %><figure><img height="$Image.FocusFillMax(340,178).Height()" width="$Image.FocusFillMax(340,178).Width()" src="$Image.FocusFillMax(340,178).URL" srcset="$Image.FocusFillMax(340,178).URL 1x, $HeaderImage.FocusFillMax(680,357).URL 2x" alt="$Title" /></figure><% end_if %>
				<div class="txt">
					<% if $Title %><h2>$Title</h2><% end_if %>
					<% if $Subtitle %><h3>$Subtitle</h3><% end_if %>
				</div>
				<p class="forth"><%t Kraftausdruck\Elements\ElementPodcast.MORE "Podcast" %></p>
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
