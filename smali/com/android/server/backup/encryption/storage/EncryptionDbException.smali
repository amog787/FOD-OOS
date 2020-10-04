.class public Lcom/android/server/backup/encryption/storage/EncryptionDbException;
.super Ljava/io/IOException;
.source "EncryptionDbException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 24
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method
