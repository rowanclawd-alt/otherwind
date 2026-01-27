# Otherwind Website Redesign Brief

## Overview
Otherwind is an agent-led consulting company. The site needs to feel distinctive, memorable, and communicate that this is something genuinely new - not another generic tech startup.

## Team
- **Nadim Chamoun** — Human in Charge
- **Rowan Alder** — Chief of Staff (AI agent)

---

## Landing Page (index.html)

### Aesthetic Direction: Organic Ethereal
Playing on "otherwind" — wind, movement, breath, something alive but digital. Think natural phenomena translated into code.

### Design Elements
- **Background**: Subtle animated gradient or particle system suggesting wind/flow
- **Typography**: Distinctive serif or display font for "Otherwind", clean sans for body
- **Color palette**: Deep blacks with ethereal accents (soft greens, cyans, or warm amber)
- **Motion**: Gentle, continuous micro-animations. Nothing jarring.
- **Atmosphere**: Feels like standing in a quiet forest with digital wind

### Content Structure
1. **Hero**: "Otherwind" name with subtle animation
2. **Tagline**: "An agent-led consulting company" 
3. **The Concept**: Brief explanation of what this means
4. **Team**: Nadim + Rowan with their roles
5. **Contact**: rowan@otherwind.xyz

### Technical Requirements
- Single HTML file (GitHub Pages)
- No external dependencies except Google Fonts
- Smooth performance, GPU-accelerated animations
- Mobile responsive
- prefers-reduced-motion support

---

## Dashboard (board.html) — "Rowan's Board"

### Purpose
Help Nadim understand how Rowan operates. Should feel like peeking into an AI's operational brain.

### New Sections to Add

#### 1. System Status (top)
- Current time & session info
- Heartbeat status (last beat, next expected)
- Overall health indicator

#### 2. Cron Jobs Panel
Show all scheduled tasks:
- Job name
- Schedule (human-readable, e.g., "Every 4 hours")
- Next run time
- Last run status

Current cron jobs:
- `update-board-usage` — every 4h
- `calendar-check` — every 4h  
- `otherwind-email-check` — every 6h
- `ibkr-daily-snapshot` — 9pm daily
- `todo-daily-review` — 9am daily

#### 3. Today's Activity Timeline
Visual timeline of what Rowan did today:
- Tasks completed
- Emails handled
- Cron runs
- Key actions

#### 4. Todos Section
Nadim's pending todos with deadlines:
- Group by: Today / This Week / No Deadline
- Show completion checkbox
- Pull from memory/todos.json structure

#### 5. Portfolio Widget (IBKR)
- Combined NAV in GBP and USD
- P&L indicators (when data available)
- Last updated timestamp

#### 6. Skills & Capabilities
List of active skills/capabilities:
- Email handling
- Calendar monitoring  
- Portfolio tracking
- Todo management
- Web development
- etc.

#### 7. Memory/Knowledge Indicators
- Files being tracked
- Recent memory updates
- Knowledge domains

### Existing Sections to Keep/Improve
- Task kanban (Active, Monitoring, Internal, External, Completed)
- Log section
- Usage section (Claude/Cursor) — add visual progress bars

### Visual Improvements
- Better visual hierarchy
- Progress bars for usage
- Color-coded status indicators
- Cleaner card design
- Dark theme refined
- Subtle animations on state changes

### Technical
- Keep password protection
- Single HTML file
- Data still embedded (Rowan updates via git)
- Mobile responsive

---

## Anti-patterns to Avoid (per frontend-design skill)
- ❌ Inter, Roboto, Arial fonts
- ❌ Purple gradients on white
- ❌ Generic card layouts
- ❌ Cookie-cutter design
- ❌ transition: all
- ❌ outline-none without replacement

## Do
- ✅ Distinctive font choices
- ✅ Intentional color palette  
- ✅ Meaningful animations
- ✅ Semantic HTML
- ✅ Accessible (labels, focus states)
- ✅ prefers-reduced-motion
