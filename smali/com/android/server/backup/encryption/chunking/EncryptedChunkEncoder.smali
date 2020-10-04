.class public interface abstract Lcom/android/server/backup/encryption/chunking/EncryptedChunkEncoder;
.super Ljava/lang/Object;
.source "EncryptedChunkEncoder.java"


# virtual methods
.method public abstract getChunkOrderingType()I
.end method

.method public abstract getEncodedLengthOfChunk(Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)I
.end method

.method public abstract writeChunkToWriter(Lcom/android/server/backup/encryption/chunking/BackupWriter;Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
