.class public Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;
.super Ljava/lang/Object;
.source "SingleStreamDiffScriptWriter.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/DiffScriptWriter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mMaxNewByteChunkSize:I

.field private final mOutputStreamWrapper:Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;


# direct methods
.method public constructor <init>(ILcom/android/server/backup/encryption/chunking/OutputStreamWrapper;)V
    .locals 0
    .param p1, "maxNewByteChunkSize"    # I
    .param p2, "outputStreamWrapper"    # Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->mMaxNewByteChunkSize:I

    .line 119
    iput-object p2, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->mOutputStreamWrapper:Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;

    .line 120
    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/io/OutputStream;)Lcom/android/server/backup/encryption/chunking/DiffScriptWriter;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->create(Ljava/io/OutputStream;)Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/io/OutputStream;)Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 124
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->mOutputStreamWrapper:Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1}, Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;->wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    .line 127
    :cond_0
    new-instance v0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    iget v1, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->mMaxNewByteChunkSize:I

    invoke-direct {v0, p1, v1}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method
