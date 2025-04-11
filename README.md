# HippoVlog: A Long-form Vlog Dataset for Multimodal Memory and Reasoning

HippoVlog is a novel benchmark dataset designed for evaluating Multimodal Memory and Reasoning (MMR) systems. It consists of 25 long-form daily vlogs (682 minutes total) with naturalistic audiovisual content and 1,000 validated multiple-choice question-answer pairs.

## Dataset Overview

HippoVlog addresses key limitations in existing multimodal understanding benchmarks by providing:
- Long-form continuous videos with naturalistic content
- Ground truth answers for objective evaluation
- Rich audio-visual integration challenges
- Temporal reasoning requirements

### Question Categories

The dataset includes four types of memory-focused questions:
1.  **Cross-modal binding ($T_{V \times A}$)**: Linking visual/auditory cues
2.  **Auditory-focused retrieval ($T_A$)**: Recalling audio details
3.  **Visual-focused retrieval ($T_V$)**: Extracting visual details
4.  **Semantic/Temporal reasoning ($T_S$)**: Integrating information over time

## Dataset Structure

The dataset consists of:
- Video files (25 long-form vlogs) - Download instructions below.
- `questions.jsonl`: Contains 1,000 validated multiple-choice questions with:
  - Question text
  - Four candidate answers
  - Correct answer
  - Explanation
  - Video ID and timestamp
  - Category

## Getting Started

### Prerequisites

- Python 3.8+
- yt-dlp
- A cookies file for YouTube access

### Downloading the videos

1.  Download the videos from YouTube:
    ```bash
    chmod +x download.sh
    ./download.sh
    ```

Note: You'll need to provide a `cookies.txt` file for YouTube access. Ensure the `download.sh` script itself does not contain identifying information.

### Data Format

The `questions.jsonl` file contains entries in the following format:
```json
{
    "question_text": "When the main character mentions feeling 'weightless after I've had a drink,' what is visually happening in the scene?",
    "options": {
        "A": "The main character is walking down a busy street wearing a denim jacket with a backpack.",
        "B": "The main character is sitting in a park enjoying a croissant.",
        "C": "The main character is Browse in a clothing store.",
        "D": "The main character is sitting at a ramen restaurant."
    },
    "correct_answer": "A",
    "explanation": "...",
    "video_id": "HLDPA3FTUJ4",
    "category": "audio_visual",
}