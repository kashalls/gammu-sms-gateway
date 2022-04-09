# gammu-sms-gateway

## Woah

### Configuration

Mount this file to /app/smsgateway.yml:

```yaml
# Server settings
server:
# Listen address, put 0.0.0.0 to listen on all interfaces
host: "127.0.0.1"

# Listen port
port: 1234

# Gammu settings
gammu:
  # PIN code, enter pin code there to unlock directly from application
  pin: 1234

  # Configuration : instead of a .gammurc file you can give configuration there
  # config:
  #   Device: /dev/tty.HUAWEIMobile-Modem
  #   Connection: at

# General settings
# Phone numbers that doesn't want to receive messages from gateway
send_blacklist: ["+33689898989", "+33652525252"]

# Phone numbers that are allowed to send messages to gateway
receive_whitelist: ["+33638383838", "+33614141414"]
```

Based on https://github.com/vvanholl/smsgateway-gammu but docker ized and slightly updated.