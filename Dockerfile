FROM nvcr.io/nvidia/tritonserver:24.05-py3-sdk

# Install Python packages for Whisper preprocessing
RUN pip install --no-cache-dir \
    transformers \
    datasets \
    soundfile \
    librosa \
    numpy \
    scipy

# Create work directory
WORKDIR /workspace


WORKDIR /workspace
COPY harvard.wav test.py ./
# COPY harvard.wav .
# # Copy your client test script into container
# COPY test.py  .

# Default command (can be overridden)
CMD ["python", "test.py"]
