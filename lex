WEEK-11 — Amazon Lex (Click-by-Click, Exact UI Flow)
🔷 PART 1: Open Amazon Lex
Go to AWS Management Console
In top search bar:
Type Lex
Click Amazon Lex
On Lex dashboard:
Click Create bot
🔷 PART 2: Create Bot
In Create bot page:
🔹 Step 2.1: Bot Type
Select:
Create a blank bot
🔹 Step 2.2: Basic Details
Bot name → HotelBookingBot
🔹 Step 2.3: Permissions
IAM Role:
Select:
Create a new role
Keep default name
🔹 Step 2.4: Additional Settings
Language → English
Voice → Optional (leave default)
🔹 Step 2.5: Create Bot
Click:
Done

✔ Bot is created

🔷 PART 3: Create Intent
Inside bot:
Left panel → Click Intents
Click:
Add intent → Create intent
Enter:
Name → BookHotel
Click:
Create
🔷 PART 4: Add Utterances
Inside intent:
Scroll to Sample utterances
Add one by one (press Enter after each):
I want to book a hotel
Book a room
Reserve hotel
I need a room

✔ These train NLP model

🔷 PART 5: Create Slots (User Inputs)
🔹 Slot 1: Age
Scroll to Slots section
Click:
Add slot
Fill:
Slot name → age
Slot type → Select AMAZON.Number
Prompt:
What is your age?
Enable:
✅ Required
Click:
Save
🔹 Add Conditional Logic (Important)
In same slot:
Scroll down → Advanced options
Find:
Slot capture → Conditional branching
Click:
Add condition
Configure:
Condition → {age} < 18
Response → You are not eligible for hotel booking
Save
🔹 Slot 2: Location
Click:
Add slot
Fill:
Name → location
Type → AMAZON.City
Prompt → Which city do you want?
Enable:
Required
Click:
Save
🔹 Slot 3: Check-in Date
Click:
Add slot
Fill:
Name → checkin
Type → AMAZON.Date
Prompt → What is your check-in date?
Enable:
Required
Add retry prompt:
Please provide valid date (e.g., 2026-03-25)
Save
🔹 Slot 4: Nights
Click:
Add slot
Fill:
Name → nights
Type → AMAZON.Number
Prompt → How many nights will you stay?
Enable:
Required
Save
🔷 PART 6: Custom Slot Type (Room Type)
🔹 Step 6.1: Create Slot Type
Left panel → Click Slot types
Click:
Add slot type → Add blank
Fill:
Name → RoomType
Add values:
Single
Double
Suite
Click:
Save
🔹 Step 6.2: Use in Intent
Go back to:
Intents → BookHotel
Click:
Add slot
Fill:
Name → roomType
Type → RoomType
Save
🔷 PART 7: Add Response Cards (Buttons)
Go to:
RoomType slot
Under prompt:
Click More prompt options
Click:
Add → Card group
Fill:
Title → Select Room Type
Add buttons:
Single → "Single"
Double → "Double"
Suite → "Suite"
Save
🔷 PART 8: Configure Responses
🔹 Initial Response
Add:
Welcome to Hotel Booking! What is your name?
🔹 Confirmation Prompt
Do you want to confirm booking in {location} for {nights} nights?
🔷 PART 9: Build Bot
Top right:
Click Build
Wait:
Status → Built successfully
🔷 PART 10: Test Bot
Right side panel:
Test chatbot
Type:
Book a hotel2
