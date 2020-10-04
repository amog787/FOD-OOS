.class public interface abstract Lcom/android/server/backup/encryption/chunking/Chunker$ChunkConsumer;
.super Ljava/lang/Object;
.source "Chunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/chunking/Chunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChunkConsumer"
.end annotation


# virtual methods
.method public abstract accept([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
