```dataviewjs // PS. remove backslash \ at the very beginning
dv.span("** Title **") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
const calendarData = {
	//year: 2025,  // (optional) defaults to current year
	colors: {    // (optional) defaults to green
		green: ["#196127", "#2e8840", "#49af5d", "#7bc96f", "#c6e48b"],
		red: ["#bd2a00", "#e73400","#ff4d1a","#ff7b55","#ff9e82"],
		blue: ["#0058e2", "#1872ff", "#428bff", "#69a3ff", "#8cb9ff"],
		orangeToRed: ["#ff2c01", "#ff6d02", "#ff9a03", "#ffbe04", "#ffdf04"],
        fucsia: ["#9000A3", "#B900D1", "#E100FF", "#EC5CFF", "#F18AFF"],
		blue_indigo: ["#2E00A3", "#3B00D1", "#4800FF", "#8A5CFF", "#AB8AFF"],
		orange: ["#9b4e00", "#bf6000", "#dd6f00", "#fd7f00", "#ffa244"],
		pink: ["#c30062", "#ee0077", "#ff3a9d", "#ff70b8", "#ff96cb"],
	},
	//showCurrentDayBorder: true, // (optional) defaults to true
	//defaultEntryIntensity: 4,   // (optional) defaults to 4
	//intensityScaleStart: 10,    // (optional) defaults to lowest value passed to entries.intensity
	//intensityScaleEnd: 100,     // (optional) defaults to highest value passed to entries.intensity
	entries: [],
}

for (let page of dv.pages('"♦SuferBrainstorming"').where(p => p.<attribute>)) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.<attribute>,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```
