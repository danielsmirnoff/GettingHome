// data/medical_data.dart
import 'package:flutter/material.dart';
import '../models/medical_category.dart';
import '../models/article.dart';

class MedicalData {
  static List<MedicalCategory> getCategories() {
    return [
      MedicalCategory(
        id: 1,
        title: 'First Aid',
        color: Colors.red,
        icon: '🏥',
        articles: _getFirstAidArticles(),
      ),
      MedicalCategory(
        id: 2,
        title: 'Common Illnesses',
        color: Colors.blue,
        icon: '🤒',
        articles: _getCommonIllnessArticles(),
      ),
      MedicalCategory(
        id: 3,
        title: 'Emergency Care',
        color: Colors.orange,
        icon: '🚨',
        articles: _getEmergencyCareArticles(),
      ),
      MedicalCategory(
        id: 4,
        title: 'Medications',
        color: Colors.green,
        icon: '💊',
        articles: _getMedicationArticles(),
      ),
      MedicalCategory(
        id: 5,
        title: 'Preventive Care',
        color: Colors.purple,
        icon: '🛡️',
        articles: _getPreventiveCareArticles(),
      ),
      MedicalCategory(
        id: 6,
        title: 'Mental Health',
        color: Colors.pink,
        icon: '🧠',
        articles: _getMentalHealthArticles(),
      ),
    ];
  }

  // ==================== FIRST AID ====================
  static List<Article> _getFirstAidArticles() {
    return [
      Article(
        id: 101,
        title: 'Treating Minor Cuts & Scrapes',
        content: '''## Steps to Treat Minor Cuts

1. **Wash Your Hands**: Clean thoroughly with soap and water before treating the wound.

2. **Stop the Bleeding**: Apply gentle pressure with a clean cloth for several minutes.

3. **Clean the Wound**: Rinse with clean water. Avoid soap directly in the wound.

4. **Apply Antibiotic**: Use a thin layer of antibiotic ointment to prevent infection.

5. **Cover the Wound**: Apply a bandage or sterile gauze to protect the area.

6. **Change the Bandage**: Replace daily or when wet or dirty.

**When to Seek Medical Help:**
- Bleeding doesn't stop after 10 minutes
- Cut is deep, long, or has jagged edges
- Signs of infection (redness, warmth, swelling, pus)''',
      ),
      Article(
        id: 102,
        title: 'Burns: What to Do',
        content: '''## Treating Burns

**First-Degree Burns:**
1. Cool with running water for 10-20 minutes
2. Remove jewelry before swelling
3. Apply aloe vera or moisturizer
4. Cover with sterile gauze
5. Take OTC pain relievers if needed

**Second-Degree Burns:**
1. Follow first-degree steps
2. Do NOT pop blisters
3. Protect with loose bandaging
4. Watch for infection signs

**Third-Degree Burns:**
- Call 911 immediately
- Don't remove stuck clothing
- Cover with clean, dry cloth
- Elevate above heart if possible

**Never use ice, butter, or ointments on severe burns.**''',
      ),
      Article(
        id: 103,
        title: 'Sprains: R.I.C.E. Method',
        content: '''## R.I.C.E. Treatment

**R - Rest**
Stop activity. Don't put weight on injured area.

**I - Ice**
Apply ice pack 15-20 minutes every 2-3 hours for 48 hours. Never apply ice directly to skin.

**C - Compression**
Wrap with elastic bandage (not too tight). Should be snug but not cutting circulation.

**E - Elevation**
Keep injured area raised above heart level to reduce swelling.

**See a Doctor If:**
- Severe pain and swelling
- Can't move the joint or bear weight
- Numbness in affected area
- No improvement after several days''',
      ),
    ];
  }

  // ==================== COMMON ILLNESSES ====================
  static List<Article> _getCommonIllnessArticles() {
    return [
      Article(
        id: 201,
        title: 'Managing Cold & Flu',
        content: '''## Cold vs Flu

**Cold Symptoms:**
- Gradual onset, runny nose, sore throat, mild fatigue

**Flu Symptoms:**
- Sudden onset, high fever (100-104°F), severe body aches, extreme fatigue

## Home Treatment:

1. **Rest**: Get plenty of sleep
2. **Hydrate**: Drink water, tea, or broth
3. **Steam**: Use humidifier or breathe steam
4. **Pain Relief**: Acetaminophen or ibuprofen
5. **Gargle**: Salt water for sore throat

**Seek Medical Care If:**
- Fever above 103°F or lasting 3+ days
- Difficulty breathing
- Severe chest pain
- Symptoms lasting over 10 days''',
      ),
      Article(
        id: 202,
        title: 'Fever: When to Treat',
        content: '''## Understanding Fever

**Normal Temperature:** 98.6°F (37°C)
**Fever:** 100.4°F (38°C) or higher

Fever helps your body fight infection. Most fevers don't need treatment unless uncomfortable or above 102°F.

## Home Care:
- Rest in comfortable environment
- Light clothing and bedding
- Room temperature fluids
- Lukewarm bath (not cold)

**Adults:** Treat if uncomfortable or above 102°F with acetaminophen or ibuprofen

**Seek Medical Care If:**
- Temperature above 103°F
- Fever lasting more than 3 days
- Severe headache or stiff neck
- Difficulty breathing or chest pain
- Confusion or seizures''',
      ),
    ];
  }

  // ==================== EMERGENCY CARE ====================
  static List<Article> _getEmergencyCareArticles() {
    return [
      Article(
        id: 301,
        title: 'CPR: Steps to Save a Life',
        content: '''## Adult CPR (Hands-Only)

**Before Starting:**
1. Check scene safety
2. Check if person is responsive (tap and shout)
3. Call 911 or have someone call
4. Get AED if available

**Performing CPR:**

1. **Position**: Place person flat on firm surface
2. **Hand Placement**: 
   - Heel of one hand on center of chest
   - Other hand on top, fingers interlaced
3. **Compressions**:
   - Push hard and fast
   - At least 2 inches deep
   - Rate of 100-120 per minute
   - Allow full chest recoil
4. **Continue** until help arrives

**Remember:** Any CPR attempt is better than none. Don't worry about perfection!''',
      ),
      Article(
        id: 302,
        title: 'Recognizing Stroke: FAST',
        content: '''## FAST: Stroke Recognition

**F - Face Drooping**
Ask person to smile. Does one side droop?

**A - Arm Weakness**
Ask to raise both arms. Does one drift down?

**S - Speech Difficulty**
Ask to repeat simple sentence. Is speech slurred?

**T - Time to Call 911**
If ANY signs present, call 911 immediately. Note time symptoms started.

## Other Signs:
- Sudden numbness (especially one side)
- Sudden confusion
- Sudden vision problems
- Sudden trouble walking
- Sudden severe headache

## What to Do:
1. Call 911 immediately
2. Note time symptoms started
3. Keep person calm
4. Don't give food or drink

**Time is critical - every minute counts!**''',
      ),
      Article(
        id: 303,
        title: 'Choking: Heimlich Maneuver',
        content: '''## Signs of Choking

**Severe Choking (EMERGENCY):**
- Cannot breathe, cough, or speak
- Hands clutched to throat
- Face turns blue

## Heimlich Maneuver

1. **Stand Behind** the person
2. **Wrap Arms** around waist
3. **Make Fist** above navel, below ribs
4. **Grasp** fist with other hand
5. **Thrust** quick, upward into abdomen
6. **Repeat** until object expelled

**If Person Becomes Unconscious:**
- Lower to ground
- Call 911
- Begin CPR

**For Yourself (alone):**
- Use back of chair
- Press abdomen against it with quick thrusts''',
      ),
      Article(
        id: 304,
        title: 'Heart Attack Warning Signs',
        content: '''## Heart Attack Symptoms

**Common Signs:**
- Chest discomfort (pressure, squeezing)
- Pain in arm, jaw, neck, or back
- Shortness of breath
- Cold sweat
- Nausea or lightheadedness

**Women May Experience:**
- Unusual fatigue
- Indigestion
- Anxiety
- Back or jaw pain without chest pain

## Immediate Action:

1. **Call 911 Immediately** - Don't wait or drive yourself
2. **Chew Aspirin**: 325mg if not allergic
3. **Stay Calm**: Sit or lie down
4. **Loosen Clothing**
5. **Be Ready**: Prepare for CPR if needed

**Time = Heart Muscle. The sooner treatment, the less damage.**''',
      ),
      Article(
        id: 305,
        title: 'Severe Allergic Reaction',
        content: '''## Anaphylaxis Symptoms

- Difficulty breathing or wheezing
- Swelling of face, lips, or throat
- Rapid or weak pulse
- Dizziness or fainting
- Widespread hives
- Nausea or vomiting

## Immediate Treatment:

1. **Call 911 Immediately**

2. **Use EpiPen if Available**:
   - Remove from carrier
   - Press orange tip against outer thigh
   - Hold for 3 seconds
   - Massage injection site

3. **Position**: Lay person flat, elevate legs

4. **Monitor**: Check breathing, be ready for CPR

**After EpiPen:** Still call 911 - symptoms can return. May need second dose after 5-15 minutes.

**Common Triggers:** Peanuts, shellfish, bee stings, medications, latex''',
      ),
    ];
  }

  // ==================== MEDICATIONS ====================
  static List<Article> _getMedicationArticles() {
    return [
      Article(
        id: 401,
        title: 'Common OTC Pain Relievers',
        content: '''## Pain Reliever Guide

**Acetaminophen (Tylenol):**
- Uses: Pain, fever
- Safe for most people
- Caution: Liver disease, alcohol use
- Max: 3,000mg per day

**Ibuprofen (Advil, Motrin):**
- Uses: Pain, inflammation, fever
- Take with food
- Caution: Stomach ulcers, kidney disease
- Max: 1,200mg per day (OTC)

**Aspirin:**
- Uses: Pain, fever, heart health
- Blood thinner
- Never for children under 12
- Can cause stomach bleeding

**Naproxen (Aleve):**
- Uses: Pain, inflammation
- Longer lasting than ibuprofen
- Take with food
- Max: 660mg per day (OTC)

## Safety:
- Read labels carefully
- Don't mix same ingredients
- Store away from children''',
      ),
      Article(
        id: 402,
        title: 'Medication Storage',
        content: '''## Storage Guidelines

**Temperature:**
- Most: Room temperature (68-77°F)
- Avoid: Bathroom, car, windowsills
- Some need refrigeration - check label

**Safety:**
- Out of reach of children
- Original containers
- Childproof caps
- Keep labels intact

**Discard If:**
- Past expiration date
- Changed color or smell
- Crumbling pills
- Separated liquids
- Unlabeled

## Safe Disposal:
- Use medication take-back programs
- Mix with coffee grounds in sealed bag
- Throw in household trash
- Never give expired meds to others''',
      ),
    ];
  }

  // ==================== PREVENTIVE CARE ====================
  static List<Article> _getPreventiveCareArticles() {
    return [
      Article(
        id: 501,
        title: 'Hand Washing Technique',
        content: '''## Proper Hand Washing

**When to Wash:**
- Before preparing/eating food
- After using bathroom
- After coughing/sneezing
- After touching animals
- After handling garbage

**How to Wash (20 seconds):**

1. **Wet** hands with clean water
2. **Apply** soap and lather well
3. **Scrub** all surfaces:
   - Palms and backs
   - Between fingers
   - Under nails
   - Wrists
4. **Rinse** thoroughly
5. **Dry** with clean towel

**20-Second Rule:** Hum "Happy Birthday" twice

**When Soap Unavailable:**
Use hand sanitizer with 60%+ alcohol

Hand washing prevents: Cold, flu, stomach bugs, skin infections''',
      ),
      Article(
        id: 502,
        title: 'Staying Hydrated',
        content: '''## Hydration Importance

**Benefits:**
- Regulates temperature
- Delivers nutrients
- Improves mood and focus
- Aids digestion
- Maintains blood pressure

**How Much:**
- General: 8 glasses (64 oz) daily
- More if: Exercising, hot weather, pregnant

**Dehydration Signs:**
- Thirst
- Dark yellow urine
- Dry mouth
- Fatigue
- Dizziness

**Severe (Seek Care):**
- No urination 8+ hours
- Rapid heartbeat
- Confusion
- Sunken eyes

**Tips:**
- Carry water bottle
- Drink before thirsty
- Eat water-rich foods
- Limit caffeine/alcohol''',
      ),
    ];
  }

  // ==================== MENTAL HEALTH ====================
  static List<Article> _getMentalHealthArticles() {
    return [
      Article(
        id: 601,
        title: 'Managing Stress & Anxiety',
        content: '''## Coping Strategies

**Immediate Techniques:**
1. **Deep Breathing**: 4 counts in, hold 4, out 4
2. **Grounding**: Name 5 things you see, 4 hear, 3 touch, 2 smell, 1 taste
3. **Muscle Relaxation**: Tense and release muscle groups

**Long-term Management:**
- Regular exercise (30 min, 5x/week)
- Adequate sleep (7-9 hours)
- Healthy diet
- Limit caffeine and alcohol
- Social connections
- Mindfulness or meditation

**When to Seek Help:**
- Symptoms interfere with daily life
- Panic attacks
- Physical symptoms (chest pain, dizziness)
- Thoughts of self-harm

**Crisis Resources:**
- 988 Suicide & Crisis Lifeline
- Text HOME to 741741''',
      ),
      Article(
        id: 602,
        title: 'Recognizing Depression',
        content: '''## Depression Signs

**Emotional:**
- Persistent sad or empty mood
- Loss of interest in activities
- Feelings of hopelessness
- Excessive guilt

**Physical:**
- Sleep changes
- Appetite changes
- Fatigue
- Unexplained aches

**Cognitive:**
- Difficulty concentrating
- Trouble making decisions
- Memory problems
- Thoughts of death

## What to Do:

**Immediate:**
- Talk to someone you trust
- Contact your doctor
- Call crisis hotline if suicidal
- Don't isolate

**Treatment:**
- Psychotherapy
- Medication
- Lifestyle changes

**Crisis Resources:**
- 988 Suicide & Crisis Lifeline
- Text HOME to 741741
- Emergency Room for immediate danger

Depression is treatable. Seeking help is strength.''',
      ),
    ];
  }

  // ==================== FAQ DATA ====================
  static List<Map<String, String>> getFAQData() {
    return [
      {
        'question': 'How does offline mode work?',
        'answer':
            'All medical content is stored locally on your device, allowing you to access critical health information even without an internet connection. The app downloads content when you first install it and updates when connected to WiFi.',
      },
      {
        'question': 'Is this a replacement for medical care?',
        'answer':
            'No. Getting HOME is designed as a reference guide for common medical situations and first aid. Always seek professional medical attention for serious injuries, illnesses, or emergencies. When in doubt, call 911.',
      },
      {
        'question': 'How often is content updated?',
        'answer':
            'Content is reviewed and updated quarterly by medical professionals. When auto-update is enabled in settings, new content downloads automatically when connected to WiFi.',
      },
      {
        'question': 'Can I trust the medical information?',
        'answer':
            'All content is reviewed by licensed healthcare professionals and based on current medical guidelines from organizations like the American Red Cross, American Heart Association, and CDC.',
      },
      {
        'question': 'What should I do in a life-threatening emergency?',
        'answer':
            'Always call 911 immediately for life-threatening emergencies. Use this app as a reference while waiting for emergency services to arrive, not as a substitute for professional emergency care.',
      },
      {
        'question': 'Can I use this app for my children?',
        'answer':
            'This app contains general medical information that can apply to family members. However, pediatric care often requires different approaches. Consult with your pediatrician for child-specific medical guidance.',
      },
      {
        'question': 'Does the app collect my medical data?',
        'answer':
            'No. Getting HOME does not collect, store, or transmit any personal health information. All interactions with the app are private and stored only on your device.',
      },
      {
        'question': 'How do I report incorrect information?',
        'answer':
            'You can report concerns through the Settings menu under "Report an Issue". Our medical team reviews all submissions to ensure accuracy.',
      },
    ];
  }
}