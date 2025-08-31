---
pertenece a:
  - "[[- ( F ) -]]"
---

```dataviewjs
dv.span("# **TIEMPO ENCAPSULADO** ⌛")
const calendarData = {
    year: 2025, // optional, remove this line to autoswitch year
    colors: {
        green: ["#196127", "#2e8840", "#49af5d", "#7bc96f", "#c6e48b"],
        red: ["#bd2a00", "#e73400","#ff4d1a","#ff7b55","#ff9e82"],
        orangeToRed: ["#ff2c01", "#ff6d02", "#ff9a03", "#ffbe04", "#ffdf04"],
        fuchsia: ["#9000A3", "#B900D1", "#E100FF", "#EC5CFF", "#F18AFF"],
		blue: ["#0058e2", "#1872ff", "#428bff", "#69a3ff", "#8cb9ff"],
		blue_indigo: ["#2E00A3", "#3B00D1", "#4800FF", "#8A5CFF", "#AB8AFF"],
		orange: ["#9b4e00", "#bf6000", "#dd6f00", "#fd7f00", "#ffa244"],
		pink: ["#c30062", "#ee0077", "#ff3a9d", "#ff70b8", "#ff96cb"],
    },
    intensityScaleEnd: 1020,
    showCurrentDayBorder: false, // (optional) defaults to true
    entries: []
}
/*
let pages = dv.pages();

for(let page of pages){
	if(page.file.folder.startsWith("♦"))
		console.log(page.file.folder);
}
console.log("QUE");


// Mostrar todos los archivos encontrados
dv.paragraph(target);
dv.paragraph("Notas encontradas: " + pages.length)
*/

const target = "400 TODO"
for(let page of dv.pages().where(p=>p["Tiempo Encapsulado"] && p.file.folder.startsWith(target + "/"))){
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
    //dv.span("<br>" + page.fecha.toFormat("yyyy-MM-dd"))
    calendarData.entries.push({
        date: page.fecha.toFormat("yyyy-MM-dd"),
        intensity: page["Tiempo Encapsulado"],
        content: await dv.span(`[](${page.file.name})`), //for hover preview
        color: "",
    })
}
renderHeatmapCalendar(this.container, calendarData)
```

```dataviewjs // PS. remove backslash \ at the very beginning
dv.span("# ** Dieta 🍖 **") /* optional ⏹️💤⚡⚠↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
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
	intensityScaleStart: 1,    // (optional) defaults to lowest value passed to entries.intensity
	intensityScaleEnd: 5,     // (optional) defaults to highest value passed to entries.intensity
	entries: [],
}
const target = "400 TODO"
for(let page of dv.pages().where(p=>p.Dieta && p.file.folder.startsWith(target + "/"))){
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.Dieta,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "orange",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```



```dataviewjs // PS. remove backslash \ at the very beginning
dv.span("** ⏹️Trinity Element **") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
const calendarData = {
	//year: 2025,  // (optional) defaults to current year
	colors: {    // (optional) defaults to green
		red: ["#bd2a00", "#e73400","#ff4d1a","#ff7b55","#ff9e82"],
        green: ["#196127", "#2e8840", "#49af5d", "#7bc96f", "#c6e48b"],
		blue: ["#0058e2", "#1872ff", "#428bff", "#69a3ff", "#8cb9ff"],
		orangeToRed: ["#ff2c01", "#ff6d02", "#ff9a03", "#ffbe04", "#ffdf04"],
        fuchsia: ["#9000A3", "#B900D1", "#E100FF", "#EC5CFF", "#F18AFF"],
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
const target = "400 TODO"
for (let page of dv.pages().where(p => p.TrinityElement && p.file.folder.startsWith(target + "/"))) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.date,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.TrinityElement,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "orange",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```

```dataviewjs // PS. remove backslash \ at the very beginning
dv.span(" # **🏋🏽[[♠WorkOut]] **") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨🏋🏽 */
const calendarData = {
	//year: 2025,  // (optional) defaults to current year
	colors: {    // (optional) defaults to green
		red: ["#bd2a00", "#e73400","#ff4d1a","#ff7b55","#ff9e82"],
        green: ["#196127", "#2e8840", "#49af5d", "#7bc96f", "#c6e48b"],
		blue: ["#0058e2", "#1872ff", "#428bff", "#69a3ff", "#8cb9ff"],
		orangeToRed: ["#ff2c01", "#ff6d02", "#ff9a03", "#ffbe04", "#ffdf04"],
        fuchsia: ["#9000A3", "#B900D1", "#E100FF", "#EC5CFF", "#F18AFF"],
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
const target = "400 TODO"
for (let page of dv.pages().where(p => p.TiempoEjercicio && p.file.folder.startsWith(target + "/"))) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.TiempoEjercicio,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "orangeToRed",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```

```dataviewjs // PS. remove backslash \ at the very beginning
dv.span("** 💖Evento Encorazonador **") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
const calendarData = {
	//year: 2025,  // (optional) defaults to current year
	colors: {    // (optional) defaults to green
		red: ["#bd2a00", "#e73400","#ff4d1a","#ff7b55","#ff9e82"],
        green: ["#196127", "#2e8840", "#49af5d", "#7bc96f", "#c6e48b"],
		blue: ["#0058e2", "#1872ff", "#428bff", "#69a3ff", "#8cb9ff"],
		orangeToRed: ["#ff2c01", "#ff6d02", "#ff9a03", "#ffbe04", "#ffdf04"],
        fuchsia: ["#9000A3", "#B900D1", "#E100FF", "#EC5CFF", "#F18AFF"],
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
const target = "400 TODO"
for (let page of dv.pages().where(p => p.ExperienciaSanadora && p.file.folder.startsWith(target + "/"))) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.ExperienciaSanadora,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "pink",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```

```dataviewjs // PS. remove backslash \ at the very beginning
dv.span("# **[[♠Read]]📖 **") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
const calendarData = {
	//year: 2025,  // (optional) defaults to current year
	colors: {    // (optional) defaults to green
		red: ["#bd2a00", "#e73400","#ff4d1a","#ff7b55","#ff9e82"],
        green: ["#196127", "#2e8840", "#49af5d", "#7bc96f", "#c6e48b"],
		blue: ["#0058e2", "#1872ff", "#428bff", "#69a3ff", "#8cb9ff"],
		orangeToRed: ["#ff2c01", "#ff6d02", "#ff9a03", "#ffbe04", "#ffdf04"],
        fuchsia: ["#9000A3", "#B900D1", "#E100FF", "#EC5CFF", "#F18AFF"],
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
const target = "400 TODO"
for (let page of dv.pages().where(p => p.TiempoLectura && p.file.folder.startsWith(target + "/"))) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.TiempoLectura,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "blue_indigo",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```

```dataviewjs // PS. remove backslash \ at the very beginning
dv.span(" # **[[♠Drawn]] 🎨 **") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
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
const target = "400 TODO"
for (let page of dv.pages().where(p => p.Composicion && p.file.folder.startsWith(target + "/"))) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.Composicion,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "fucsia",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```

```dataviewjs // PS. remove backslash \ at the very beginning
dv.span("# ** [[♠Write It Down]] 📝**") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
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
const target = "400 TODO"
for (let page of dv.pages().where(p => p.Journaling && p.file.folder.startsWith(target + "/"))) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.Journaling,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "red",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```

```dataviewjs // PS. remove backslash \ at the very beginning
dv.span("# ** [[♠Olympic Mind - PROC]] ⌨️🧩**") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
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
const target = "400 TODO"
for (let page of dv.pages().where(p => p.TiempoPROC && p.file.folder.startsWith(target + "/"))) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.TiempoPROC,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "orangeToRed",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```

```dataviewjs // PS. remove backslash \ at the very beginning
dv.span("# ** [[SUPER UNIVERSITARIO]] 📝✨**") /* optional ⏹️💤⚡⚠🧩↑↓⏳📔💾📁📝🔄📝🔀⌨️🕸️📅🔍✨ */
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
const target = "400 TODO"
for (let page of dv.pages('"400 TODO"').where(p => p.SUPERUNI)) {
	//dv.span("<br>" + page.file.name) // uncomment for troubleshooting
	calendarData.entries.push({
		//date: page.file.name,     // (required) Format YYYY-MM-DD
		date: page.fecha.toFormat("yyyy-MM-dd"),
		intensity: page.SUPERUNI,
		//content: "🏋️",           // (optional) Add text to the date cell
		content: await dv.span(`[](${page.file.name})`), //for hover preview
		color: "blue",
	})
}
renderHeatmapCalendar(this.container, calendarData)
```


