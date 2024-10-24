# Send Discord Messages via Automated Script with Robot Framework

This script, written in Python using the **Robot Framework** and the **Selenium** library, allows you to automatically send a "Good Morning" GIF to your friends on Discord :) .

## 🚀 Features
- **Automatic Message Sending**: Say goodbye to manual messaging!
- **Customizable**: Easily change the GIF and message content.
- **User-Friendly**: Simple to set up and run.

## 🔧 Setup Instructions

1. **Install Required Libraries**:
   Ensure you have the necessary libraries installed. You can do this by running:
   ```bash
   pip install robotframework selenium
   ```
2. Edit Credentials: Open the script and modify the `user` and `password` variables with your actual Discord login credentials.

3. Run the Script: Use the Robot Framework to execute the script:
   ```bash
   robot your_script_name.robot
   ```

## 📌 Important Notes

  - Ensure that you follow Discord's terms of service when using this script.
  - Use it responsibly and avoid spamming.

## ✨ Enjoy Your Automated Greetings!

Feel free to reach out if you have any questions or suggestions!

## Example Script: discord_script.robot
```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USER}    your_username
${PASSWORD}    your_password
${GIF_URL}    https://example.com/good_morning.gif

*** Test Cases ***
Send Good Morning GIF
    Open Browser    https://discord.com    chrome
    Maximize Browser Window
    Input Text    id=username    ${USER}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//button[@type='submit']
    Sleep    5
    Go To    https://discord.com/channels/@me
    Sleep    5
    # Replace with the actual logic to send a message with the GIF
    # Example:
    # Click Element    xpath=//your_chat_selector
    # Input Text    xpath=//your_input_selector    ${GIF_URL}
    # Click Button    xpath=//your_send_button_selector
    Close Browser
```
