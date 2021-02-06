.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final ANCESTRAL_RECORD_KEY:Ljava/lang/String; = "@ancestral_record@"

.field private static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_HOME_KEY:Ljava/lang/String; = "@home@"

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field private static final STATE_FILE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PMBA"

.field private static final UNDEFINED_ANCESTRAL_RECORD_VERSION:I = -0x1


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredHome:Landroid/content/ComponentName;

.field private mRestoredHomeInstaller:Ljava/lang/String;

.field private mRestoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mRestoredHomeVersion:J

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredHomeComponent:Landroid/content/ComponentName;

.field private mStoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mStoredHomeVersion:J

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;I)V
    .locals 1
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I

    .line 137
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->evaluateStorablePackages()V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .locals 1
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 133
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 135
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/backup/PackageManagerBackupAgent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/backup/PackageManagerBackupAgent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHome:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/backup/PackageManagerBackupAgent;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # J

    .line 63
    iput-wide p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeVersion:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeInstaller:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeSigHashes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/io/DataInputStream;

    .line 63
    invoke-static {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I
    .locals 6
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    const/4 v0, -0x1

    .line 440
    .local v0, "ancestralRecordVersionValue":I
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    .line 446
    .local v2, "dataSize":I
    const-string v3, "@ancestral_record@"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    new-array v3, v2, [B

    .line 449
    .local v3, "inputBytes":[B
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 450
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 451
    .local v4, "inputBuffer":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 453
    .local v5, "inputBufferStream":Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 456
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "dataSize":I
    .end local v3    # "inputBytes":[B
    .end local v4    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .end local v5    # "inputBufferStream":Ljava/io/DataInputStream;
    :cond_0
    return v0
.end method

.method private getPreferredHomeComponent()Landroid/content/ComponentName;
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    .locals 3
    .param p1, "ancestralRecordVersion"    # I

    .line 460
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized ANCESTRAL_RECORD_VERSION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PMBA"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-object v1

    .line 464
    :cond_0
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V

    return-object v0

    .line 462
    :cond_1
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V

    return-object v0
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 162
    nop

    .line 163
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "a":I
    :goto_0
    if-ltz v2, :cond_1

    .line 166
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 167
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 171
    .end local v2    # "a":I
    :cond_1
    return-object v0
.end method

.method private init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .locals 1
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 144
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 145
    iput-object p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 150
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 151
    iput p3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    .line 152
    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 12
    .param p1, "stateFile"    # Landroid/os/ParcelFileDescriptor;

    .line 532
    const-string v0, "@meta@"

    const-string v1, "PMBA"

    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 533
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 534
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 535
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 536
    iput-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 537
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 538
    iput-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 544
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 545
    .local v3, "instream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 546
    .local v4, "inbuffer":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 549
    .local v5, "in":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 550
    .local v6, "ignoreExisting":Z
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, "pkg":Ljava/lang/String;
    const-string v8, "=state="

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 554
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 555
    .local v8, "stateVersion":I
    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported state file version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", redoing from start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void

    .line 560
    :cond_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 561
    .end local v8    # "stateVersion":I
    goto :goto_0

    .line 567
    :cond_1
    const-string v8, "Older version of saved state - rewriting"

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v6, 0x1

    .line 572
    :goto_0
    const-string v8, "@home@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 574
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 575
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 576
    invoke-static {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 578
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 584
    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 585
    .end local v6    # "ignoreExisting":Z
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 586
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 587
    if-nez v6, :cond_3

    .line 588
    iget-object v8, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 598
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 600
    .local v0, "versionCodeInt":I
    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_4

    .line 601
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .local v8, "versionCode":J
    goto :goto_2

    .line 603
    .end local v8    # "versionCode":J
    :cond_4
    int-to-long v8, v0

    .line 606
    .restart local v8    # "versionCode":J
    :goto_2
    if-nez v6, :cond_5

    .line 607
    iget-object v10, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_5
    iget-object v10, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    invoke-direct {v11, p0, v8, v9, v2}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    nop

    .end local v0    # "versionCodeInt":I
    .end local v8    # "versionCode":J
    goto :goto_1

    .line 591
    .restart local v6    # "ignoreExisting":Z
    :cond_6
    const-string v0, "No global metadata in state file!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    return-void

    .line 613
    .end local v6    # "ignoreExisting":Z
    .end local v7    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read Package Manager state file: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 611
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 616
    nop

    .line 617
    :goto_3
    return-void
.end method

.method private static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 487
    const-string v0, "PMBA"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .local v2, "num":I
    nop

    .line 497
    const/16 v3, 0x14

    if-gt v2, v3, :cond_3

    .line 506
    const/4 v3, 0x0

    .line 507
    .local v3, "nonHashFound":Z
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .local v4, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 509
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 510
    .local v6, "len":I
    new-array v7, v6, [B

    .line 511
    .local v7, "readHash":[B
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 512
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    const/16 v8, 0x20

    if-eq v6, v8, :cond_0

    .line 514
    const/4 v3, 0x1

    .line 508
    .end local v6    # "len":I
    .end local v7    # "readHash":[B
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 518
    .end local v5    # "i":I
    :cond_1
    if-eqz v3, :cond_2

    .line 520
    invoke-static {v4}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    .line 523
    :cond_2
    return-object v4

    .line 498
    .end local v3    # "nonHashFound":Z
    .end local v4    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_3
    const-string v3, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Bad restore state"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "in":Ljava/io/DataInputStream;
    throw v3

    .line 524
    .end local v2    # "num":I
    .restart local p0    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 488
    :catch_1
    move-exception v2

    .line 490
    .local v2, "e":Ljava/io/EOFException;
    const-string v3, "Read empty signature block"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 491
    return-object v1

    .line 525
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    const-string v3, "Unable to read signatures"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-object v1
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 410
    array-length v0, p2

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 411
    return-void
.end method

.method private static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    .local p1, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 477
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 478
    .local v1, "buffer":[B
    array-length v2, v1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 479
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 480
    .end local v1    # "buffer":[B
    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p2, "preferredHome"    # Landroid/content/ComponentName;
    .param p3, "homeVersion"    # J
    .param p6, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 626
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local p5, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 627
    .local v0, "outstream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 628
    .local v1, "outbuf":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 633
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    const-string v3, "=state="

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 634
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 637
    if-eqz p2, :cond_0

    .line 638
    const-string v3, "@home@"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v2, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 641
    invoke-static {v2, p5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 645
    :cond_0
    const-string v3, "@meta@"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 646
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 647
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 650
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 651
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 652
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v5, :cond_1

    .line 653
    const/high16 v5, -0x80000000

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 654
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    .line 656
    :cond_1
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 658
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_1
    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    goto :goto_2

    .line 661
    :catch_0
    move-exception v3

    .line 662
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "PMBA"

    const-string v5, "Unable to write package manager state file!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method


# virtual methods
.method public evaluateStorablePackages()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 158
    return-void
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "PMBA"

    const-string v1, "getRestoredMetadata() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    return-object v0
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 189
    const-string v0, "PMBA"

    const-string v1, "getRestoredPackages() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasMetadata()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 27
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 206
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const-string v1, "Unable to write package backup data file!"

    const-string v2, "@meta@"

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v10, v0

    .line 207
    .local v10, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v11, v0

    .line 208
    .local v11, "outputBufferStream":Ljava/io/DataOutputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 213
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    const-string v3, "PMBA"

    if-eqz v0, :cond_0

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous metadata "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mismatch vs "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - rewriting"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 228
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 229
    const-string v0, "@ancestral_record@"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v9, v0, v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 234
    nop

    .line 236
    const-wide/16 v5, 0x0

    .line 237
    .local v5, "homeVersion":J
    const/4 v7, 0x0

    .line 238
    .local v7, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v12, 0x0

    .line 239
    .local v12, "homeInfo":Landroid/content/pm/PackageInfo;
    const/4 v13, 0x0

    .line 240
    .local v13, "homeInstaller":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getPreferredHomeComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 241
    .local v14, "home":Landroid/content/ComponentName;
    if-eqz v14, :cond_3

    .line 243
    :try_start_1
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v15, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-wide/from16 v18, v5

    const/high16 v5, 0x8000000

    .end local v5    # "homeVersion":J
    .local v18, "homeVersion":J
    :try_start_2
    invoke-virtual {v0, v4, v5, v15}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v12, v0

    .line 245
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 246
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v5, v4

    .line 247
    .end local v18    # "homeVersion":J
    .restart local v5    # "homeVersion":J
    :try_start_3
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 248
    .local v0, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v0, :cond_2

    .line 249
    const-string v4, "Home app has no signing information"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 254
    .local v4, "homeInfoSignatures":[Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v15
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v7, v15

    .line 260
    .end local v0    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v4    # "homeInfoSignatures":[Landroid/content/pm/Signature;
    :goto_0
    move-object v15, v12

    move-object/from16 v18, v13

    move-wide v12, v5

    move-object/from16 v24, v14

    move-object v14, v7

    move-object/from16 v7, v24

    goto :goto_2

    .line 256
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v5    # "homeVersion":J
    .restart local v18    # "homeVersion":J
    :catch_1
    move-exception v0

    move-wide/from16 v5, v18

    goto :goto_1

    .end local v18    # "homeVersion":J
    .restart local v5    # "homeVersion":J
    :catch_2
    move-exception v0

    move-wide/from16 v18, v5

    .line 257
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    const-string v4, "Can\'t access preferred home info"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v14, 0x0

    move-object v15, v12

    move-object/from16 v18, v13

    move-wide v12, v5

    move-object/from16 v24, v14

    move-object v14, v7

    move-object/from16 v7, v24

    goto :goto_2

    .line 241
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-wide/from16 v18, v5

    .end local v5    # "homeVersion":J
    .restart local v18    # "homeVersion":J
    move-object v15, v12

    move-object/from16 v24, v14

    move-object v14, v7

    move-object/from16 v7, v24

    move-wide/from16 v25, v18

    move-object/from16 v18, v13

    move-wide/from16 v12, v25

    .line 269
    .end local v13    # "homeInstaller":Ljava/lang/String;
    .local v7, "home":Landroid/content/ComponentName;
    .local v12, "homeVersion":J
    .local v14, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v15, "homeInfo":Landroid/content/pm/PackageInfo;
    .local v18, "homeInstaller":Ljava/lang/String;
    :goto_2
    :try_start_4
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v4, v0

    .line 270
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-wide v5, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    cmp-long v0, v12, v5

    if-nez v0, :cond_5

    :try_start_5
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 271
    invoke-static {v7, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v7, :cond_4

    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 273
    invoke-static {v0, v15, v4}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_4

    .line 397
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catch_3
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_c

    .line 273
    .restart local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_5
    :goto_3
    const/16 v16, 0x1

    :goto_4
    move/from16 v5, v16

    .line 274
    .local v5, "needHomeBackup":Z
    if-eqz v5, :cond_8

    .line 278
    const-string v0, "@home@"

    if-eqz v7, :cond_7

    .line 279
    :try_start_6
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 280
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 282
    if-eqz v18, :cond_6

    move-object/from16 v6, v18

    goto :goto_5

    :cond_6
    const-string v6, ""

    :goto_5
    invoke-virtual {v11, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 283
    invoke-static {v11, v14}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 284
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v9, v0, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_6

    .line 286
    :cond_7
    const/4 v6, -0x1

    invoke-virtual {v9, v0, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 299
    :cond_8
    :goto_6
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 300
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    if-nez v0, :cond_9

    .line 302
    :try_start_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 303
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v9, v2, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    .line 308
    :cond_9
    :try_start_9
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 313
    :goto_7
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v0, :cond_f

    :try_start_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    .line 314
    .local v16, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v19, v4

    move-object/from16 v4, v16

    .end local v16    # "pkg":Landroid/content/pm/PackageInfo;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .local v19, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 315
    .local v16, "packName":Ljava/lang/String;
    move-object/from16 v20, v4

    move-object/from16 v4, v16

    .end local v16    # "packName":Ljava/lang/String;
    .local v4, "packName":Ljava/lang/String;
    .local v20, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    if-eqz v0, :cond_a

    .line 317
    move-object/from16 v4, v19

    goto :goto_8

    .line 319
    :cond_a
    const/16 v16, 0x0

    .line 321
    .local v16, "info":Landroid/content/pm/PackageInfo;
    :try_start_b
    iget-object v0, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-object/from16 v21, v2

    :try_start_c
    iget v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    move/from16 v22, v5

    const/high16 v5, 0x8000000

    .end local v5    # "needHomeBackup":Z
    .local v22, "needHomeBackup":Z
    :try_start_d
    invoke-virtual {v0, v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 328
    .end local v16    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 330
    :try_start_e
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 336
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16

    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-object/from16 v23, v6

    iget-wide v5, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    cmp-long v2, v16, v5

    if-nez v2, :cond_c

    .line 338
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto :goto_8

    .line 330
    :cond_b
    move-object/from16 v23, v6

    .line 342
    :cond_c
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 343
    .local v2, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v2, :cond_d

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not backing up package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " since it appears to have no signatures."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_8

    .line 358
    :cond_d
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 359
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v5, :cond_e

    .line 360
    const/high16 v5, -0x80000000

    invoke-virtual {v11, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_9

    .line 363
    :cond_e
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v11, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 366
    :goto_9
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 367
    .local v5, "infoSignatures":[Landroid/content/pm/Signature;
    nop

    .line 368
    invoke-static {v5}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v6

    .line 367
    invoke-static {v11, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 377
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v9, v4, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 379
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v4    # "packName":Ljava/lang/String;
    .end local v5    # "infoSignatures":[Landroid/content/pm/Signature;
    .end local v20    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_8

    .line 323
    .restart local v4    # "packName":Ljava/lang/String;
    .restart local v16    # "info":Landroid/content/pm/PackageInfo;
    .restart local v20    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_4
    move-exception v0

    move-object/from16 v23, v6

    goto :goto_b

    .end local v22    # "needHomeBackup":Z
    .local v5, "needHomeBackup":Z
    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v21, v2

    :goto_a
    move/from16 v22, v5

    move-object/from16 v23, v6

    .line 326
    .end local v5    # "needHomeBackup":Z
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v22    # "needHomeBackup":Z
    :goto_b
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 327
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_8

    .line 313
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "info":Landroid/content/pm/PackageInfo;
    .end local v19    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v20    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v22    # "needHomeBackup":Z
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "needHomeBackup":Z
    :cond_f
    move-object/from16 v19, v4

    move/from16 v22, v5

    .line 401
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "needHomeBackup":Z
    nop

    .line 404
    iget-object v2, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    move-object/from16 v1, p0

    move-object v3, v7

    move-wide v4, v12

    move-object v6, v14

    move-object/from16 v16, v7

    .end local v7    # "home":Landroid/content/ComponentName;
    .local v16, "home":Landroid/content/ComponentName;
    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V

    .line 405
    return-void

    .line 397
    .end local v16    # "home":Landroid/content/ComponentName;
    .restart local v7    # "home":Landroid/content/ComponentName;
    :catch_7
    move-exception v0

    move-object/from16 v16, v7

    .line 399
    .end local v7    # "home":Landroid/content/ComponentName;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "home":Landroid/content/ComponentName;
    :goto_c
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 230
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "homeVersion":J
    .end local v14    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "homeInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "home":Landroid/content/ComponentName;
    .end local v18    # "homeInstaller":Ljava/lang/String;
    :catch_8
    move-exception v0

    .line 232
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I

    move-result v0

    .line 428
    .local v0, "ancestralRecordVersion":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;

    move-result-object v1

    .line 429
    .local v1, "consumer":Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    if-nez v1, :cond_0

    .line 430
    const-string v2, "PMBA"

    const-string v3, "Ancestral restore set version is unknown to this Android version; not restoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 434
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;->consumeRestoreData(Landroid/app/backup/BackupDataInput;)V

    .line 436
    return-void
.end method
