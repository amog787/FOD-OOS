.class Lcom/android/server/blob/BlobMetadata;
.super Ljava/lang/Object;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobMetadata$Accessor;,
        Lcom/android/server/blob/BlobMetadata$Leasee;,
        Lcom/android/server/blob/BlobMetadata$Committer;
    }
.end annotation


# instance fields
.field private mBlobFile:Ljava/io/File;

.field private final mBlobHandle:Landroid/app/blob/BlobHandle;

.field private final mBlobId:J

.field private final mCommitters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Committer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLeasees:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataLock:Ljava/lang/Object;

.field private final mRevocableFds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blobId"    # J
    .param p4, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p5, "userId"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 110
    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 111
    iput-wide p2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 112
    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 113
    iput p5, p0, Lcom/android/server/blob/BlobMetadata;->mUserId:I

    .line 114
    return-void
.end method

.method static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;
    .locals 15
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    move-object v0, p0

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 591
    .local v8, "blobId":J
    const-string/jumbo v1, "us"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 593
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 594
    .local v2, "blobHandle":Landroid/app/blob/BlobHandle;
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v10, v3

    .line 595
    .local v10, "committers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/blob/BlobMetadata$Committer;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v3

    .line 596
    .local v11, "leasees":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/blob/BlobMetadata$Leasee;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move-object v13, v2

    .line 597
    .end local v2    # "blobHandle":Landroid/app/blob/BlobHandle;
    .local v12, "depth":I
    .local v13, "blobHandle":Landroid/app/blob/BlobHandle;
    :goto_0
    invoke-static {p0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    move-result-object v13

    goto :goto_0

    .line 600
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "c"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    invoke-static/range {p0 .. p1}, Lcom/android/server/blob/BlobMetadata$Committer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Committer;

    move-result-object v2

    .line 602
    .local v2, "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    if-eqz v2, :cond_2

    .line 603
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    .end local v2    # "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "l"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    invoke-static/range {p0 .. p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Leasee;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    :cond_2
    :goto_1
    goto :goto_0

    .line 610
    :cond_3
    if-nez v13, :cond_4

    .line 611
    const-string v2, "BlobStore"

    const-string v3, "blobHandle should be available"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v2, 0x0

    return-object v2

    .line 615
    :cond_4
    new-instance v14, Lcom/android/server/blob/BlobMetadata;

    move-object v2, v14

    move-object/from16 v3, p2

    move-wide v4, v8

    move-object v6, v13

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;I)V

    .line 616
    .local v2, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v2, v10}, Lcom/android/server/blob/BlobMetadata;->setCommitters(Landroid/util/ArraySet;)V

    .line 617
    invoke-virtual {v2, v11}, Lcom/android/server/blob/BlobMetadata;->setLeasees(Landroid/util/ArraySet;)V

    .line 618
    return-object v2
.end method

.method private createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 397
    .local v0, "revocableFd":Landroid/os/RevocableFileDescriptor;
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 399
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 400
    .local v2, "revocableFdsForPkg":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/RevocableFileDescriptor;>;"
    if-nez v2, :cond_0

    .line 401
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 402
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 405
    nop

    .end local v2    # "revocableFdsForPkg":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/RevocableFileDescriptor;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/blob/-$$Lambda$BlobMetadata$v3ybej_1iW66CdnLprsLCDivz-o;-><init>(Lcom/android/server/blob/BlobMetadata;Ljava/lang/String;Landroid/os/RevocableFileDescriptor;)V

    invoke-virtual {v0, v1}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 418
    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 405
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getAccessor(Landroid/util/ArraySet;Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Accessor;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/blob/BlobMetadata$Accessor;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 286
    .local p0, "accessors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 287
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 288
    .local v2, "accessor":Lcom/android/server/blob/BlobMetadata$Accessor;
    const/4 v3, -0x1

    if-eqz p1, :cond_0

    if-eq p2, v3, :cond_0

    .line 289
    invoke-virtual {v2, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    return-object v2

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    iget-object v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    return-object v2

    .line 293
    :cond_1
    if-eq p2, v3, :cond_2

    iget v3, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v3, p2, :cond_2

    .line 294
    return-object v2

    .line 286
    .end local v2    # "accessor":Lcom/android/server/blob/BlobMetadata$Accessor;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasOtherLeasees(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 317
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 319
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 320
    .local v3, "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    goto :goto_1

    .line 324
    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    if-eq p2, v4, :cond_1

    .line 325
    invoke-virtual {v3, p1, p2}, Lcom/android/server/blob/BlobMetadata$Leasee;->equals(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 326
    monitor-exit v0

    return v5

    .line 327
    :cond_1
    if-eqz p1, :cond_2

    iget-object v6, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 328
    monitor-exit v0

    return v5

    .line 329
    :cond_2
    if-eq p2, v4, :cond_3

    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    if-eq v4, p2, :cond_3

    .line 330
    monitor-exit v0

    return v5

    .line 318
    .end local v3    # "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4
    monitor-exit v0

    .line 334
    const/4 v0, 0x0

    return v0

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isAnAccessor(Landroid/util/ArraySet;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/blob/BlobMetadata$Accessor;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 280
    .local p0, "accessors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeCommitter$0(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "committer"    # Lcom/android/server/blob/BlobMetadata$Committer;

    .line 147
    iget v0, p2, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeCommittersFromUnknownPkgs$1(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .locals 2
    .param p0, "knownPackages"    # Landroid/util/SparseArray;
    .param p1, "committer"    # Lcom/android/server/blob/BlobMetadata$Committer;

    .line 160
    iget-object v0, p1, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeExpiredLeases$4(Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .locals 1
    .param p0, "leasee"    # Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 212
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeLeasee$2(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "leasee"    # Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 199
    iget v0, p2, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeLeaseesFromUnknownPkgs$3(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .locals 2
    .param p0, "knownPackages"    # Landroid/util/SparseArray;
    .param p1, "leasee"    # Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 206
    iget-object v0, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private revokeAllFds()V
    .locals 7

    .line 427
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 428
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "pkgCount":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 429
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 430
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 431
    .local v3, "packageFds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/RevocableFileDescriptor;>;"
    if-nez v3, :cond_0

    .line 432
    goto :goto_2

    .line 434
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    .local v5, "fdCount":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 435
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v6}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 428
    .end local v3    # "packageFds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/RevocableFileDescriptor;>;"
    .end local v4    # "j":I
    .end local v5    # "fdCount":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "i":I
    .end local v2    # "pkgCount":I
    :cond_2
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .locals 2
    .param p1, "committer"    # Lcom/android/server/blob/BlobMetadata$Committer;

    .line 129
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addOrReplaceLeasee(Ljava/lang/String;IILjava/lang/CharSequence;J)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "descriptionResId"    # I
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "leaseExpiryTimeMillis"    # J

    .line 179
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 182
    :try_start_0
    new-instance v0, Lcom/android/server/blob/BlobMetadata$Leasee;

    iget-object v4, v1, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-wide/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V

    .line 184
    .local v0, "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    iget-object v3, v1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v3, v1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 186
    nop

    .end local v0    # "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    monitor-exit v2

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method destroy()V
    .locals 1

    .line 422
    invoke-direct {p0}, Lcom/android/server/blob/BlobMetadata;->revokeAllFds()V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 424
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 7
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "dumpArgs"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 511
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    const-string v1, "blobHandle:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 514
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpFull()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/app/blob/BlobHandle;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 515
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v3

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 518
    const-string v1, "Committers:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 520
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "<empty>"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 524
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 525
    .local v3, "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "committer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Committer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 527
    invoke-virtual {v3, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 528
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 523
    nop

    .end local v3    # "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 533
    const-string v1, "Leasees:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 535
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    const-string v1, "<empty>"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 538
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .restart local v2    # "count":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 539
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 540
    .local v3, "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "leasee "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Leasee;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 542
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->dump(Landroid/content/Context;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 543
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 538
    nop

    .end local v3    # "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 546
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 548
    const-string v1, "Open fds:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 550
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 551
    const-string v1, "<empty>"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 553
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .restart local v2    # "count":I
    :goto_4
    if-ge v1, v2, :cond_5

    .line 554
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 555
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 556
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 557
    .local v4, "packageFds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/RevocableFileDescriptor;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 553
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageFds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/RevocableFileDescriptor;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 560
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 561
    monitor-exit v0

    .line 562
    return-void

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpAsStatsEvent(I)Landroid/util/StatsEvent;
    .locals 16
    .param p1, "atomTag"    # I

    .line 468
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 471
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v1, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    const-wide v5, 0x10300000002L

    const-wide v7, 0x10500000001L

    const-wide v9, 0x20b00000001L

    if-ge v3, v4, :cond_0

    .line 472
    iget-object v11, v1, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 473
    .local v11, "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 475
    .local v9, "token":J
    iget v12, v11, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    invoke-virtual {v0, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 476
    iget-wide v7, v11, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 478
    const-wide v5, 0x10500000003L

    iget-object v7, v11, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 479
    invoke-virtual {v7}, Lcom/android/server/blob/BlobAccessMode;->getAccessType()I

    move-result v7

    .line 478
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 480
    const-wide v5, 0x10500000004L

    iget-object v7, v11, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 481
    invoke-virtual {v7}, Lcom/android/server/blob/BlobAccessMode;->getNumWhitelistedPackages()I

    move-result v7

    .line 480
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 482
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 471
    .end local v9    # "token":J
    .end local v11    # "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 486
    .local v3, "committersBytes":[B
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v0, v4

    .line 488
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v11, v1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    .local v11, "size":I
    :goto_1
    if-ge v4, v11, :cond_1

    .line 489
    iget-object v12, v1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 490
    .local v12, "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 491
    .local v13, "token":J
    iget v15, v12, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-virtual {v0, v7, v8, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 492
    iget-wide v7, v12, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 494
    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 488
    .end local v12    # "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    .end local v13    # "token":J
    add-int/lit8 v4, v4, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_1

    .line 496
    .end local v4    # "i":I
    .end local v11    # "size":I
    :cond_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v4

    .line 499
    .local v4, "leaseesBytes":[B
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    move/from16 v6, p1

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v7, v1, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 501
    invoke-virtual {v5, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 503
    invoke-virtual {v7}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 504
    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 505
    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 506
    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    monitor-exit v2

    .line 499
    return-object v5

    .line 507
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "committersBytes":[B
    .end local v4    # "leaseesBytes":[B
    :catchall_0
    move-exception v0

    move/from16 v6, p1

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method forEachLeasee(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/blob/BlobMetadata$Leasee;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBlobFile()Ljava/io/File;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 367
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->getBlobFile(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    return-object v0
.end method

.method getBlobHandle()Landroid/app/blob/BlobHandle;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-object v0
.end method

.method getBlobId()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    return-wide v0
.end method

.method getExistingCommitter(Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Committer;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    monitor-enter v0

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 169
    .local v3, "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Committer;->uid:I

    if-ne v4, p2, :cond_0

    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    monitor-exit v0

    return-object v3

    .line 167
    .end local v3    # "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    monitor-exit v0

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLeaseInfo(Ljava/lang/String;I)Landroid/app/blob/LeaseInfo;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 341
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 342
    .local v3, "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    goto :goto_2

    .line 345
    :cond_0
    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    if-ne v4, p2, :cond_2

    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 347
    const/4 v4, 0x0

    move v9, v4

    goto :goto_1

    .line 348
    :cond_1
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v5, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    .line 350
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 348
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    move v9, v4

    :goto_1
    nop

    .line 351
    .local v9, "descriptionResId":I
    new-instance v4, Landroid/app/blob/LeaseInfo;

    iget-wide v7, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    iget-object v10, v3, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    monitor-exit v0

    return-object v4

    .line 340
    .end local v3    # "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    .end local v9    # "descriptionResId":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    monitor-exit v0

    .line 356
    const/4 v0, 0x0

    return-object v0

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSize()J
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method getUserId()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/android/server/blob/BlobMetadata;->mUserId:I

    return v0
.end method

.method hasLeaseWaitTimeElapsedForAll()Z
    .locals 5

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 459
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 460
    .local v2, "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata$Committer;->getCommitTimeMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/blob/BlobStoreConfig;->hasLeaseWaitTimeElapsed(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    const/4 v3, 0x0

    return v3

    .line 458
    .end local v2    # "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method hasOtherLeasees(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasOtherLeasees(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 309
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasValidLeases()Z
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 219
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isACommitter(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 265
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-static {v1, p1, p2}, Lcom/android/server/blob/BlobMetadata;->isAnAccessor(Landroid/util/ArraySet;Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isALeasee(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isALeasee(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 301
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isALeasee(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 271
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-static {v1, p1, p2}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 273
    .local v1, "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 274
    .end local v1    # "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAccessAllowedForCaller(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 233
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    return v1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 239
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 240
    .local v5, "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Lcom/android/server/blob/BlobMetadata$Leasee;->equals(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    monitor-exit v0

    return v4

    .line 238
    .end local v5    # "leasee":Lcom/android/server/blob/BlobMetadata$Leasee;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .restart local v3    # "size":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 246
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 249
    .local v5, "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/blob/BlobMetadata$Committer;->equals(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 250
    monitor-exit v0

    return v4

    .line 255
    :cond_3
    iget-object v6, v5, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget-object v7, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/blob/BlobMetadata$Committer;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 257
    monitor-exit v0

    return v4

    .line 245
    .end local v5    # "committer":Lcom/android/server/blob/BlobMetadata$Committer;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_5
    monitor-exit v0

    .line 261
    return v1

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$createRevocableFd$5$BlobMetadata(Ljava/lang/String;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "revocableFd"    # Landroid/os/RevocableFileDescriptor;
    .param p3, "e"    # Ljava/io/IOException;

    .line 407
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 409
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 410
    .local v1, "revocableFdsForPkg":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/RevocableFileDescriptor;>;"
    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 412
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v1    # "revocableFdsForPkg":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/RevocableFileDescriptor;>;"
    :cond_0
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method openForRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    .local v0, "fd":Ljava/io/FileDescriptor;
    nop

    .line 381
    :try_start_1
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->shouldUseRevocableFdForReads()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-direct {p0, v0, p1}, Lcom/android/server/blob/BlobMetadata;->createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 384
    :cond_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 388
    throw v1

    .line 377
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 378
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .locals 2
    .param p1, "committer"    # Lcom/android/server/blob/BlobMetadata$Committer;

    .line 152
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCommitter(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 145
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/-$$Lambda$BlobMetadata$_Q3RdLQa7SD-hcTj9iyZbol_1jQ;

    invoke-direct {v2, p2, p1}, Lcom/android/server/blob/-$$Lambda$BlobMetadata$_Q3RdLQa7SD-hcTj9iyZbol_1jQ;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 148
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCommittersFromUnknownPkgs(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "knownPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/-$$Lambda$BlobMetadata$ZLUtpaxm5vrphr-VF5zFTkZmuGk;

    invoke-direct {v2, p1}, Lcom/android/server/blob/-$$Lambda$BlobMetadata$ZLUtpaxm5vrphr-VF5zFTkZmuGk;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeExpiredLeases()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/blob/-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA;->INSTANCE:Lcom/android/server/blob/-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLeasee(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/-$$Lambda$BlobMetadata$ss6n7RYhTcjpj9A5JVhfktAFhAE;

    invoke-direct {v2, p2, p1}, Lcom/android/server/blob/-$$Lambda$BlobMetadata$ss6n7RYhTcjpj9A5JVhfktAFhAE;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLeaseesFromUnknownPkgs(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "knownPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/-$$Lambda$BlobMetadata$LDMVKrrVY25j641vnzGpEybLu1s;

    invoke-direct {v2, p1}, Lcom/android/server/blob/-$$Lambda$BlobMetadata$LDMVKrrVY25j641vnzGpEybLu1s;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setCommitters(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Committer;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "committers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/blob/BlobMetadata$Committer;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 140
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 141
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLeasees(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "leasees":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/blob/BlobMetadata$Leasee;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 192
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shouldBeDeleted(Z)Z
    .locals 2
    .param p1, "respectLeaseWaitTime"    # Z

    .line 443
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 444
    return v1

    .line 448
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasLeaseWaitTimeElapsedForAll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    return v1

    .line 453
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    const-string v1, "id"

    iget-wide v2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 567
    const-string/jumbo v1, "us"

    iget v2, p0, Lcom/android/server/blob/BlobMetadata;->mUserId:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 569
    const-string v1, "bh"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 571
    const-string v1, "bh"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 574
    const-string v4, "c"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual {v4, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 576
    const-string v4, "c"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    .end local v3    # "count":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .restart local v3    # "count":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 580
    const-string/jumbo v4, "l"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 581
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v4, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 582
    const-string/jumbo v4, "l"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 584
    .end local v1    # "i":I
    .end local v3    # "count":I
    :cond_1
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
