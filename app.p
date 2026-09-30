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



if "pottery" in question:
    answer = (
        "Pottery is an important type of archaeological evidence. "
        "கீழடியில் கிடைத்த பானை ஓடுகள் பழங்கால மக்களின் வாழ்க்கையை "
        "புரிந்துகொள்ள உதவுகின்றன."
    )

elif "iron" in question:
    answer = (
        "Iron objects can provide evidence about ancient technology "
        "and daily activities. "
        "இரும்புப் பொருட்கள் பழங்கால தொழில்நுட்பம் மற்றும் அன்றாட "
        "செயல்பாடுகள் பற்றிய தகவல்களைத் தருகின்றன."
    )

elif "coins" in question:
    answer = (
        "Coins can provide evidence about trade and economy. "
        "நாணயங்கள் வாணிபம் மற்றும் பொருளாதாரம் பற்றிய தகவல்களை "
        "அறிய உதவுகின்றன."
    )

elif "bricks" in question:
    answer = (
        "Brick and structural remains can provide evidence about "
        "ancient buildings and settlements. "
        "செங்கல் மற்றும் கட்டிட எச்சங்கள் பழங்கால கட்டிடங்கள் "
        "மற்றும் குடியிருப்புகளைப் புரிந்துகொள்ள உதவும்."
    )

elif "what is keeladi" in question or "கீழடி என்றால் என்ன" in question:
    answer = (
        "Keeladi is an important archaeological site in Tamil Nadu. "
        "கீழடி தமிழ்நாட்டில் உள்ள முக்கியமான தொல்லியல் தளமாகும்."
    )

elif "why is keeladi important" in question or "கீழடி ஏன் முக்கியம்" in question:
    answer = (
        "Keeladi is important because archaeological excavations "
        "provide evidence about ancient life in Tamil Nadu. "
        "பழங்கால தமிழர்களின் வாழ்க்கையைப் புரிந்துகொள்ள கீழடி "
        "முக்கியமானது."
    )

elif "where is keeladi" in question or "கீழடி எங்கே" in question:
    answer = (
        "Keeladi is an archaeological site in Sivaganga district "
        "of Tamil Nadu, India. "
        "கீழடி தமிழ்நாட்டின் சிவகங்கை மாவட்டத்தில் அமைந்துள்ள "
        "ஒரு தொல்லியல் தளமாகும்."
    )

elif "artifacts" in question or "கீழடியில் என்ன பொருட்கள்" in question:
    answer = (
        "Excavations at Keeladi have found pottery and other "
        "archaeological artefacts. "
        "கீழடியில் பானை ஓடுகள் மற்றும் பிற தொல்லியல் பொருட்கள் "
        "கண்டெடுக்கப்பட்டுள்ளன."
    )

elif "excavation" in question or "excavations" in question or "அகழாய்வு" in question:
    answer = (
        "Archaeological excavation helps researchers study material "
        "evidence from ancient settlements. "
        "தொல்லியல் அகழாய்வு மூலம் பழங்கால குடியிருப்புகளின் "
        "பொருள் சார்ந்த சான்றுகளை ஆய்வு செய்ய முடியும்."
    )

elif "ancient people" in question or "பழங்கால மக்கள்" in question:
    answer = (
        "Archaeological evidence from Keeladi helps researchers "
        "understand aspects of ancient life and settlements. "
        "கீழடியின் தொல்லியல் சான்றுகள் பழங்கால வாழ்க்கை மற்றும் "
        "குடியிருப்புகளைப் புரிந்துகொள்ள உதவுகின்றன."
    )

elif "history" in question or "வரலாறு" in question:
    answer = (
        "Keeladi provides archaeological evidence that helps us "
        "study the history and material culture of ancient Tamil Nadu. "
        "கீழடி பழங்கால தமிழ்நாட்டின் வரலாறு மற்றும் பொருள் "
        "பண்பாட்டை ஆய்வு செய்ய உதவும் தொல்லியல் சான்றுகளை வழங்குகிறது."
    )

elif "hello" in question or "வணக்கம்" in question:
    answer = (
        "Vanakkam! 👋 நான் உங்கள் Heritage IQ AI Guide. "
        "கீழடி பற்றி கேளுங்கள்!"
    )

else:
    answer = (
        "Sorry, I don't have reliable information for this question yet. "
        "இந்த கேள்விக்கான நம்பகமான தகவல் என்னிடம் இன்னும் இல்லை."
    )

return jsonify({"answer": answer})
    elif "iron" in question:
        answer = (


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
