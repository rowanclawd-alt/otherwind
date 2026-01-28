#!/bin/bash
# Calendar sync - regenerate ICS from calendar-data.json
# Run by n8n, no AI needed

cd /Users/rowanalder/Projects/otherwind

# Read calendar-data.json and generate ICS
node << 'EOF'
const fs = require('fs');
const data = JSON.parse(fs.readFileSync('calendar-data.json', 'utf8'));

const now = new Date();
const stamp = now.toISOString().replace(/[-:]/g, '').split('.')[0] + 'Z';

let ics = `BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Otherwind//Rowan Calendar//EN
CALSCALE:GREGORIAN
METHOD:PUBLISH
X-WR-CALNAME:Rowan's Calendar
X-WR-TIMEZONE:Europe/London
`;

// Group todos by date
const todosByDate = {};
data.todos.filter(t => !t.done).forEach(todo => {
    if (!todosByDate[todo.date]) todosByDate[todo.date] = [];
    todosByDate[todo.date].push(todo);
});

// Create daily summary blocks (7-8am)
Object.entries(todosByDate).forEach(([date, todos]) => {
    const dateStr = date.replace(/-/g, '');
    const titles = todos.map(t => t.shortTitle || t.title).join(' / ');
    const desc = todos.map(t => t.title).join('\\n\\n');
    
    ics += `BEGIN:VEVENT
UID:daily-todos-${date}@otherwind.xyz
DTSTAMP:${stamp}
DTSTART:${dateStr}T070000
DTEND:${dateStr}T080000
SUMMARY:Todos: ${titles}
DESCRIPTION:${desc}
END:VEVENT
`;
});

// Create individual events
data.todos.filter(t => !t.done && t.time).forEach(todo => {
    const dateStr = todo.date.replace(/-/g, '');
    const timeStr = todo.time.replace(':', '') + '00';
    const endHour = (parseInt(todo.time.split(':')[0]) + (parseInt(todo.time.split(':')[1]) >= 30 ? 1 : 0)).toString().padStart(2, '0');
    const endMin = parseInt(todo.time.split(':')[1]) >= 30 ? '00' : '30';
    const endTimeStr = endHour + endMin + '00';
    
    let desc = todo.notes || '';
    if (todo.url) desc += (desc ? '\\n\\n' : '') + todo.url;
    
    ics += `BEGIN:VEVENT
UID:${todo.id}@otherwind.xyz
DTSTAMP:${stamp}
DTSTART:${dateStr}T${timeStr}
DTEND:${dateStr}T${endTimeStr}
SUMMARY:${todo.title}
${desc ? `DESCRIPTION:${desc}\n` : ''}${todo.url ? `URL:${todo.url}\n` : ''}END:VEVENT
`;
});

ics += 'END:VCALENDAR\n';

fs.writeFileSync('cal-n9x4k7m2q8.ics', ics);
console.log('Calendar regenerated');
EOF

# Commit and push if changed
if [[ -n $(git status --porcelain cal-n9x4k7m2q8.ics) ]]; then
    git add cal-n9x4k7m2q8.ics
    git commit -m "auto: calendar sync"
    git push
    echo "Calendar pushed"
fi
