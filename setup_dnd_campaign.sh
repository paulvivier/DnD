#!/usr/bin/env bash
# setup_dnd_campaign.sh
# Usage: ./setup_dnd_campaign.sh "CampaignName"

set -e

# Use given name or default
CAMPAIGN_NAME="DnD_Campaign_${1:-New}"

# Create base directory
mkdir -p "$CAMPAIGN_NAME"

# Admin folder + placeholder files
mkdir -p "$CAMPAIGN_NAME/00_Admin"
touch "$CAMPAIGN_NAME/00_Admin/Campaign_Primer.md"   # master doc with rules, expectations, house rules
touch "$CAMPAIGN_NAME/00_Admin/Prompt_Template.md"   # the reusable session-start prompt
touch "$CAMPAIGN_NAME/00_Admin/Campaign_Tracker.yaml" # structured state (party, NPCs, locations)
touch "$CAMPAIGN_NAME/00_Admin/Session_Log_Index.md"  # links to all session logs in order

# Session logs (with a few starter files)
mkdir -p "$CAMPAIGN_NAME/01_Session_Logs"
touch "$CAMPAIGN_NAME/01_Session_Logs/Session_001.md"
touch "$CAMPAIGN_NAME/01_Session_Logs/Session_002.md"
touch "$CAMPAIGN_NAME/01_Session_Logs/Session_003.md"

# Player characters
mkdir -p "$CAMPAIGN_NAME/02_Player_Characters"
touch "$CAMPAIGN_NAME/02_Player_Characters/Trix_Rogue.md"
touch "$CAMPAIGN_NAME/02_Player_Characters/Grog_Barbarian.md"
touch "$CAMPAIGN_NAME/02_Player_Characters/Silas_Ranger.md"
touch "$CAMPAIGN_NAME/02_Player_Characters/Fimble_Cleric.md"

# NPCs
mkdir -p "$CAMPAIGN_NAME/03_NPCs"
touch "$CAMPAIGN_NAME/03_NPCs/All_NPCs.md"

# Maps and visuals
mkdir -p "$CAMPAIGN_NAME/04_Maps_and_Visuals/Overworld"
mkdir -p "$CAMPAIGN_NAME/04_Maps_and_Visuals/Dungeons"
mkdir -p "$CAMPAIGN_NAME/04_Maps_and_Visuals/Towns"
mkdir -p "$CAMPAIGN_NAME/04_Maps_and_Visuals/Items"

# Rules and references
mkdir -p "$CAMPAIGN_NAME/05_Rules_and_References"
touch "$CAMPAIGN_NAME/05_Rules_and_References/ADnD_HouseRules.md"
touch "$CAMPAIGN_NAME/05_Rules_and_References/QuickRef_Combat_Tables.md"
touch "$CAMPAIGN_NAME/05_Rules_and_References/Magic_Items_List.md"

# Archive
mkdir -p "$CAMPAIGN_NAME/99_Archive/Old_Characters"
mkdir -p "$CAMPAIGN_NAME/99_Archive/Retired_NPCs"
mkdir -p "$CAMPAIGN_NAME/99_Archive/Unused_Maps"
touch "$CAMPAIGN_NAME/99_Archive/Retired_NPCs/Retired_NPCs.md"

echo "Campaign folder structure created under: $CAMPAIGN_NAME"
