.class Lcom/android/server/blob/BlobStoreSession;
.super Landroid/app/blob/IBlobStoreSession$Stub;
.source "BlobStoreSession.java"


# static fields
.field static final STATE_ABANDONED:I = 0x2

.field static final STATE_CLOSED:I = 0x0

.field static final STATE_COMMITTED:I = 0x3

.field static final STATE_OPENED:I = 0x1

.field static final STATE_VERIFIED_INVALID:I = 0x5

.field static final STATE_VERIFIED_VALID:I = 0x4


# instance fields
.field private final mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

.field private mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

.field private final mBlobHandle:Landroid/app/blob/BlobHandle;

.field private final mContext:Landroid/content/Context;

.field private final mCreationTimeMs:J

.field private mDataDigest:[B

.field private final mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

.field private final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private final mRevocableFds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionFile:Ljava/io/File;

.field private final mSessionId:J

.field private final mSessionLock:Ljava/lang/Object;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionId"    # J
    .param p4, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPackageName"    # Ljava/lang/String;
    .param p7, "creationTimeMs"    # J
    .param p9, "listener"    # Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 128
    invoke-direct {p0}, Landroid/app/blob/IBlobStoreSession$Stub;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 120
    new-instance v0, Lcom/android/server/blob/BlobAccessMode;

    invoke-direct {v0}, Lcom/android/server/blob/BlobAccessMode;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 129
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 130
    iput-object p4, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 131
    iput-wide p2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 132
    iput p5, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 133
    iput-object p6, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 134
    iput-wide p7, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 135
    iput-object p9, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 136
    return-void
.end method

.method constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionId"    # J
    .param p4, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPackageName"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 140
    nop

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 140
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    .line 142
    return-void
.end method

.method private assertCallerIsOwner()V
    .locals 4

    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 549
    .local v0, "callingUid":I
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    if-ne v0, v1, :cond_0

    .line 552
    return-void

    .line 550
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not the session owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSession(IZ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "sendCallback"    # Z

    .line 428
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 429
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 431
    if-nez p1, :cond_0

    .line 434
    monitor-exit v0

    return-void

    .line 436
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to delete or abandon a session with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 437
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "state":I
    .end local p2    # "sendCallback":Z
    throw v1

    .line 441
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "state":I
    .restart local p2    # "sendCallback":Z
    :cond_1
    iput p1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 442
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->revokeAllFds()V

    .line 444
    if-eqz p2, :cond_2

    .line 445
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-virtual {v1, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->onStateChanged(Lcom/android/server/blob/BlobStoreSession;)V

    .line 447
    :cond_2
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)Lcom/android/server/blob/BlobStoreSession;
    .locals 19
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "stateChangeListener"    # Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 597
    move-object/from16 v0, p0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 598
    .local v12, "sessionId":J
    const-string/jumbo v1, "p"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "ownerPackageName":Ljava/lang/String;
    const-string/jumbo v2, "u"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    .line 600
    .local v14, "ownerUid":I
    const/4 v2, 0x5

    move/from16 v15, p1

    if-lt v15, v2, :cond_0

    .line 601
    const-string v2, "crt"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_0

    .line 602
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v9, v2

    :goto_0
    nop

    .line 604
    .local v9, "creationTimeMs":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 605
    .local v11, "depth":I
    const/4 v2, 0x0

    .line 606
    .local v2, "blobHandle":Landroid/app/blob/BlobHandle;
    const/4 v3, 0x0

    move-object/from16 v16, v2

    move-object v8, v3

    .line 607
    .end local v2    # "blobHandle":Landroid/app/blob/BlobHandle;
    .local v8, "blobAccessMode":Lcom/android/server/blob/BlobAccessMode;
    .local v16, "blobHandle":Landroid/app/blob/BlobHandle;
    :cond_1
    :goto_1
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 608
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 609
    invoke-static/range {p0 .. p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    move-result-object v16

    goto :goto_1

    .line 610
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "am"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    invoke-static/range {p0 .. p0}, Lcom/android/server/blob/BlobAccessMode;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;

    move-result-object v8

    goto :goto_1

    .line 615
    :cond_3
    const/4 v2, 0x0

    const-string v3, "BlobStore"

    if-nez v16, :cond_4

    .line 616
    const-string v4, "blobHandle should be available"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-object v2

    .line 619
    :cond_4
    if-nez v8, :cond_5

    .line 620
    const-string v4, "blobAccessMode should be available"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-object v2

    .line 624
    :cond_5
    new-instance v17, Lcom/android/server/blob/BlobStoreSession;

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-wide v4, v12

    move-object/from16 v6, v16

    move v7, v14

    move-object v0, v8

    .end local v8    # "blobAccessMode":Lcom/android/server/blob/BlobAccessMode;
    .local v0, "blobAccessMode":Lcom/android/server/blob/BlobAccessMode;
    move-object v8, v1

    move/from16 v18, v11

    .end local v11    # "depth":I
    .local v18, "depth":I
    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    .line 626
    .local v2, "blobStoreSession":Lcom/android/server/blob/BlobStoreSession;
    iget-object v3, v2, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v3, v0}, Lcom/android/server/blob/BlobAccessMode;->allow(Lcom/android/server/blob/BlobAccessMode;)V

    .line 627
    return-object v2
.end method

.method private openReadInternal()Ljava/io/FileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    .line 309
    .local v0, "sessionFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 313
    .local v1, "fd":Ljava/io/FileDescriptor;
    return-object v1

    .line 310
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get the file for this session"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0    # "sessionFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private openWriteInternal(JJ)Ljava/io/FileDescriptor;
    .locals 7
    .param p1, "offsetBytes"    # J
    .param p3, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    .line 248
    .local v0, "sessionFile":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    sget v3, Landroid/system/OsConstants;->O_RDWR:I

    or-int/2addr v2, v3

    const/16 v3, 0x180

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 252
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 253
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, p1, p2, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v4

    .line 254
    .local v4, "curOffset":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to seek "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; curOffset="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "offsetBytes":J
    .end local p3    # "lengthBytes":J
    throw v2

    .line 259
    .end local v4    # "curOffset":J
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "offsetBytes":J
    .restart local p3    # "lengthBytes":J
    :cond_1
    :goto_0
    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1, p3, p4}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;J)V

    .line 262
    :cond_2
    return-object v1

    .line 249
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get the file for this session"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "offsetBytes":J
    .end local p3    # "lengthBytes":J
    throw v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "sessionFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "offsetBytes":J
    .restart local p3    # "lengthBytes":J
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private revokeAllFds()V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 490
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 489
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 492
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 518
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlobStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, "<unknown>"

    return-object v0

    .line 530
    :cond_0
    const-string v0, "<verified_invalid>"

    return-object v0

    .line 528
    :cond_1
    const-string v0, "<verified_valid>"

    return-object v0

    .line 526
    :cond_2
    const-string v0, "<committed>"

    return-object v0

    .line 524
    :cond_3
    const-string v0, "<abandoned>"

    return-object v0

    .line 520
    :cond_4
    const-string v0, "<opened>"

    return-object v0

    .line 522
    :cond_5
    const-string v0, "<closed>"

    return-object v0
.end method

.method private trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V
    .locals 2
    .param p1, "revocableFd"    # Landroid/os/RevocableFileDescriptor;

    .line 498
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    new-instance v0, Lcom/android/server/blob/-$$Lambda$BlobStoreSession$_dlP6mlWFgsO_muhvAWbTEy4QcM;

    invoke-direct {v0, p0, p1}, Lcom/android/server/blob/-$$Lambda$BlobStoreSession$_dlP6mlWFgsO_muhvAWbTEy4QcM;-><init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V

    invoke-virtual {p1, v0}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 506
    return-void

    .line 500
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public abandon()V
    .locals 2

    .line 415
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    .line 416
    return-void
.end method

.method public allowPackageAccess(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B

    .line 328
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 329
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1}, Lcom/android/server/blob/BlobAccessMode;->getNumWhitelistedPackages()I

    move-result v1

    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxPermittedPackages()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/blob/BlobAccessMode;->allowPackageAccess(Ljava/lang/String;[B)V

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 336
    :cond_0
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Landroid/os/LimitExceededException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many packages permitted to access the blob: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 338
    invoke-virtual {v4}, Lcom/android/server/blob/BlobAccessMode;->getNumWhitelistedPackages()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "certificate":[B
    throw v1

    .line 332
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "certificate":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to change access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 333
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "certificate":[B
    throw v1

    .line 341
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "certificate":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allowPublicAccess()V
    .locals 4

    .line 358
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 359
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1}, Lcom/android/server/blob/BlobAccessMode;->allowPublicAccess()V

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 361
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to change access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 362
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v1

    .line 365
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allowSameSignatureAccess()V
    .locals 4

    .line 346
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 347
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1}, Lcom/android/server/blob/BlobAccessMode;->allowSameSignatureAccess()V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 349
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to change access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 350
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v1

    .line 353
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    .line 411
    return-void
.end method

.method public commit(Landroid/app/blob/IBlobCommitCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/blob/IBlobCommitCallback;

    .line 420
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    .line 423
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    .line 424
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method computeDigest()V
    .locals 5

    .line 452
    const-wide/32 v0, 0x80000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeBlobDigest-i"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-l"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v3, v3, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/FileUtils;->digest(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 455
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "BlobStore"

    const-string v4, "Error computing the digest"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 459
    nop

    .line 460
    return-void

    .line 458
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 459
    throw v2
.end method

.method destroy()V
    .locals 1

    .line 483
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->revokeAllFds()V

    .line 484
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 485
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 6
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "dumpArgs"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 555
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownerUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownerPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creation time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    invoke-static {v2, v3}, Lcom/android/server/blob/BlobStoreUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v3

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string v1, "blobHandle:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 564
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpFull()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/app/blob/BlobHandle;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 565
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 567
    const-string v1, "accessMode:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 569
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1, p1}, Lcom/android/server/blob/BlobAccessMode;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 570
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open fds: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    monitor-exit v0

    return-object v1

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBlobHandle()Landroid/app/blob/BlobHandle;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-object v0
.end method

.method public getOwnerPackageName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUid()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    return v0
.end method

.method getSessionFile()Ljava/io/File;
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 511
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobFile(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method getState()I
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    monitor-exit v0

    return v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasAccess(ILjava/lang/String;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "callingPackageName"    # Ljava/lang/String;

    .line 161
    iget v0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isExpired()Z
    .locals 4

    .line 204
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 205
    .local v0, "lastModifiedTimeMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 206
    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 205
    :goto_0
    invoke-static {v2, v3}, Lcom/android/server/blob/BlobStoreConfig;->hasSessionExpired(J)Z

    move-result v2

    return v2
.end method

.method isFinalized()Z
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B

    .line 371
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 372
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    const-string v0, "certificate"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkByteArrayNotEmpty([BLjava/lang/String;)[B

    .line 375
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/blob/BlobAccessMode;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 377
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to get access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 378
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "certificate":[B
    throw v1

    .line 381
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "certificate":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPublicAccessAllowed()Z
    .locals 4

    .line 398
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 399
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1}, Lcom/android/server/blob/BlobAccessMode;->isPublicAccessAllowed()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 401
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to get access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 402
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v1

    .line 405
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSameSignatureAccessAllowed()Z
    .locals 4

    .line 386
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 387
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1}, Lcom/android/server/blob/BlobAccessMode;->isSameSignatureAccessAllowed()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 389
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to get access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 390
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v1

    .line 393
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$trackRevocableFdLocked$0$BlobStoreSession(Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .locals 2
    .param p1, "revocableFd"    # Landroid/os/RevocableFileDescriptor;
    .param p2, "e"    # Ljava/io/IOException;

    .line 502
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method open()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->isFinalized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to open session with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 168
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v1

    .line 171
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openRead()Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 271
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 272
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 277
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->shouldUseRevocableFdForReads()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 279
    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->openReadInternal()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v2

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->openReadInternal()Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 289
    new-instance v1, Landroid/os/RevocableFileDescriptor;

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 290
    .local v1, "revocableFd":Landroid/os/RevocableFileDescriptor;
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 291
    :try_start_4
    iget v4, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    if-ne v4, v2, :cond_1

    .line 296
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreSession;->trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V

    .line 297
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 292
    :cond_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 293
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to read in state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 294
    invoke-static {v5}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "revocableFd":Landroid/os/RevocableFileDescriptor;
    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v2

    .line 298
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local v1    # "revocableFd":Landroid/os/RevocableFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 299
    .end local v1    # "revocableFd":Landroid/os/RevocableFileDescriptor;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catch_1
    move-exception v1

    .line 300
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 301
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 274
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to read in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 275
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    throw v1

    .line 284
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public openWrite(JJ)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "offsetBytes"    # J
    .param p3, "lengthBytes"    # J

    .line 213
    const-string/jumbo v0, "offsetBytes must not be negative"

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 215
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 216
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreSession;->openWriteInternal(JJ)Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 226
    new-instance v1, Landroid/os/RevocableFileDescriptor;

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 227
    .local v1, "revocableFd":Landroid/os/RevocableFileDescriptor;
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :try_start_2
    iget v4, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    if-ne v4, v2, :cond_0

    .line 233
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreSession;->trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V

    .line 234
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 229
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 230
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to write in state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 231
    invoke-static {v5}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "revocableFd":Landroid/os/RevocableFileDescriptor;
    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "offsetBytes":J
    .end local p3    # "lengthBytes":J
    throw v2

    .line 235
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local v1    # "revocableFd":Landroid/os/RevocableFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "offsetBytes":J
    .restart local p3    # "lengthBytes":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "offsetBytes":J
    .end local p3    # "lengthBytes":J
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 236
    .end local v1    # "revocableFd":Landroid/os/RevocableFileDescriptor;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "offsetBytes":J
    .restart local p3    # "lengthBytes":J
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 238
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 218
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to write in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 219
    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .end local p1    # "offsetBytes":J
    .end local p3    # "lengthBytes":J
    throw v1

    .line 221
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreSession;
    .restart local p1    # "offsetBytes":J
    .restart local p3    # "lengthBytes":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method sendCommitCallbackResult(I)V
    .locals 4
    .param p1, "result"    # I

    .line 181
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    invoke-interface {v1, p1}, Landroid/app/blob/IBlobCommitCallback;->onResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "BlobStore"

    const-string v3, "Error sending the callback result"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlobStoreSession {id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method verifyBlobData()V
    .locals 9

    .line 463
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v2, v2, Landroid/app/blob/BlobHandle;->digest:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    goto :goto_1

    .line 468
    :cond_0
    const-string v1, "BlobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Digest of the data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    if-nez v3, :cond_1

    const-string/jumbo v3, "null"

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    invoke-static {v3}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") didn\'t match the given BlobHandle.digest ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v3, v3, Landroid/app/blob/BlobHandle;->digest:[B

    .line 471
    invoke-static {v3}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 474
    const/16 v2, 0x12a

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v3

    iget-wide v4, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 475
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v6

    const/4 v8, 0x3

    .line 474
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 476
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-virtual {v1, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->onStateChanged(Lcom/android/server/blob/BlobStoreSession;)V

    .line 479
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    const-string v1, "id"

    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 579
    const-string/jumbo v1, "p"

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 580
    const-string/jumbo v1, "u"

    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 581
    const-string v1, "crt"

    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 583
    const-string v1, "bh"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 584
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 585
    const-string v1, "bh"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    const-string v1, "am"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1, p1}, Lcom/android/server/blob/BlobAccessMode;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 589
    const-string v1, "am"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
