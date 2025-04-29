import os
import sys
import requests

# Répertoire de l'application
APP_DIR = os.path.dirname(os.path.abspath(__file__))
GITHUB_API_URL = "https://github.com/Caglihost/Sea_hawk.mspr6.1/releases"
TRIGGER_FILE = "/tmp/trigger_update"
CURRENT_VERSION = "1.2.13"  # Version actuelle de l'image Docker

def check_for_update(current_version):
    try:
        response = requests.get(GITHUB_API_URL)
        if response.status_code == 200:
            release_data = response.json()
            latest_tag = release_data.get("tag_name", "")
            if latest_tag and latest_tag != current_version:
                return latest_tag
        return None
    except Exception as e:
        print("Erreur lors de la vérification de mise à jour :", e)
        return None

if __name__ == "__main__":
    new_version = check_for_update(CURRENT_VERSION)
    if new_version:
        print(f"Nouvelle version disponible : {new_version}")
        # Créer un fichier de trigger
        with open(TRIGGER_FILE, "w") as f:
            f.write(f"update_to={new_version}\n")
        print("Déclenchement de la mise à jour. Le conteneur va s'arrêter.")
        sys.exit(0)  # L'application principale s'arrête ici
    else:
        print("Aucune mise à jour disponible.")


