using CairoMakie
using Colors

# Plotting setup
set_theme!(theme_latexfonts());
update_theme!(
	Axis=(;
		xgridvisible=false, ygridvisible=false,
		xlabelsize=16, ylabelsize=16,
		titlesize=16,
	),
)
palette = Makie.wong_colors();

darken(c, w) = RGB(c.r*w, c.g*w, c.b*w);
lighten(c, w) = RGB(1-(1-c.r)*w, 1-(1-c.g)*w, 1-(1-c.b)*w);