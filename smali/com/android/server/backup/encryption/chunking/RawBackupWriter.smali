.class public Lcom/android/server/backup/encryption/chunking/RawBackupWriter;
.super Ljava/lang/Object;
.source "RawBackupWriter.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/BackupWriter;


# instance fields
.field private bytesWritten:J

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    .line 30
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 51
    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    return-wide v0
.end method

.method public writeBytes([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 35
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    .line 36
    return-void
.end method

.method public writeChunk(JI)V
    .locals 2
    .param p1, "start"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RawBackupWriter cannot write existing chunks"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
