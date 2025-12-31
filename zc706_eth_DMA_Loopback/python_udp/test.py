import socket
import time

UDP_IP = "0.0.0.0"
UDP_PORT = 5001

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))

print("Listening for Stress Test Data...")

total_bytes = 0
start_time = time.time()

while True:
    data, addr = sock.recvfrom(2048)  # 缓冲区开大点

    # 如果是文本命令（比如 [START] 或 [END]）
    if b'[' in data and b']' in data:
        try:
            msg = data.decode('utf-8')
            print(f"Command: {msg}")
            if "[START]" in msg:
                total_bytes = 0
                start_time = time.time()
            elif "[END]" in msg:
                duration = time.time() - start_time
                if duration > 0:
                    speed = (total_bytes / 1024 / 1024) / duration
                    print(f"Total Recv: {total_bytes} bytes. Network Speed: {speed:.2f} MB/s")
            continue
        except:
            pass

    # 统计纯数据字节
    total_bytes += len(data)