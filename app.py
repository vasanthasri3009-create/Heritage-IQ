from flask import Flask, render_template, request, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    return render_template("index.html")


@app.route("/artifacts")
def artifacts():
    return render_template("artifacts.html")


@app.route("/chat")
def chat():
    return render_template("chat.html")


@app.route("/personalized")
def personalized():
    return render_template("personalized.html")


@app.route("/accessibility")
def accessibility():
    return render_template("accessibility.html")


@app.route("/crowd")
def crowd():
    return render_template("crowd.html")


@app.route("/sources")
def sources():
    return render_template("sources.html")


@app.route("/ask", methods=["POST"])
def ask():

    data = request.get_json()
    question = data.get("question", "").lower().strip()

    # Pottery
    if "pottery" in question or "பானை" in question:
        answer = (
            "🏺 Pottery is one of the important archaeological findings "
            "associated with Keeladi. Pottery fragments help researchers "
            "understand the daily life, technology and activities of ancient people."
        )

    # Iron
    elif "iron" in question or "இரும்பு" in question:
        answer = (
            "⚒️ Iron objects found in archaeological excavations can provide "
            "evidence about tools, technology and daily activities of ancient communities."
        )

    # Coins
    elif "coin" in question or "coins" in question or "நாணயம்" in question:
        answer = (
            "🪙 Coins and coin-related archaeological evidence can help researchers "
            "study trade, economic activities and connections between ancient communities."
        )

    # Bricks
    elif "brick" in question or "bricks" in question or "செங்கல்" in question:
        answer = (
            "🧱 Brick structures and remains can provide information about "
            "ancient construction methods, buildings and settlement patterns."
        )

    # What is Keeladi?
    elif (
        "what is keeladi" in question
        or "keeladi" in question
        or "கீழடி என்றால் என்ன" in question
    ):
        answer = (
            "🏺 Keeladi is an important archaeological site in Tamil Nadu. "
            "Archaeological excavations at Keeladi have revealed evidence that "
            "helps researchers study ancient settlement and everyday life."
        )

    # Why is Keeladi important?
    elif (
        "why is keeladi important" in question
        or "importance of keeladi" in question
        or "கீழடி ஏன் முக்கியம்" in question
    ):
        answer = (
            "📚 Keeladi is important because archaeological findings from the site "
            "help researchers understand ancient settlement, technology, crafts "
            "and everyday life in Tamil Nadu."
        )

    # Where is Keeladi?
    elif (
        "where is keeladi" in question
        or "location of keeladi" in question
        or "கீழடி எங்கே" in question
    ):
        answer = (
            "📍 Keeladi is an archaeological site located in Sivaganga district "
            "of Tamil Nadu, India."
        )

    # Artifacts
    elif (
        "artifacts" in question
        or "artifact" in question
        or "கீழடியில் என்ன பொருட்கள்" in question
    ):
        answer = (
            "🏺 Archaeological findings associated with Keeladi include pottery, "
            "iron objects, structural remains and other artefacts. These findings "
            "help researchers study ancient life and technology."
        )

    # Excavation
    elif (
        "excavation" in question
        or "excavations" in question
        or "அகழாய்வு" in question
    ):
        answer = (
            "🔎 Archaeological excavation is the careful process of studying and "
            "recovering remains from the ground. Excavation helps researchers "
            "understand past settlements and human activities."
        )

    # Ancient people
    elif (
        "ancient people" in question
        or "ancient life" in question
        or "பழங்கால மக்கள்" in question
    ):
        answer = (
            "👥 Archaeological evidence helps researchers understand how ancient "
            "people lived, worked, made tools, used pottery and organized settlements."
        )

    # History
    elif "history" in question or "வரலாறு" in question:
        answer = (
            "📖 Keeladi's archaeological evidence provides information for studying "
            "the history and everyday life of ancient communities in Tamil Nadu."
        )

    # Hello
    elif "hello" in question or "hi" in question or "வணக்கம்" in question:
        answer = (
            "Vanakkam! 👋 நான் உங்கள் Heritage IQ AI Guide. "
            "கீழடி பற்றி கேளுங்கள்!"
        )

    # Unknown question
    else:
        answer = (
            "Sorry, I don't have reliable information for this question yet. "
            "இந்த கேள்விக்கான நம்பகமான தகவல் என்னிடம் இன்னும் இல்லை."
        )

    return jsonify({"answer": answer})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
