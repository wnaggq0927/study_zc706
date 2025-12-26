import socket
import time

# ZC706 的 IP 地址和端口
BOARD_IP = "192.168.0.20"
BOARD_PORT = 5001

print(f"Connecting to FPGA at {BOARD_IP}:{BOARD_PORT}...")

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)


def send_cmd(cmd_char):
    # 发送指令
    sock.sendto(cmd_char.encode(), (BOARD_IP, BOARD_PORT))
    print(f"Sent command: {cmd_char}")

    # (可选) 接收板子的回信
    try:
        sock.settimeout(1.0)  # 等1秒
        data, addr = sock.recvfrom(1024)
        print(f"FPGA Reply: {data.decode()}")
    except socket.timeout:
        print("No reply (Packet lost?)")


while True:
    print("\n============================")
    print(" 1. Waterfall")
    print(" 2. Switch Control")
    print(" 3. Binary Counter")
    print(" 4. Dice Game")
    print(" 5. Reflex Test")
    print(" 6. SOS")
    print(" 0. OFF")
    print("============================")

    user_input = input("Enter command (or 'q' to quit): ")

    if user_input == 'q':
        break

    send_cmd(user_input)