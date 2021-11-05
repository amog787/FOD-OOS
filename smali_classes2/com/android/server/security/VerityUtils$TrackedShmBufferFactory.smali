.class Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
.super Ljava/lang/Object;
.source "VerityUtils.java"

# interfaces
.implements Landroid/util/apk/ByteBufferFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/VerityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackedShmBufferFactory"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mShm:Landroid/os/SharedMemory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/VerityUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/security/VerityUtils$1;

    .line 252
    invoke-direct {p0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "capacity"    # I

    .line 262
    const-string v0, "Failed to set protection"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    .line 265
    const-string v1, "apkverity"

    invoke-static {v1, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 266
    sget v2, Landroid/system/OsConstants;->PROT_READ:I

    sget v3, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 270
    return-object v1

    .line 267
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
    .end local p1    # "capacity":I
    throw v1

    .line 263
    .restart local p0    # "this":Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
    .restart local p1    # "capacity":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple instantiation from this factory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
    .end local p1    # "capacity":I
    throw v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .restart local p0    # "this":Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
    .restart local p1    # "capacity":I
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBufferLimit()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_0
    return v0
.end method

.method public releaseSharedMemory()Landroid/os/SharedMemory;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 279
    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 282
    .local v0, "tmp":Landroid/os/SharedMemory;
    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 283
    return-object v0
.end method
