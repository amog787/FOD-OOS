.class public interface abstract Lcom/android/server/backup/encryption/chunking/Chunker;
.super Ljava/lang/Object;
.source "Chunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/chunking/Chunker$ChunkConsumer;
    }
.end annotation


# virtual methods
.method public abstract chunkify(Ljava/io/InputStream;Lcom/android/server/backup/encryption/chunking/Chunker$ChunkConsumer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
