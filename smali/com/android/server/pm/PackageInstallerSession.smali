.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$StreamingException;,
        Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;,
        Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;,
        Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    }
.end annotation


# static fields
.field private static final ATTR_ABI_OVERRIDE:Ljava/lang/String; = "abiOverride"

.field private static final ATTR_APP_ICON:Ljava/lang/String; = "appIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_APP_LABEL:Ljava/lang/String; = "appLabel"

.field private static final ATTR_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field private static final ATTR_COMMITTED:Ljava/lang/String; = "committed"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_DATALOADER_ARGUMENTS:Ljava/lang/String; = "dataLoaderArguments"

.field private static final ATTR_DATALOADER_CLASS_NAME:Ljava/lang/String; = "dataLoaderClassName"

.field private static final ATTR_DATALOADER_PACKAGE_NAME:Ljava/lang/String; = "dataLoaderPackageName"

.field private static final ATTR_DATALOADER_TYPE:Ljava/lang/String; = "dataLoaderType"

.field private static final ATTR_DESTROYED:Ljava/lang/String; = "destroyed"

.field private static final ATTR_INITIATING_PACKAGE_NAME:Ljava/lang/String; = "installInitiatingPackageName"

.field private static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field private static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field private static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field private static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "installRason"

.field private static final ATTR_IS_APPLIED:Ljava/lang/String; = "isApplied"

.field private static final ATTR_IS_DATALOADER:Ljava/lang/String; = "isDataLoader"

.field private static final ATTR_IS_FAILED:Ljava/lang/String; = "isFailed"

.field private static final ATTR_IS_READY:Ljava/lang/String; = "isReady"

.field private static final ATTR_LENGTH_BYTES:Ljava/lang/String; = "lengthBytes"

.field private static final ATTR_LOCATION:Ljava/lang/String; = "location"

.field private static final ATTR_METADATA:Ljava/lang/String; = "metadata"

.field private static final ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final ATTR_MULTI_PACKAGE:Ljava/lang/String; = "multiPackage"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "installOriginatingPackageName"

.field private static final ATTR_ORIGINATING_UID:Ljava/lang/String; = "originatingUid"

.field private static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field private static final ATTR_PARENT_SESSION_ID:Ljava/lang/String; = "parentSessionId"

.field private static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field private static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field private static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field private static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field private static final ATTR_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field private static final ATTR_STAGED_SESSION:Ljava/lang/String; = "stagedSession"

.field private static final ATTR_STAGED_SESSION_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final ATTR_STAGED_SESSION_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final ATTR_UPDATED_MILLIS:Ljava/lang/String; = "updatedMillis"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field private static final EMPTY_CHILD_SESSION_ARRAY:[I

.field private static final EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

.field private static final INCREMENTAL_STORAGE_BLOCKED_TIMEOUT_MS:I = 0x7d0

.field private static final INCREMENTAL_STORAGE_UNHEALTHY_MONITORING_MS:I = 0xea60

.field private static final INCREMENTAL_STORAGE_UNHEALTHY_TIMEOUT_MS:I = 0x1b58

.field private static final LOGD:Z = true

.field private static final MSG_INSTALL:I = 0x2

.field private static final MSG_ON_PACKAGE_INSTALLED:I = 0x3

.field private static final MSG_SESSION_VERIFICATION_FAILURE:I = 0x4

.field private static final MSG_STREAM_VALIDATE_AND_COMMIT:I = 0x1

.field private static final PROPERTY_NAME_INHERIT_NATIVE:Ljava/lang/String; = "pi.inherit_native_on_dont_kill"

.field private static final REMOVE_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final SYSTEM_DATA_LOADER_PACKAGE:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "PackageInstallerSession"

.field private static final TAG_AUTO_REVOKE_PERMISSIONS_MODE:Ljava/lang/String; = "auto-revoke-permissions-mode"

.field static final TAG_CHILD_SESSION:Ljava/lang/String; = "childSession"

.field private static final TAG_GRANTED_RUNTIME_PERMISSION:Ljava/lang/String; = "granted-runtime-permission"

.field static final TAG_SESSION:Ljava/lang/String; = "session"

.field static final TAG_SESSION_FILE:Ljava/lang/String; = "sessionFile"

.field private static final TAG_WHITELISTED_RESTRICTED_PERMISSION:Ljava/lang/String; = "whitelisted-restricted-permission"

.field private static final sAddedApkFilter:Ljava/io/FileFilter;

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field private final MAX_INSTALL_DURATION:I

.field final createdMillis:J

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBridges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mChildSessionIds:Landroid/util/SparseIntArray;

.field private mClientProgress:F

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private mDataLoaderFinished:Z

.field private mDestroyed:Z

.field private final mFds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mFiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/PackageInstallerSession$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;

.field private mFinalStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

.field private mInheritedFilesBase:Ljava/io/File;

.field private mInstallSource:Lcom/android/server/pm/InstallSource;

.field private mInstallerUid:I

.field private mInternalProgress:F

.field private mIsPerfLockAcquired:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOriginalInstallerUid:I

.field private mPackageName:Ljava/lang/String;

.field private mParentSessionId:I

.field private mPerfBoostInstall:Landroid/util/BoostFramework;

.field private mPermissionsManuallyAccepted:Z

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z

.field private mProgress:F

.field private mRelinquished:Z

.field private mRemoteStatusReceiver:Landroid/content/IntentSender;

.field private mReportedProgress:F

.field private mResolvedBaseFile:Ljava/io/File;

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedNativeLibPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z

.field private final mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

.field private mShouldBeSealed:Z

.field private mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private mStagedSessionApplied:Z

.field private mStagedSessionErrorCode:I

.field private mStagedSessionErrorMessage:Ljava/lang/String;

.field private mStagedSessionFailed:Z

.field private mStagedSessionReady:Z

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;

.field private mVerityFound:Z

.field private mVersionCode:J

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field private updatedMillis:J

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 233
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 234
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    .line 416
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    .line 428
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 438
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;ZZZZ[IIZZZILjava/lang/String;)V
    .locals 18
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "sessionProvider"    # Lcom/android/server/pm/PackageSessionProvider;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "stagingManager"    # Lcom/android/server/pm/StagingManager;
    .param p7, "sessionId"    # I
    .param p8, "userId"    # I
    .param p9, "installerUid"    # I
    .param p10, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p11, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p12, "createdMillis"    # J
    .param p14, "stageDir"    # Ljava/io/File;
    .param p15, "stageCid"    # Ljava/lang/String;
    .param p16, "files"    # [Landroid/content/pm/InstallationFile;
    .param p17, "prepared"    # Z
    .param p18, "committed"    # Z
    .param p19, "destroyed"    # Z
    .param p20, "sealed"    # Z
    .param p21, "childSessionIds"    # [I
    .param p22, "parentSessionId"    # I
    .param p23, "isReady"    # Z
    .param p24, "isFailed"    # Z
    .param p25, "isApplied"    # Z
    .param p26, "stagedSessionErrorCode"    # I
    .param p27, "stagedSessionErrorMessage"    # Ljava/lang/String;

    .line 555
    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p11

    move-wide/from16 v3, p12

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    move-object/from16 v8, p21

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 255
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    .line 256
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 257
    const/16 v10, 0x4e20

    iput v10, v0, Lcom/android/server/pm/PackageInstallerSession;->MAX_INSTALL_DURATION:I

    .line 268
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 270
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 287
    const/4 v10, 0x0

    iput v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 289
    iput v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 292
    iput v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 294
    const/high16 v10, -0x40800000    # -1.0f

    iput v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 298
    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 300
    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 302
    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 304
    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 306
    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 308
    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 312
    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 320
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 322
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 335
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    .line 373
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 382
    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 398
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 400
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 402
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 404
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 411
    iput-boolean v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 447
    new-instance v10, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v10, v0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 556
    move-object/from16 v10, p1

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 557
    move-object/from16 v11, p2

    iput-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 558
    move-object/from16 v12, p3

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 559
    move-object/from16 v13, p4

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 560
    new-instance v14, Landroid/os/Handler;

    iget-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v9, p5

    invoke-direct {v14, v9, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 561
    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 563
    move/from16 v15, p7

    iput v15, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 564
    move/from16 v9, p8

    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 565
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 566
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 567
    invoke-static/range {p10 .. p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p10

    check-cast v1, Lcom/android/server/pm/InstallSource;

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 568
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 569
    iput-wide v3, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 570
    iput-wide v3, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 571
    iput-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 572
    iput-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 573
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 574
    if-eqz v8, :cond_1

    .line 575
    array-length v1, v8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v8, v3

    .line 576
    .local v4, "childSessionId":I
    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 575
    .end local v4    # "childSessionId":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, p21

    move/from16 v1, v17

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 574
    :cond_1
    const/4 v8, 0x0

    .line 579
    :goto_1
    move/from16 v1, p22

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 581
    if-eqz v7, :cond_4

    .line 582
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v7

    .local v4, "size":I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 583
    aget-object v8, v7, v3

    .line 584
    .local v8, "file":Landroid/content/pm/InstallationFile;
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    move/from16 v17, v4

    .end local v4    # "size":I
    .local v17, "size":I
    new-instance v4, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-direct {v4, v3, v8}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    .end local v8    # "file":Landroid/content/pm/InstallationFile;
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p22

    move/from16 v4, v17

    const/4 v8, 0x0

    goto :goto_2

    .line 585
    .restart local v8    # "file":Landroid/content/pm/InstallationFile;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to add a duplicate installation file"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    .end local v8    # "file":Landroid/content/pm/InstallationFile;
    .end local v17    # "size":I
    .restart local v4    # "size":I
    :cond_3
    move/from16 v17, v4

    .line 591
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_4
    iget-boolean v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_8

    const/4 v1, 0x1

    if-nez v5, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eq v3, v1, :cond_7

    goto :goto_5

    .line 592
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_8
    :goto_5
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 597
    move/from16 v3, p18

    iput-boolean v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 598
    move/from16 v4, p19

    iput-boolean v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 599
    move/from16 v8, p23

    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 600
    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 601
    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 602
    move/from16 v1, p26

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 603
    nop

    .line 604
    if-eqz p27, :cond_9

    move-object/from16 v1, p27

    goto :goto_6

    :cond_9
    const-string v16, ""

    move-object/from16 v1, v16

    :goto_6
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexInstallation()Z

    move-result v1

    if-nez v1, :cond_a

    .line 611
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    if-ne v1, v2, :cond_b

    .line 613
    const-string v1, "System data loaders"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertShellOrSystemCalling(Ljava/lang/String;)V

    goto :goto_7

    .line 608
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DataLoader installation of APEX modules is not allowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    :cond_b
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 618
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isAllowed()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 621
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallationAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_8

    .line 622
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incremental installation of this package is not allowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incremental installation not allowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :cond_e
    :goto_8
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleStreamValidateAndCommit()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleInstall()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/pm/PackageInstallerSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->onStorageUnhealthy()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionVerificationFailure(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/PackageInstallerSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchStreamValidateAndCommit()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # Ljava/lang/String;

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingStreaming(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/IntentSender;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Landroid/os/Bundle;

    .line 164
    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/PackageInstallerSession;->sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "apk"    # Landroid/content/pm/PackageParser$ApkLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2400
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " inconsistent with "

    const/4 v2, -0x2

    if-eqz v0, :cond_4

    .line 2404
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2405
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " specified package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2409
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 2414
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2418
    return-void

    .line 2415
    :cond_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures are inconsistent"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2410
    :cond_3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2401
    :cond_4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertCallerIsOwnerOrRootLocked()V
    .locals 4

    .line 1107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1108
    .local v0, "callingUid":I
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1109
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1111
    :cond_1
    :goto_0
    return-void
.end method

.method private assertCallerIsOwnerOrRootOrSystemLocked()V
    .locals 4

    .line 1119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1120
    .local v0, "callingUid":I
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1122
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1124
    :cond_1
    :goto_0
    return-void
.end method

.method private assertCanWrite(Z)V
    .locals 2
    .param p1, "reverseMode"    # Z

    .line 921
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 927
    const-string v1, "assertCanWrite"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 928
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    if-eqz p1, :cond_0

    .line 930
    const-string v0, "Reverse mode"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertShellOrSystemCalling(Ljava/lang/String;)V

    .line 932
    :cond_0
    return-void

    .line 928
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 922
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write regular files in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertConsistencyWithLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5
    .param p1, "other"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const-string v2, " and session "

    const-string v3, "Multipackage Inconsistency: session "

    const/16 v4, -0x78

    if-ne v0, v1, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v0

    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1533
    return-void

    .line 1527
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " have inconsistent rollback settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1520
    :cond_1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " have inconsistent staged settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertMultiPackageConsistencyLocked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1497
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1501
    .local v1, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v1, :cond_0

    .line 1502
    goto :goto_0

    .line 1504
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertConsistencyWithLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1505
    .end local v1    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_0

    .line 1506
    :cond_1
    return-void
.end method

.method private assertNoWriteFileTransfersOpenLocked()V
    .locals 4

    .line 1132
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Files still open"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RevocableFileDescriptor;

    .line 1133
    .local v1, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1136
    .end local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_0

    .line 1134
    .restart local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    .end local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileBridge;

    .line 1138
    .local v1, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v1}, Landroid/os/FileBridge;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1141
    .end local v1    # "bridge":Landroid/os/FileBridge;
    goto :goto_1

    .line 1139
    .restart local v1    # "bridge":Landroid/os/FileBridge;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    .end local v1    # "bridge":Landroid/os/FileBridge;
    :cond_3
    return-void
.end method

.method private assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # Ljava/lang/String;

    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 758
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v0, :cond_0

    .line 761
    return-void

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after commit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # Ljava/lang/String;

    .line 765
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_1

    .line 768
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 771
    return-void

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after destruction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " before prepared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # Ljava/lang/String;

    .line 749
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 750
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v0, :cond_0

    .line 753
    return-void

    .line 751
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after sealing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertShellOrSystemCalling(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .line 910
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " only supported from shell or system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_1
    :goto_0
    nop

    .line 918
    return-void
.end method

.method private static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "sessionId"    # I
    .param p1, "sessionsDir"    # Ljava/io/File;

    .line 3376
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private cleanStageDir()V
    .locals 2

    .line 3206
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-eqz v0, :cond_0

    .line 3207
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()V

    .line 3208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 3211
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3213
    goto :goto_0

    .line 3212
    :catch_0
    move-exception v0

    .line 3214
    :goto_0
    return-void
.end method

.method private cleanStageDir(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .line 3194
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    if-eqz p1, :cond_2

    .line 3195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 3196
    .local v1, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_0

    .line 3197
    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 3199
    .end local v1    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 3201
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 3203
    :goto_1
    return-void
.end method

.method private cleanStageDirNotLocked()V
    .locals 3

    .line 3186
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageInstallerSession"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3190
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsNotLocked()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir(Ljava/util/List;)V

    .line 3191
    return-void
.end method

.method private closeInternal(Z)V
    .locals 3
    .param p1, "checkCaller"    # Z

    .line 2630
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2631
    if-eqz p1, :cond_0

    .line 2632
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2635
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 2636
    .local v1, "activeCount":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2638
    if-nez v1, :cond_1

    .line 2639
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2641
    :cond_1
    return-void

    .line 2636
    .end local v1    # "activeCount":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private computeProgressLocked(Z)V
    .locals 4
    .param p1, "forcePublish"    # Z

    .line 799
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    .line 800
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 803
    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 804
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 805
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 807
    :cond_1
    return-void
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .locals 9
    .param p1, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2521
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, ".tmp"

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 2522
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2523
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2521
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2527
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PackageInstallerSession"

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2528
    .local v1, "fromFile":Ljava/io/File;
    const-string v4, "inherit"

    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 2529
    .local v4, "tmpFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2534
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1a4

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2537
    nop

    .line 2538
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2539
    .local v5, "toFile":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renaming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2543
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v4    # "tmpFile":Ljava/io/File;
    .end local v5    # "toFile":Ljava/io/File;
    goto :goto_1

    .line 2541
    .restart local v1    # "fromFile":Ljava/io/File;
    .restart local v4    # "tmpFile":Ljava/io/File;
    .restart local v5    # "toFile":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2535
    .end local v5    # "toFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2536
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to chmod "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2531
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2544
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v4    # "tmpFile":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .locals 4
    .param p2, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2494
    .local p1, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2496
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    nop

    .line 2500
    .end local v1    # "instructionSet":Ljava/lang/String;
    goto :goto_0

    .line 2497
    .restart local v1    # "instructionSet":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    .line 2501
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 902
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 903
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v0    # "target":Ljava/io/File;
    nop

    .line 907
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private destroyInternal()V
    .locals 3

    .line 3154
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3155
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 3156
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3157
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 3160
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    .line 3161
    .local v2, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 3162
    .end local v2    # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_0

    .line 3163
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FileBridge;

    .line 3164
    .local v2, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v2}, Landroid/os/FileBridge;->forceClose()V

    .line 3165
    .end local v2    # "bridge":Landroid/os/FileBridge;
    goto :goto_1

    .line 3166
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3167
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-eqz v0, :cond_4

    .line 3168
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()V

    .line 3169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 3174
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_5

    .line 3176
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3178
    goto :goto_2

    .line 3177
    :catch_0
    move-exception v0

    .line 3180
    :cond_5
    :goto_2
    return-void

    .line 3166
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3046
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3047
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 3048
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 3050
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 3051
    .local v1, "statusReceiver":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 3052
    .local v2, "packageName":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3054
    if-eqz v1, :cond_0

    .line 3058
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3059
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3060
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3061
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3062
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 3063
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3065
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3068
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    .line 3072
    .local v4, "success":Z
    :goto_0
    if-eqz p3, :cond_2

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move v0, v3

    .line 3073
    .local v0, "isNewInstall":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService;->okToSendBroadcasts()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_4

    .line 3075
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v3

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v5, v3, v6}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 3078
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v3, p0, v4}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 3079
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3080
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->logDataLoaderInstallationSession(I)V

    .line 3082
    :cond_5
    return-void

    .line 3052
    .end local v0    # "isNewInstall":Z
    .end local v1    # "statusReceiver":Landroid/content/IntentSender;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dispatchSessionVerificationFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 2967
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2968
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2969
    return-void
.end method

.method private dispatchStreamValidateAndCommit()V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1184
    return-void
.end method

.method private doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "incomingFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v12, p4

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 982
    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_0

    .line 983
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v0}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 984
    .local v0, "fd":Landroid/os/RevocableFileDescriptor;
    const/4 v6, 0x0

    .line 985
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    goto :goto_0

    .line 987
    .end local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6    # "bridge":Landroid/os/FileBridge;
    :cond_0
    const/4 v0, 0x0

    .line 988
    .restart local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    new-instance v6, Landroid/os/FileBridge;

    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    .line 989
    .restart local v6    # "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    .line 991
    .end local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .local v14, "fd":Landroid/os/RevocableFileDescriptor;
    .local v15, "bridge":Landroid/os/FileBridge;
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 995
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v16, v5

    .line 1001
    .local v16, "identity":J
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v18, v0

    .line 1003
    .local v18, "target":Ljava/io/File;
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1004
    nop

    .line 1008
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    sget v6, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v5, v6

    const/16 v6, 0x1a4

    invoke-static {v0, v5, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v11, v0

    .line 1010
    .local v11, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1014
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_1

    cmp-long v0, v12, v5

    if-lez v0, :cond_1

    .line 1015
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1016
    invoke-static {v7}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v7

    .line 1015
    invoke-virtual {v0, v11, v12, v13, v7}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 1019
    :cond_1
    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 1020
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v11, v3, v4, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1023
    :cond_2
    if-eqz p6, :cond_5

    .line 1029
    :try_start_4
    new-instance v0, Landroid/system/Int64Ref;

    invoke-direct {v0, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    .line 1030
    .local v0, "last":Landroid/system/Int64Ref;
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v9, 0x0

    sget-object v10, Lcom/android/server/pm/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    new-instance v7, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;

    invoke-direct {v7, v1, v0}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v11

    move-object/from16 v19, v7

    move-wide/from16 v7, p4

    move-object/from16 v20, v11

    .end local v11    # "targetFd":Ljava/io/FileDescriptor;
    .local v20, "targetFd":Ljava/io/FileDescriptor;
    move-object/from16 v11, v19

    :try_start_5
    invoke-static/range {v5 .. v11}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1042
    .end local v0    # "last":Landroid/system/Int64Ref;
    :try_start_6
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1043
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1047
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1048
    :try_start_7
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_3

    .line 1049
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1051
    :cond_3
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    .line 1052
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1054
    :goto_1
    monitor-exit v5

    .line 1055
    nop

    .line 1056
    const/4 v0, 0x0

    return-object v0

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    :try_start_8
    throw v0

    .line 1042
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v20    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v11    # "targetFd":Ljava/io/FileDescriptor;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v11

    .end local v11    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v20    # "targetFd":Ljava/io/FileDescriptor;
    :goto_3
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1043
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1047
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1048
    :try_start_9
    sget-boolean v6, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v6, :cond_4

    .line 1049
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1051
    :cond_4
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    .line 1052
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1054
    :goto_4
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1055
    nop

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :try_start_a
    throw v0
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_0

    .line 1054
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    .line 1057
    .end local v20    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v11    # "targetFd":Ljava/io/FileDescriptor;
    :cond_5
    move-object/from16 v20, v11

    .end local v11    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v20    # "targetFd":Ljava/io/FileDescriptor;
    :try_start_c
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_6

    .line 1058
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    move-object/from16 v5, v20

    .end local v20    # "targetFd":Ljava/io/FileDescriptor;
    .local v5, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v14, v0, v5}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 1059
    invoke-virtual {v14}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1061
    .end local v5    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v20    # "targetFd":Ljava/io/FileDescriptor;
    :cond_6
    move-object/from16 v5, v20

    .end local v20    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v5    # "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v15, v5}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    .line 1062
    invoke-virtual {v15}, Landroid/os/FileBridge;->start()V

    .line 1063
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v15}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 1003
    .end local v5    # "targetFd":Ljava/io/FileDescriptor;
    .end local v18    # "target":Ljava/io/File;
    :catchall_4
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1004
    nop

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0

    .line 996
    .end local v16    # "identity":J
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_c} :catch_0

    .line 1066
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 991
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 3224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3227
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3228
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mOriginalInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3229
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v1, "installerPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3230
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string/jumbo v1, "installInitiatingPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3231
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    const-string/jumbo v1, "installOriginatingPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3232
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3233
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "createdMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3234
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "updatedMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3235
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string/jumbo v1, "stageDir"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3236
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    const-string/jumbo v1, "stageCid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3237
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3239
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3241
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "mClientProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3242
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "mProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3243
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mCommitted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3244
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mSealed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3245
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mPermissionsManuallyAccepted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3246
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mRelinquished"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3247
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mDestroyed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3248
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mFds"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3249
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mBridges"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3250
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mFinalStatus"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3251
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    const-string/jumbo v1, "mFinalMessage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3252
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "params.isMultiPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3253
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "params.isStaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3254
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mParentSessionId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3255
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    const-string/jumbo v1, "mChildSessionIds"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3256
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mStagedSessionApplied"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3257
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mStagedSessionFailed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3258
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mStagedSessionReady"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3259
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mStagedSessionErrorCode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3260
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    const-string/jumbo v1, "mStagedSessionErrorMessage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3261
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3263
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3264
    return-void
.end method

.method private extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "abiOverride"    # Ljava/lang/String;
    .param p3, "inherit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2549
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "lib"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2550
    .local v0, "libDir":Ljava/io/File;
    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 2552
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 2555
    :cond_0
    const/4 v2, 0x0

    .line 2557
    .local v2, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v3

    move-object v2, v3

    .line 2558
    nop

    .line 2559
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    .line 2558
    invoke-static {v2, v0, p2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    .local v3, "res":I
    if-ne v3, v1, :cond_1

    .line 2568
    .end local v3    # "res":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2569
    nop

    .line 2570
    return-void

    .line 2561
    .restart local v3    # "res":I
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract native libraries, res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v0    # "libDir":Ljava/io/File;
    .end local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageDir":Ljava/io/File;
    .end local p2    # "abiOverride":Ljava/lang/String;
    .end local p3    # "inherit":Z
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2568
    .end local v3    # "res":I
    .restart local v0    # "libDir":Ljava/io/File;
    .restart local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageDir":Ljava/io/File;
    .restart local p2    # "abiOverride":Ljava/lang/String;
    .restart local p3    # "inherit":Z
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2564
    :catch_0
    move-exception v1

    .line 2565
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x6e

    const-string v5, "Failed to extract native libraries"

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "libDir":Ljava/io/File;
    .end local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageDir":Ljava/io/File;
    .end local p2    # "abiOverride":Ljava/lang/String;
    .end local p3    # "inherit":Z
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2568
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "libDir":Ljava/io/File;
    .restart local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageDir":Ljava/io/File;
    .restart local p2    # "abiOverride":Ljava/lang/String;
    .restart local p3    # "inherit":Z
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2569
    throw v1
.end method

.method private static filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 848
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 849
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 850
    .local v4, "file":Ljava/io/File;
    invoke-interface {p2, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 851
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    :cond_1
    return-object v0
.end method

.method private generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4
    .param p1, "includeIcon"    # Z
    .param p2, "scrubData"    # Z

    .line 663
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 664
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 665
    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 666
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 667
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 668
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 670
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 671
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 672
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 673
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 675
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 676
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 677
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 678
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 679
    if-eqz p1, :cond_2

    .line 680
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 682
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 684
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 685
    if-nez p2, :cond_3

    .line 686
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 688
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 689
    if-nez p2, :cond_4

    .line 690
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 692
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 693
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 694
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 695
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 696
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 697
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 698
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 699
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 700
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 701
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    if-nez v2, :cond_5

    .line 702
    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 704
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied:Z

    .line 705
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady:Z

    .line 706
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed:Z

    .line 707
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->setStagedSessionErrorCode(ILjava/lang/String;)V

    .line 708
    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 709
    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 710
    monitor-exit v1

    .line 711
    return-object v0

    .line 710
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getAddedApksLocked()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 859
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "names":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    invoke-static {v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getApksSize()J
    .locals 10

    .line 1956
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1957
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 1958
    return-wide v1

    .line 1960
    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 1961
    .local v3, "apkDirOrPath":Ljava/io/File;
    if-nez v3, :cond_1

    .line 1962
    return-wide v1

    .line 1964
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const-string v5, ".apk"

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1965
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1

    .line 1967
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1968
    return-wide v1

    .line 1970
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1971
    .local v1, "files":[Ljava/io/File;
    const-wide/16 v6, 0x0

    .line 1972
    .local v6, "apksSize":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_5

    .line 1973
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1974
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 1972
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1977
    .end local v2    # "i":I
    :cond_5
    return-wide v6
.end method

.method private getChildSessionsNotLocked()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageInstallerSession"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    :cond_0
    const/4 v0, 0x0

    .line 1478
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v1

    .line 1480
    .local v1, "childSessionIds":[I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1481
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 1482
    .local v4, "childSessionId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v5, v4}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    .end local v4    # "childSessionId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1485
    .end local v1    # "childSessionIds":[I
    :cond_1
    return-object v0
.end method

.method private getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;
    .locals 5

    .line 839
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    .line 840
    .local v0, "result":[Landroid/content/pm/InstallationFile;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 841
    .local v2, "fileEntry":Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getFile()Landroid/content/pm/InstallationFile;

    move-result-object v4

    aput-object v4, v0, v3

    .line 842
    .end local v2    # "fileEntry":Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    goto :goto_0

    .line 843
    :cond_0
    return-object v0
.end method

.method private getNamesLocked()[Ljava/lang/String;
    .locals 5

    .line 821
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "result":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 824
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 826
    :cond_0
    return-object v0

    .line 829
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v0

    .line 830
    .local v0, "files":[Landroid/content/pm/InstallationFile;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 831
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 832
    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 831
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 834
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-object v1
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "base"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2478
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2479
    .local v0, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2481
    .local v1, "baseStr":Ljava/lang/String;
    const-string v2, "/."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2485
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2486
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2489
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " outside base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2482
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid path (was relative) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "markerName":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    return-object v0

    .line 894
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRemovedFilesLocked()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 865
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "names":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-static {v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private handleInstall()V
    .locals 6

    .line 1717
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    const/16 v0, 0x70

    .line 1719
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 1720
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1721
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1725
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1726
    const/4 v0, 0x1

    const-string v2, "Session staged"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1727
    return-void

    .line 1730
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexInstallation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1731
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1732
    const/16 v0, -0x6e

    const-string v2, "APEX packages can only be installed using staged sessions."

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1734
    return-void

    .line 1741
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsNotLocked()Ljava/util/List;

    move-result-object v0

    .line 1744
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->installNonStagedLocked(Ljava/util/List;)V

    .line 1746
    monitor-exit v2

    .line 1752
    goto :goto_0

    .line 1746
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_2
    throw v3
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1747
    .restart local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catch_0
    move-exception v2

    .line 1748
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-static {v2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1749
    .local v3, "completeMsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Commit of session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageInstallerSession"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1751
    iget v4, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1753
    .end local v2    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v3    # "completeMsg":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private handleStreamValidateAndCommit()V
    .locals 8

    .line 1187
    const/4 v0, 0x0

    .line 1190
    .local v0, "unrecoverableFailure":Lcom/android/server/pm/PackageManagerException;
    const/4 v1, 0x0

    .line 1192
    .local v1, "allSessionsReady":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1195
    goto :goto_0

    .line 1193
    :catch_0
    move-exception v2

    .line 1194
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    move-object v0, v2

    .line 1197
    .end local v2    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1198
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 1201
    .local v2, "childCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1203
    .local v3, "nonFailingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageInstallerSession;>;"
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 1204
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1208
    .local v5, "childSessionId":I
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v6, v5}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v6

    .line 1209
    .local v6, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {v6}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v7

    and-int/2addr v1, v7

    .line 1210
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1216
    nop

    .end local v6    # "session":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_2

    .line 1211
    :catch_1
    move-exception v6

    .line 1212
    .local v6, "e":Lcom/android/server/pm/PackageManagerException;
    const/4 v1, 0x0

    .line 1213
    if-nez v0, :cond_0

    .line 1214
    move-object v0, v6

    .line 1203
    .end local v5    # "childSessionId":I
    .end local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1220
    .end local v4    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1225
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    .line 1227
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_2

    .line 1228
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 1229
    .local v5, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {v5, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    .line 1227
    .end local v5    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1234
    .end local v2    # "childCount":I
    .end local v3    # "nonFailingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local v4    # "i":I
    :cond_2
    if-nez v1, :cond_3

    .line 1235
    return-void

    .line 1238
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1239
    return-void
.end method

.method private installNonStagedLocked(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1758
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    nop

    .line 1759
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    move-result-object v0

    .line 1760
    .local v0, "installingSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    if-nez v0, :cond_0

    .line 1761
    return-void

    .line 1763
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1764
    new-instance v1, Ljava/util/ArrayList;

    .line 1765
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1766
    .local v1, "installingChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;>;"
    const/4 v2, 0x1

    .line 1767
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 1768
    .local v3, "failure":Lcom/android/server/pm/PackageManagerException;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1769
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 1771
    .local v5, "session":Lcom/android/server/pm/PackageInstallerSession;
    nop

    .line 1772
    :try_start_0
    invoke-direct {v5}, Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    move-result-object v6

    .line 1773
    .local v6, "installingChildSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    if-eqz v6, :cond_1

    .line 1774
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    .end local v6    # "installingChildSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    :cond_1
    goto :goto_1

    .line 1776
    :catch_0
    move-exception v6

    .line 1777
    .local v6, "e":Lcom/android/server/pm/PackageManagerException;
    move-object v3, v6

    .line 1778
    const/4 v2, 0x0

    .line 1768
    .end local v5    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1781
    .end local v4    # "i":I
    :cond_2
    if-nez v2, :cond_3

    .line 1782
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1783
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v8

    iget v9, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v10, 0x0

    iget v11, v3, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1784
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 1782
    invoke-static/range {v5 .. v13}, Lcom/android/server/pm/PackageInstallerSession;->sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1785
    return-void

    .line 1787
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/util/List;)V

    .line 1788
    .end local v1    # "installingChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;>;"
    .end local v2    # "success":Z
    .end local v3    # "failure":Lcom/android/server/pm/PackageManagerException;
    goto :goto_2

    .line 1789
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->installStage(Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V

    .line 1791
    :goto_2
    return-void
.end method

.method private isApexInstallation()Z
    .locals 2

    .line 1995
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDataLoaderInstallation()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isIncrementalInstallation()Z
    .locals 2

    .line 491
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIncrementalInstallationAllowed(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1370
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1371
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1372
    .local v1, "existingPkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1376
    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1377
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1376
    :goto_0
    return v2

    .line 1373
    :cond_2
    :goto_1
    return v2
.end method

.method private isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z
    .locals 4

    .line 499
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 500
    return v2

    .line 502
    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 503
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 504
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v0, v1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .locals 9
    .param p2, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 2426
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 2427
    .local v1, "toStat":Landroid/system/StructStat;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 2428
    .local v3, "fromFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 2429
    .local v4, "fromStat":Landroid/system/StructStat;
    iget-wide v5, v4, Landroid/system/StructStat;->st_dev:J

    iget-wide v7, v1, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 2430
    return v0

    .line 2432
    .end local v3    # "fromFile":Ljava/io/File;
    .end local v4    # "fromStat":Landroid/system/StructStat;
    :cond_0
    goto :goto_0

    .line 2436
    .end local v1    # "toStat":Landroid/system/StructStat;
    :cond_1
    nop

    .line 2437
    const/4 v0, 0x1

    return v0

    .line 2433
    :catch_0
    move-exception v1

    .line 2434
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to detect if linking possible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageInstallerSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    return v0
.end method

.method private static isSecureFrpInstallAllowed(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I

    .line 1351
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1352
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 1354
    .local v1, "systemInstaller":[Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1355
    .local v3, "callingInstaller":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v3, :cond_0

    .line 1356
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1358
    return v2

    .line 1362
    :cond_0
    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static isStagedSessionStateValid(ZZZ)Z
    .locals 1
    .param p0, "isReady"    # Z
    .param p1, "isApplied"    # Z
    .param p2, "isFailed"    # Z

    .line 3502
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-nez p0, :cond_4

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStreamingInstallation()Z
    .locals 2

    .line 487
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$onStorageUnhealthy$1(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 6
    .param p0, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1622
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to uninstall package with failed dataloader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_0
    return-void
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p2, "toDir"    # Ljava/io/File;
    .param p3, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2505
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2506
    .local v1, "fromFile":Ljava/io/File;
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 2508
    .local v2, "relativePath":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 2509
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2508
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    nop

    .line 2514
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "relativePath":Ljava/lang/String;
    goto :goto_0

    .line 2510
    .restart local v1    # "fromFile":Ljava/io/File;
    .restart local v2    # "relativePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2511
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed linkOrCreateDir("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2516
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "relativePath":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Linked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    return-void
.end method

.method private logDataLoaderInstallationSession(I)V
    .locals 11
    .param p1, "returnCode"    # I

    .line 1945
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v3, v0

    .line 1946
    .local v3, "packageNameToLog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1947
    .local v9, "currentTimestamp":J
    const/16 v1, 0x107

    .line 1948
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v2

    iget-wide v4, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v4, v9, v4

    .line 1952
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getApksSize()J

    move-result-wide v7

    .line 1947
    move v6, p1

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JIJ)V

    .line 1953
    return-void
.end method

.method private makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1801
    const-string v0, "PackageInstallerSession"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_f

    .line 1805
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_e

    .line 1808
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_d

    .line 1813
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexInstallation()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1814
    const/4 v0, 0x0

    .local v0, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    goto/16 :goto_5

    .line 1816
    .end local v0    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_b

    .line 1817
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->needToAskForPermissionsLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1826
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1829
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V

    .line 1833
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 1834
    const/4 v1, 0x0

    return-object v1

    .line 1839
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 1841
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 1842
    .local v1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 1844
    .local v3, "toDir":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inherited files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1846
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "mInheritedFilesBase == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v0

    .line 1849
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1850
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1851
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "oat"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1852
    .local v4, "oatDir":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    .line 1855
    .end local v4    # "oatDir":Ljava/io/File;
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1856
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1858
    .local v5, "libPath":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1859
    .local v6, "splitIndex":I
    if-ltz v6, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-lt v6, v7, :cond_5

    goto :goto_2

    .line 1865
    :cond_5
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1866
    .local v7, "libDirPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1867
    .local v8, "libDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1868
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1870
    :cond_6
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1871
    .local v9, "archDirPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1873
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v6    # "splitIndex":I
    .end local v7    # "libDirPath":Ljava/lang/String;
    .end local v8    # "libDir":Ljava/io/File;
    .end local v9    # "archDirPath":Ljava/lang/String;
    goto :goto_1

    .line 1860
    .restart local v5    # "libPath":Ljava/lang/String;
    .restart local v6    # "splitIndex":I
    :cond_7
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    goto :goto_1

    .line 1875
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v6    # "splitIndex":I
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_3

    .line 1879
    :cond_9
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    .end local v1    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "toDir":Ljava/io/File;
    :goto_3
    goto :goto_4

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    const-string v3, "Failed to inherit existing install"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1888
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_4
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 1889
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1891
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V

    .line 1896
    :cond_b
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$5;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1912
    .local v0, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :goto_5
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_c

    .line 1913
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .local v1, "user":Landroid/os/UserHandle;
    goto :goto_6

    .line 1921
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_c
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1, v3, v4}, Lcom/android/server/pm/PmInjector;->makeSessionActiveLockedUsers(ILjava/lang/String;I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1926
    .restart local v1    # "user":Landroid/os/UserHandle;
    :goto_6
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 1927
    new-instance v2, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object v3, v2

    move-object v6, v0

    move-object v11, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;ILandroid/content/pm/PackageInstaller$SessionParams;ILcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V

    return-object v2

    .line 1809
    .end local v0    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1806
    :cond_e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1802
    :cond_f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session relinquished"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private markAsSealed(Landroid/content/IntentSender;Z)Z
    .locals 8
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "forTransfer"    # Z

    .line 1387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsNotLocked()Ljava/util/List;

    move-result-object v0

    .line 1391
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1392
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 1393
    const-string v2, "commit"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1394
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 1396
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 1397
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "secure_frp_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1398
    .local v2, "isSecureFrpEnabled":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 1399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageInstallerSession;->isSecureFrpInstallAllowed(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1400
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Can\'t install packages while in secure FRP"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v3

    .line 1403
    .restart local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "forTransfer":Z
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 1404
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v5, v6, :cond_3

    goto :goto_2

    .line 1406
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Session has not been transferred"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v3

    .line 1409
    .restart local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "forTransfer":Z
    :cond_4
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne v5, v6, :cond_6

    .line 1414
    :goto_2
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 1417
    iget-boolean v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v5, :cond_5

    .line 1418
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1422
    :cond_5
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    nop

    .line 1426
    .end local v2    # "isSecureFrpEnabled":Z
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1431
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1433
    return v3

    .line 1423
    .restart local v2    # "isSecureFrpEnabled":Z
    :catch_0
    move-exception v3

    .line 1424
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_3
    monitor-exit v1

    return v4

    .line 1410
    .end local v3    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Session has been transferred"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v3

    .line 1426
    .end local v2    # "isSecureFrpEnabled":Z
    .restart local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "forTransfer":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private mayInheritNativeLibs()Z
    .locals 3

    .line 1986
    const-string/jumbo v0, "pi.inherit_native_on_dont_kill"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static maybeRenameFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1932
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1933
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1934
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1938
    :cond_1
    :goto_0
    return-void
.end method

.method private needToAskForPermissionsLocked()Z
    .locals 11

    .line 518
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 519
    return v1

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 523
    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 525
    .local v0, "isInstallPermissionGranted":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 526
    const-string v5, "android.permission.INSTALL_SELF_UPDATES"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 528
    .local v3, "isSelfUpdatePermissionGranted":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 529
    const-string v6, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    .line 531
    .local v4, "isUpdatePermissionGranted":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    .line 532
    .local v5, "targetPackageUid":I
    if-nez v0, :cond_6

    if-eqz v4, :cond_4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    :cond_4
    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v5, v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v2

    .line 535
    .local v6, "isPermissionGranted":Z
    :goto_4
    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v7, :cond_7

    move v7, v2

    goto :goto_5

    :cond_7
    move v7, v1

    .line 536
    .local v7, "isInstallerRoot":Z
    :goto_5
    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_8

    move v8, v2

    goto :goto_6

    :cond_8
    move v8, v1

    .line 537
    .local v8, "isInstallerSystem":Z
    :goto_6
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v9, v9, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_9

    move v9, v2

    goto :goto_7

    :cond_9
    move v9, v1

    .line 542
    .local v9, "forcePermissionPrompt":Z
    :goto_7
    if-nez v9, :cond_b

    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-nez v8, :cond_a

    .line 543
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    goto :goto_9

    :cond_b
    :goto_8
    move v1, v2

    .line 542
    :goto_9
    return v1
.end method

.method private onSessionVerificationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;
    .locals 2
    .param p1, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 1603
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    .line 1604
    return-object p1
.end method

.method private onSessionVerificationFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 1609
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1611
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1612
    return-void
.end method

.method private onStorageUnhealthy()V
    .locals 4

    .line 1615
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    return-void

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1620
    .local v0, "packageManagerService":Lcom/android/server/pm/PackageManagerService;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1621
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$UpuMRb5wmirrOQyE79KreHPfilQ;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$UpuMRb5wmirrOQyE79KreHPfilQ;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1628
    return-void
.end method

.method private openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1090
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1094
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1095
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 1091
    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "targetFd":Ljava/io/FileDescriptor;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private prepareDataLoaderLocked()Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2770
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_0

    .line 2771
    return v9

    .line 2773
    :cond_0
    iget-boolean v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    if-eqz v0, :cond_1

    .line 2774
    return v9

    .line 2778
    :cond_1
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    const/16 v10, -0x14

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 2780
    :try_start_0
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalFileStorages;->startLoading()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2784
    nop

    .line 2785
    return v11

    .line 2781
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2782
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 2783
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v10, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2788
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 2789
    .local v12, "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 2791
    .local v13, "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v14

    .line 2792
    .local v14, "files":[Landroid/content/pm/InstallationFile;
    array-length v0, v14

    move v1, v11

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, v14, v1

    .line 2793
    .local v2, "file":Landroid/content/pm/InstallationFile;
    sget-object v3, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    new-instance v4, Ljava/io/File;

    iget-object v5, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2794
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getData()Landroid/content/pm/InstallationFileParcel;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2795
    goto :goto_1

    .line 2797
    :cond_3
    sget-object v3, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    new-instance v4, Ljava/io/File;

    iget-object v5, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2798
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2799
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".removed"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2798
    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2800
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2792
    .end local v2    # "file":Landroid/content/pm/InstallationFile;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2804
    :cond_5
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/DataLoaderManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/DataLoaderManager;

    .line 2806
    .local v15, "dataLoaderManager":Landroid/content/pm/DataLoaderManager;
    if-eqz v15, :cond_9

    .line 2811
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 2812
    .local v7, "params":Landroid/content/pm/DataLoaderParams;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    xor-int/2addr v0, v9

    move/from16 v16, v0

    .line 2813
    .local v16, "manualStartAndDestroy":Z
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$6;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v4, v16

    move-object v5, v12

    move-object v6, v7

    move-object/from16 v17, v7

    .end local v7    # "params":Landroid/content/pm/DataLoaderParams;
    .local v17, "params":Landroid/content/pm/DataLoaderParams;
    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession$6;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/DataLoaderManager;ZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V

    move-object v7, v0

    .line 2907
    .local v7, "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    if-nez v16, :cond_7

    .line 2908
    new-instance v0, Landroid/os/incremental/StorageHealthCheckParams;

    invoke-direct {v0}, Landroid/os/incremental/StorageHealthCheckParams;-><init>()V

    move-object v5, v0

    .line 2909
    .local v5, "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    const/16 v0, 0x7d0

    iput v0, v5, Landroid/os/incremental/StorageHealthCheckParams;->blockedTimeoutMs:I

    .line 2910
    const/16 v0, 0x1b58

    iput v0, v5, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyTimeoutMs:I

    .line 2911
    const v0, 0xea60

    iput v0, v5, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyMonitoringMs:I

    .line 2913
    nop

    .line 2914
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    move v9, v11

    .line 2915
    .local v9, "systemDataLoader":Z
    :goto_2
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$7;

    invoke-direct {v6, v8, v9}, Lcom/android/server/pm/PackageInstallerSession$7;-><init>(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2949
    .local v6, "healthListener":Landroid/os/incremental/IStorageHealthListener;
    :try_start_1
    iget-object v1, v8, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v3, v17

    move-object v4, v7

    move-object/from16 v18, v5

    .end local v5    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .local v18, "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    move-object/from16 v19, v7

    .end local v7    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .local v19, "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    move-object v7, v12

    :try_start_2
    invoke-static/range {v1 .. v7}, Landroid/os/incremental/IncrementalFileStorages;->initialize(Landroid/content/Context;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;)Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2951
    return v11

    .line 2952
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v18    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v19    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .restart local v5    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .restart local v7    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    :catch_2
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    .line 2953
    .end local v5    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v7    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v18    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .restart local v19    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    :goto_3
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 2954
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v10, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2958
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "healthListener":Landroid/os/incremental/IStorageHealthListener;
    .end local v9    # "systemDataLoader":Z
    .end local v18    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v19    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .restart local v7    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    :cond_7
    move-object/from16 v19, v7

    .end local v7    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .restart local v19    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    iget v0, v8, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v1

    move-object/from16 v2, v19

    .end local v19    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .local v2, "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    invoke-virtual {v15, v0, v1, v2}, Landroid/content/pm/DataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2963
    return v11

    .line 2959
    :cond_8
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Failed to initialize data loader"

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2807
    .end local v2    # "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    .end local v16    # "manualStartAndDestroy":Z
    .end local v17    # "params":Landroid/content/pm/DataLoaderParams;
    :cond_9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Failed to find data loader manager service"

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;)Lcom/android/server/pm/PackageInstallerSession;
    .locals 64
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "installerThread"    # Landroid/os/Looper;
    .param p5, "stagingManager"    # Lcom/android/server/pm/StagingManager;
    .param p6, "sessionsDir"    # Ljava/io/File;
    .param p7, "sessionProvider"    # Lcom/android/server/pm/PackageSessionProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3527
    move-object/from16 v0, p0

    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    .line 3528
    .local v14, "sessionId":I
    const-string/jumbo v2, "userId"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    .line 3529
    .local v15, "userId":I
    const-string/jumbo v2, "installerPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3530
    .local v13, "installerPackageName":Ljava/lang/String;
    const/16 v2, 0x2000

    move-object/from16 v11, p3

    invoke-virtual {v11, v13, v2, v15}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    const-string/jumbo v3, "installerUid"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v30

    .line 3532
    .local v30, "installerUid":I
    nop

    .line 3533
    const-string/jumbo v2, "installInitiatingPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3534
    .local v10, "installInitiatingPackageName":Ljava/lang/String;
    nop

    .line 3535
    const-string/jumbo v2, "installOriginatingPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3536
    .local v9, "installOriginatingPackageName":Ljava/lang/String;
    const-string v2, "createdMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v31

    .line 3537
    .local v31, "createdMillis":J
    const-string/jumbo v2, "updatedMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v33

    .line 3538
    .local v33, "updatedMillis":J
    const-string/jumbo v2, "sessionStageDir"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3539
    .local v8, "stageDirRaw":Ljava/lang/String;
    if-eqz v8, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v16, v2

    .line 3540
    .local v16, "stageDir":Ljava/io/File;
    const-string/jumbo v2, "sessionStageCid"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3541
    .local v35, "stageCid":Ljava/lang/String;
    const-string/jumbo v2, "prepared"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v36

    .line 3542
    .local v36, "prepared":Z
    const-string v2, "committed"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v37

    .line 3543
    .local v37, "committed":Z
    const-string v2, "destroyed"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v38

    .line 3544
    .local v38, "destroyed":Z
    const-string/jumbo v2, "sealed"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    .line 3545
    .local v39, "sealed":Z
    const-string/jumbo v2, "parentSessionId"

    const/4 v4, -0x1

    invoke-static {v0, v2, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v40

    .line 3548
    .local v40, "parentSessionId":I
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v2, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v7, v2

    .line 3550
    .local v7, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const-string/jumbo v2, "multiPackage"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v7, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 3551
    const-string/jumbo v2, "stagedSession"

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v7, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 3552
    const-string/jumbo v2, "mode"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    iput v6, v7, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 3553
    const-string/jumbo v6, "installFlags"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    iput v6, v7, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3554
    const-string/jumbo v6, "installLocation"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    iput v6, v7, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 3555
    const-string/jumbo v6, "sizeBytes"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 3556
    const-string v5, "appPackageName"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 3557
    const-string v5, "appIcon"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 3558
    const-string v5, "appLabel"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 3559
    const-string/jumbo v5, "originatingUri"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 3560
    nop

    .line 3561
    const-string/jumbo v5, "originatingUid"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 3562
    const-string/jumbo v5, "referrerUri"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 3563
    const-string v5, "abiOverride"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 3564
    const-string/jumbo v5, "volumeUuid"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 3565
    const-string/jumbo v5, "installRason"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 3567
    const-string/jumbo v5, "isDataLoader"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3568
    new-instance v5, Landroid/content/pm/DataLoaderParams;

    .line 3569
    const-string v6, "dataLoaderType"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    new-instance v12, Landroid/content/ComponentName;

    .line 3571
    const-string v4, "dataLoaderPackageName"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3572
    const-string v3, "dataLoaderClassName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    const-string v3, "dataLoaderArguments"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v12, v3}, Landroid/content/pm/DataLoaderParams;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;)V

    iput-object v5, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3576
    :cond_1
    move-object/from16 v6, p6

    invoke-static {v14, v6}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v41

    .line 3577
    .local v41, "appIconFile":Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3578
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 3579
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v7, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 3581
    :cond_2
    const-string/jumbo v3, "isReady"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    .line 3582
    .local v5, "isReady":Z
    const-string/jumbo v3, "isFailed"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 3583
    .local v4, "isFailed":Z
    const-string/jumbo v3, "isApplied"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 3584
    .local v3, "isApplied":Z
    const-string v12, "errorCode"

    const/4 v6, 0x0

    invoke-static {v0, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v42

    .line 3586
    .local v42, "stagedSessionErrorCode":I
    const-string v6, "errorMessage"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 3589
    .local v43, "stagedSessionErrorMessage":Ljava/lang/String;
    invoke-static {v5, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionStateValid(ZZZ)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 3599
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3600
    .local v6, "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v44, v17

    .line 3601
    .local v44, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x3

    .line 3602
    .local v17, "autoRevokePermissionsMode":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v45, v20

    .line 3603
    .local v45, "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v46, v20

    .line 3604
    .local v46, "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    move/from16 v20, v15

    move/from16 v15, v17

    .line 3606
    .end local v17    # "autoRevokePermissionsMode":I
    .local v11, "outerDepth":I
    .local v15, "autoRevokePermissionsMode":I
    .local v20, "userId":I
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move/from16 v47, v12

    move/from16 v21, v3

    const/4 v3, 0x1

    .end local v3    # "isApplied":Z
    .local v21, "isApplied":Z
    .local v47, "type":I
    if-eq v12, v3, :cond_c

    const/4 v12, 0x3

    move/from16 v19, v14

    move/from16 v14, v47

    .end local v47    # "type":I
    .local v14, "type":I
    .local v19, "sessionId":I
    if-ne v14, v12, :cond_4

    .line 3607
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v11, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v4, v44

    move-object/from16 v1, v45

    move-object/from16 v3, v46

    goto/16 :goto_6

    .line 3608
    :cond_4
    :goto_2
    if-eq v14, v12, :cond_b

    const/4 v3, 0x4

    if-ne v14, v3, :cond_5

    .line 3609
    move-object/from16 v18, v1

    move-object/from16 v26, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v4, v44

    move-object/from16 v1, v45

    move-object/from16 v3, v46

    goto/16 :goto_5

    .line 3611
    :cond_5
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v12, "granted-runtime-permission"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v12, "name"

    if-eqz v3, :cond_6

    .line 3612
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3614
    :cond_6
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move/from16 v23, v4

    .end local v4    # "isFailed":Z
    .local v23, "isFailed":Z
    const-string/jumbo v4, "whitelisted-restricted-permission"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3615
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v44

    .end local v44    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3614
    .end local v4    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v44    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v4, v44

    .line 3618
    .end local v44    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move/from16 v24, v5

    .end local v5    # "isReady":Z
    .local v24, "isReady":Z
    const-string v5, "auto-revoke-permissions-mode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3619
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move v15, v3

    .line 3621
    :cond_8
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "childSession"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3622
    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v18, v1

    move-object/from16 v1, v45

    .end local v45    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3621
    .end local v1    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v45    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v18, v1

    move-object/from16 v1, v45

    const/4 v3, -0x1

    .line 3624
    .end local v45    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_4
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "sessionFile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3625
    new-instance v3, Landroid/content/pm/InstallationFile;

    .line 3626
    const-string/jumbo v5, "location"

    move-object/from16 v26, v2

    const/4 v2, 0x0

    invoke-static {v0, v5, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v48

    .line 3627
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    move-object v5, v3

    const-wide/16 v2, -0x1

    .line 3628
    const-string/jumbo v12, "lengthBytes"

    invoke-static {v0, v12, v2, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v50

    .line 3629
    const-string/jumbo v2, "metadata"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v52

    .line 3630
    const-string/jumbo v2, "signature"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v53

    move-object/from16 v47, v5

    invoke-direct/range {v47 .. v53}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    .line 3625
    move-object/from16 v3, v46

    .end local v46    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3624
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v46    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    :cond_a
    move-object/from16 v26, v2

    move-object/from16 v3, v46

    .end local v46    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v3    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    goto :goto_5

    .line 3608
    .end local v1    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v23    # "isFailed":Z
    .end local v24    # "isReady":Z
    .local v4, "isFailed":Z
    .restart local v5    # "isReady":Z
    .restart local v44    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v45    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v46    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    :cond_b
    move-object/from16 v18, v1

    move-object/from16 v26, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v4, v44

    move-object/from16 v1, v45

    move-object/from16 v3, v46

    .line 3606
    .end local v5    # "isReady":Z
    .end local v14    # "type":I
    .end local v44    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v46    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v1    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .local v4, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "isFailed":Z
    .restart local v24    # "isReady":Z
    :goto_5
    move-object/from16 v45, v1

    move-object/from16 v46, v3

    move-object/from16 v44, v4

    move-object/from16 v1, v18

    move/from16 v14, v19

    move/from16 v3, v21

    move/from16 v4, v23

    move/from16 v5, v24

    move-object/from16 v2, v26

    goto/16 :goto_1

    .end local v1    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v19    # "sessionId":I
    .end local v23    # "isFailed":Z
    .end local v24    # "isReady":Z
    .local v4, "isFailed":Z
    .restart local v5    # "isReady":Z
    .local v14, "sessionId":I
    .restart local v44    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v45    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v46    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v47    # "type":I
    :cond_c
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v19, v14

    move-object/from16 v4, v44

    move-object/from16 v1, v45

    move-object/from16 v3, v46

    move/from16 v14, v47

    .line 3634
    .end local v5    # "isReady":Z
    .end local v44    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v46    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v47    # "type":I
    .restart local v1    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .local v4, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "type":I
    .restart local v19    # "sessionId":I
    .restart local v23    # "isFailed":Z
    .restart local v24    # "isReady":Z
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 3635
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 3636
    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v7, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 3639
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 3640
    iput-object v4, v7, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 3643
    :cond_e
    iput v15, v7, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 3646
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 3647
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 3648
    .local v2, "childSessionIdsArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "size":I
    :goto_7
    if-ge v5, v12, :cond_f

    .line 3649
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aput v17, v2, v5

    .line 3648
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v44, v2

    .end local v5    # "i":I
    .end local v12    # "size":I
    goto :goto_8

    .line 3652
    .end local v2    # "childSessionIdsArray":[I
    :cond_10
    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    move-object/from16 v44, v2

    .line 3655
    .local v44, "childSessionIdsArray":[I
    :goto_8
    const/4 v2, 0x0

    .line 3656
    .local v2, "fileArray":[Landroid/content/pm/InstallationFile;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 3657
    sget-object v5, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, [Landroid/content/pm/InstallationFile;

    move-object/from16 v45, v2

    goto :goto_9

    .line 3656
    :cond_11
    move-object/from16 v45, v2

    .line 3660
    .end local v2    # "fileArray":[Landroid/content/pm/InstallationFile;
    .local v45, "fileArray":[Landroid/content/pm/InstallationFile;
    :goto_9
    invoke-static {v10, v9, v13}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v46

    .local v46, "installSource":Lcom/android/server/pm/InstallSource;
    move-object/from16 v12, v46

    .line 3662
    new-instance v47, Lcom/android/server/pm/PackageInstallerSession;

    move-object/from16 v2, v47

    move-object/from16 v49, v3

    move/from16 v48, v21

    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v21    # "isApplied":Z
    .local v48, "isApplied":Z
    .local v49, "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    move-object/from16 v3, p1

    move-object/from16 v51, v4

    move/from16 v50, v23

    .end local v4    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "isFailed":Z
    .local v50, "isFailed":Z
    .local v51, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, p2

    move/from16 v52, v24

    .end local v24    # "isReady":Z
    .local v52, "isReady":Z
    move-object/from16 v5, p3

    move-object/from16 v53, v6

    .end local v6    # "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v53, "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p7

    move-object/from16 v54, v7

    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v54, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v7, p4

    move-object/from16 v55, v8

    .end local v8    # "stageDirRaw":Ljava/lang/String;
    .local v55, "stageDirRaw":Ljava/lang/String;
    move-object/from16 v8, p5

    move-object/from16 v56, v9

    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .local v56, "installOriginatingPackageName":Ljava/lang/String;
    move/from16 v9, v19

    move-object/from16 v57, v10

    .end local v10    # "installInitiatingPackageName":Ljava/lang/String;
    .local v57, "installInitiatingPackageName":Ljava/lang/String;
    move/from16 v10, v20

    move/from16 v58, v11

    .end local v11    # "outerDepth":I
    .local v58, "outerDepth":I
    move/from16 v11, v30

    move-object/from16 v59, v13

    .end local v13    # "installerPackageName":Ljava/lang/String;
    .local v59, "installerPackageName":Ljava/lang/String;
    move-object/from16 v13, v54

    move/from16 v62, v14

    move/from16 v63, v15

    move/from16 v60, v19

    move/from16 v61, v20

    .end local v14    # "type":I
    .end local v15    # "autoRevokePermissionsMode":I
    .end local v19    # "sessionId":I
    .end local v20    # "userId":I
    .local v60, "sessionId":I
    .local v61, "userId":I
    .local v62, "type":I
    .local v63, "autoRevokePermissionsMode":I
    move-wide/from16 v14, v31

    move-object/from16 v17, v35

    move-object/from16 v18, v45

    move/from16 v19, v36

    move/from16 v20, v37

    move/from16 v21, v38

    move/from16 v22, v39

    move-object/from16 v23, v44

    move/from16 v24, v40

    move/from16 v25, v52

    move/from16 v26, v50

    move/from16 v27, v48

    move/from16 v28, v42

    move-object/from16 v29, v43

    invoke-direct/range {v2 .. v29}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;ZZZZ[IIZZZILjava/lang/String;)V

    return-object v47

    .line 3590
    .end local v1    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v44    # "childSessionIdsArray":[I
    .end local v45    # "fileArray":[Landroid/content/pm/InstallationFile;
    .end local v46    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v48    # "isApplied":Z
    .end local v49    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v50    # "isFailed":Z
    .end local v51    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v52    # "isReady":Z
    .end local v53    # "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v55    # "stageDirRaw":Ljava/lang/String;
    .end local v56    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v57    # "installInitiatingPackageName":Ljava/lang/String;
    .end local v58    # "outerDepth":I
    .end local v59    # "installerPackageName":Ljava/lang/String;
    .end local v60    # "sessionId":I
    .end local v61    # "userId":I
    .end local v62    # "type":I
    .end local v63    # "autoRevokePermissionsMode":I
    .local v3, "isApplied":Z
    .local v4, "isFailed":Z
    .local v5, "isReady":Z
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v8    # "stageDirRaw":Ljava/lang/String;
    .restart local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v10    # "installInitiatingPackageName":Ljava/lang/String;
    .restart local v13    # "installerPackageName":Ljava/lang/String;
    .local v14, "sessionId":I
    .local v15, "userId":I
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t restore staged session with invalid state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "origFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2355
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2356
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 2358
    new-instance v0, Ljava/io/File;

    .line 2359
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2361
    .local v0, "originalSignature":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, -0x76

    if-eqz v1, :cond_2

    .line 2365
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    if-nez v1, :cond_1

    .line 2366
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    .line 2367
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_0

    goto :goto_0

    .line 2368
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Some file is missing fs-verity signature"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2380
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 2381
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2382
    .local v1, "stagedSignature":Ljava/io/File;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 2383
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2384
    return-void

    .line 2373
    .end local v1    # "stagedSignature":Ljava/io/File;
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    if-nez v1, :cond_3

    .line 2374
    return-void

    .line 2376
    :cond_3
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing corresponding fs-verity signature to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private resolveInheritedFile(Ljava/io/File;)V
    .locals 2
    .param p1, "origFile"    # Ljava/io/File;

    .line 2387
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2390
    new-instance v0, Ljava/io/File;

    .line 2391
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2392
    .local v0, "fsveritySignatureFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2393
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2395
    :cond_0
    return-void
.end method

.method private sealLocked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1547
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 1548
    const-string/jumbo v0, "sealing of session"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 1552
    if-eqz p1, :cond_0

    .line 1553
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertMultiPackageConsistencyLocked(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    :cond_0
    nop

    .line 1562
    return-void

    .line 1557
    :catchall_0
    move-exception v0

    .line 1560
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1

    .line 1555
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 1556
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1
.end method

.method private static sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/content/IntentSender;
    .param p2, "sessionId"    # I
    .param p3, "showNotification"    # Z
    .param p4, "userId"    # I
    .param p5, "basePackageName"    # Ljava/lang/String;
    .param p6, "returnCode"    # I
    .param p7, "msg"    # Ljava/lang/String;
    .param p8, "extras"    # Landroid/os/Bundle;

    .line 3281
    const/4 v0, 0x1

    if-ne v0, p6, :cond_2

    if-eqz p3, :cond_2

    .line 3282
    if-eqz p8, :cond_0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3283
    .local v0, "update":Z
    :goto_0
    nop

    .line 3284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3285
    if-eqz v0, :cond_1

    const v2, 0x1040570

    goto :goto_1

    .line 3286
    :cond_1
    const v2, 0x104056f

    .line 3285
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3283
    invoke-static {p0, v1, p5, p4}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    .line 3289
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v1, :cond_2

    .line 3290
    nop

    .line 3291
    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3292
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const/16 v3, 0x15

    invoke-virtual {v2, p5, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 3297
    .end local v0    # "update":Z
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3298
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3299
    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3300
    nop

    .line 3301
    invoke-static {p6}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 3300
    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3302
    nop

    .line 3303
    invoke-static {p6, p7}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3302
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3304
    const-string v1, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3305
    if-eqz p8, :cond_3

    .line 3306
    const-string v1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {p8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3308
    .local v1, "existing":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3309
    const-string v2, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3313
    .end local v1    # "existing":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3315
    goto :goto_2

    .line 3314
    :catch_0
    move-exception v1

    .line 3316
    :goto_2
    return-void
.end method

.method private static sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/content/IntentSender;
    .param p2, "sessionId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 3268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3269
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3270
    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3271
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3273
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3275
    goto :goto_0

    .line 3274
    :catch_0
    move-exception v1

    .line 3276
    :goto_0
    return-void
.end method

.method private sendPendingStreaming(Ljava/lang/String;)V
    .locals 8
    .param p1, "cause"    # Ljava/lang/String;

    .line 3320
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3321
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 3322
    .local v1, "statusReceiver":Landroid/content/IntentSender;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3324
    if-nez v1, :cond_0

    .line 3325
    const-string v0, "PackageInstallerSession"

    const-string v2, "Missing receiver for pending streaming status."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    return-void

    .line 3329
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3330
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v3, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3331
    const/4 v2, -0x2

    const-string v3, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Staging Image Not Ready ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3336
    :cond_1
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    const-string v3, "Staging Image Not Ready"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3339
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3341
    goto :goto_1

    .line 3340
    :catch_0
    move-exception v2

    .line 3342
    :goto_1
    return-void

    .line 3322
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "statusReceiver":Landroid/content/IntentSender;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setClientProgressLocked(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 776
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 777
    .local v0, "forcePublish":Z
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 778
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 779
    return-void
.end method

.method private shouldScrubData(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 636
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private streamAndValidateLocked()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1577
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_2

    .line 1578
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    const/4 v0, 0x0

    return v0

    .line 1582
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexInstallation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1583
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_0

    .line 1585
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()V

    .line 1589
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_3

    .line 1590
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager;->checkNonOverlappingWithStagedSessions(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1595
    :catchall_0
    move-exception v0

    .line 1598
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1

    .line 1593
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 1594
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1
.end method

.method private streamValidateAndCommit()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1448
    monitor-exit v0

    return v2

    .line 1451
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->streamAndValidateLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1452
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1456
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 1457
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1463
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 1464
    monitor-exit v0

    .line 1465
    return v2

    .line 1464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateApexInstallLocked()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2007
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v0

    .line 2008
    .local v0, "addedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-nez v1, :cond_4

    .line 2014
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 2019
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2022
    .local v1, "addedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2023
    .local v2, "sourceName":Ljava/lang/String;
    const-string v3, ".apex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2024
    move-object v3, v2

    goto :goto_0

    .line 2025
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    nop

    .line 2026
    .local v3, "targetName":Ljava/lang/String;
    invoke-static {v3}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2031
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2032
    .local v4, "targetFile":Ljava/io/File;
    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    .line 2033
    iput-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 2036
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2039
    const/16 v5, 0x20

    :try_start_0
    invoke-static {v4, v5}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    .local v5, "apk":Landroid/content/pm/PackageParser$ApkLite;
    nop

    .line 2045
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 2046
    iget-object v6, v5, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2047
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 2049
    :cond_1
    return-void

    .line 2041
    .end local v5    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_0
    move-exception v5

    .line 2042
    .local v5, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v6

    throw v6

    .line 2027
    .end local v4    # "targetFile":Ljava/io/File;
    .end local v5    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_2
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 2015
    .end local v1    # "addedFile":Ljava/io/File;
    .end local v2    # "sourceName":Ljava/lang/String;
    .end local v3    # "targetName":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Too many files for apex install"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2009
    :cond_4
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2010
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2011
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 2010
    const-string v2, "Session: %d. No packages staged in %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private validateApkInstallLocked()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2065
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 2066
    .local v0, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2067
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 2068
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 2070
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 2071
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2072
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2074
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const v6, 0x4000040

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2079
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v5, 0x2

    const/4 v6, -0x2

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2081
    :cond_0
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Missing existing base package"

    invoke-direct {v2, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 2085
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2087
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    iput-boolean v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    .line 2089
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemovedFilesLocked()Ljava/util/List;

    move-result-object v4

    .line 2090
    .local v4, "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2091
    .local v9, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2092
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 2093
    .local v11, "removedFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2094
    .local v12, "fileName":Ljava/lang/String;
    nop

    .line 2095
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, ".removed"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    .line 2094
    invoke-virtual {v12, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2096
    .local v13, "splitName":Ljava/lang/String;
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2097
    .end local v11    # "removedFile":Ljava/io/File;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "splitName":Ljava/lang/String;
    goto :goto_2

    .line 2100
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v10

    .line 2101
    .local v10, "addedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    .line 2102
    :cond_4
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-array v5, v5, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2103
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v7

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2104
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    .line 2103
    const-string v7, "Session: %d. No packages staged in %s"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 2108
    :cond_5
    :goto_3
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 2109
    .local v11, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v12

    .line 2110
    .local v12, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v14, v0

    .end local v0    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .local v14, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v15, ".apk"

    const/16 v5, 0x20

    if-eqz v0, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2111
    .local v0, "addedFile":Ljava/io/File;
    invoke-virtual {v12}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v7

    invoke-static {v7, v0, v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 2113
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-nez v7, :cond_e

    .line 2118
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$ApkLite;

    .line 2119
    .local v7, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v2, v7, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2125
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 2126
    iget-object v2, v7, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2127
    move-object v2, v9

    .end local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    goto :goto_5

    .line 2125
    .end local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move-object v2, v9

    .line 2129
    .end local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v9, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v8, v9, :cond_7

    .line 2130
    iget-object v8, v7, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 2133
    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v7}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 2137
    iget-object v8, v7, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 2138
    const-string v8, "base.apk"

    .local v8, "targetName":Ljava/lang/String;
    goto :goto_6

    .line 2140
    .end local v8    # "targetName":Ljava/lang/String;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "split_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2142
    .restart local v8    # "targetName":Ljava/lang/String;
    :goto_6
    invoke-static {v8}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v9

    const-string v15, "Invalid filename: "

    if-eqz v9, :cond_c

    .line 2147
    new-instance v9, Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v9, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v9

    .line 2148
    .local v6, "targetFile":Ljava/io/File;
    invoke-direct {v1, v0, v6}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    .line 2151
    iget-object v9, v7, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v9, :cond_9

    .line 2152
    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 2153
    move-object v9, v7

    move-object v14, v9

    .line 2157
    :cond_9
    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 2158
    .local v9, "dexMetadataFile":Ljava/io/File;
    if-eqz v9, :cond_b

    .line 2159
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2163
    new-instance v15, Ljava/io/File;

    move-object/from16 v19, v0

    .end local v0    # "addedFile":Ljava/io/File;
    .local v19, "addedFile":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2164
    move-object/from16 v20, v4

    .end local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v20, "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v8}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v15

    .line 2165
    .local v0, "targetDexMetadataFile":Ljava/io/File;
    invoke-direct {v1, v9, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_7

    .line 2160
    .end local v19    # "addedFile":Ljava/io/File;
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v0, "addedFile":Ljava/io/File;
    .restart local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_a
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    .end local v0    # "addedFile":Ljava/io/File;
    .end local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "addedFile":Ljava/io/File;
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, -0x2

    invoke-direct {v0, v13, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2158
    .end local v19    # "addedFile":Ljava/io/File;
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "addedFile":Ljava/io/File;
    .restart local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_b
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    .line 2167
    .end local v0    # "addedFile":Ljava/io/File;
    .end local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v6    # "targetFile":Ljava/io/File;
    .end local v7    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v8    # "targetName":Ljava/lang/String;
    .end local v9    # "dexMetadataFile":Ljava/io/File;
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_7
    move-object v9, v2

    move-object/from16 v4, v20

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 2143
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "addedFile":Ljava/io/File;
    .restart local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .restart local v7    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v8    # "targetName":Ljava/lang/String;
    :cond_c
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    .end local v0    # "addedFile":Ljava/io/File;
    .end local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "addedFile":Ljava/io/File;
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x2

    invoke-direct {v0, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2120
    .end local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "targetName":Ljava/lang/String;
    .end local v19    # "addedFile":Ljava/io/File;
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "addedFile":Ljava/io/File;
    .restart local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v9, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    .end local v0    # "addedFile":Ljava/io/File;
    .end local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "addedFile":Ljava/io/File;
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was defined multiple times"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x2

    invoke-direct {v0, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2114
    .end local v7    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v19    # "addedFile":Ljava/io/File;
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "addedFile":Ljava/io/File;
    .restart local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_e
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    .end local v0    # "addedFile":Ljava/io/File;
    .end local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "addedFile":Ljava/io/File;
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    .line 2115
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v0, v4, v6, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2169
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v19    # "addedFile":Ljava/io/File;
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_f
    move-object/from16 v20, v4

    move-object v2, v9

    .end local v4    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 2170
    if-eqz v3, :cond_13

    .line 2176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2177
    .local v4, "splitName":Ljava/lang/String;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2181
    .end local v4    # "splitName":Ljava/lang/String;
    goto :goto_8

    .line 2178
    .restart local v4    # "splitName":Ljava/lang/String;
    :cond_10
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x2

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2184
    .end local v4    # "splitName":Ljava/lang/String;
    :cond_11
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 2185
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2186
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 2188
    :cond_12
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v4, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v0, v4, :cond_14

    .line 2190
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    goto :goto_9

    .line 2193
    :catch_0
    move-exception v0

    .line 2194
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "Couldn\'t obtain signatures from base APK"

    const/4 v6, -0x2

    invoke-direct {v4, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 2171
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_13
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing existing base package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-direct {v0, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2200
    :cond_14
    :goto_9
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_16

    .line 2202
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v23, v2

    move-object/from16 v18, v3

    goto/16 :goto_16

    .line 2203
    :cond_15
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Full install must include a base package"

    const/4 v5, -0x2

    invoke-direct {v0, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2208
    :cond_16
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2209
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2210
    invoke-virtual {v12}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2209
    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 2211
    .local v6, "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$PackageLite;>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    const/16 v7, -0x6e

    if-nez v0, :cond_35

    .line 2215
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/PackageParser$PackageLite;

    .line 2216
    .local v8, "existing":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v12}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    .line 2217
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2216
    invoke-static {v0, v9, v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 2219
    .local v5, "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_34

    .line 2223
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageParser$ApkLite;

    .line 2225
    .local v7, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    const-string v0, "Existing base"

    invoke-direct {v1, v0, v7}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 2228
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v0, :cond_18

    .line 2229
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 2230
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 2232
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 2233
    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 2234
    .local v0, "baseDexMetadataFile":Ljava/io/File;
    if-eqz v0, :cond_17

    .line 2235
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 2237
    :cond_17
    move-object v9, v7

    move-object v14, v9

    .line 2241
    .end local v0    # "baseDexMetadataFile":Ljava/io/File;
    :cond_18
    iget-object v0, v8, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v9, v8, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_1b

    .line 2243
    iget-object v9, v8, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v9, v9, v0

    .line 2244
    .local v9, "splitName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object/from16 v18, v3

    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v18, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v8, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v13

    .line 2245
    .local v3, "splitFile":Ljava/io/File;
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 2246
    .local v13, "splitRemoved":Z
    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_19

    if-nez v13, :cond_19

    .line 2247
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 2249
    nop

    .line 2250
    move-object/from16 v19, v7

    .end local v7    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .local v19, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 2251
    .local v7, "splitDexMetadataFile":Ljava/io/File;
    if-eqz v7, :cond_1a

    .line 2252
    invoke-direct {v1, v7}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    goto :goto_b

    .line 2246
    .end local v19    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .local v7, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    :cond_19
    move-object/from16 v19, v7

    .line 2242
    .end local v3    # "splitFile":Ljava/io/File;
    .end local v7    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v9    # "splitName":Ljava/lang/String;
    .end local v13    # "splitRemoved":Z
    .restart local v19    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    :cond_1a
    :goto_b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v18

    move-object/from16 v7, v19

    goto :goto_a

    .end local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    :cond_1b
    move-object/from16 v18, v3

    move-object/from16 v19, v7

    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    goto :goto_c

    .line 2241
    .end local v0    # "i":I
    .end local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    :cond_1c
    move-object/from16 v18, v3

    move-object/from16 v19, v7

    .line 2259
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    :goto_c
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 2260
    .local v3, "packageInstallDir":Ljava/io/File;
    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 2261
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "oat"

    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 2262
    .local v7, "oatDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2263
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2268
    .local v0, "archSubdirs":[Ljava/io/File;
    if-eqz v0, :cond_21

    array-length v9, v0

    if-lez v9, :cond_21

    .line 2269
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v9

    .line 2270
    .local v9, "instructionSets":[Ljava/lang/String;
    array-length v13, v0

    move-object/from16 v21, v4

    const/4 v4, 0x0

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_d
    if-ge v4, v13, :cond_20

    aget-object v22, v0, v4

    .line 2272
    .local v22, "archSubDir":Ljava/io/File;
    move-object/from16 v23, v0

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .local v23, "archSubdirs":[Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2273
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    goto :goto_e

    .line 2276
    :cond_1d
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2277
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1f

    move-object/from16 v24, v7

    .end local v7    # "oatDir":Ljava/io/File;
    .local v24, "oatDir":Ljava/io/File;
    array-length v7, v0

    if-nez v7, :cond_1e

    .line 2278
    move-object/from16 v25, v8

    goto :goto_e

    .line 2281
    :cond_1e
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v25, v8

    .end local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .local v25, "existing":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2282
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    .line 2277
    .end local v24    # "oatDir":Ljava/io/File;
    .end local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v7    # "oatDir":Ljava/io/File;
    .restart local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    :cond_1f
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 2270
    .end local v0    # "files":[Ljava/io/File;
    .end local v7    # "oatDir":Ljava/io/File;
    .end local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v22    # "archSubDir":Ljava/io/File;
    .restart local v24    # "oatDir":Ljava/io/File;
    .restart local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    :goto_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto :goto_d

    .end local v23    # "archSubdirs":[Ljava/io/File;
    .end local v24    # "oatDir":Ljava/io/File;
    .end local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .local v0, "archSubdirs":[Ljava/io/File;
    .restart local v7    # "oatDir":Ljava/io/File;
    .restart local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    :cond_20
    move-object/from16 v23, v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .end local v7    # "oatDir":Ljava/io/File;
    .end local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v23    # "archSubdirs":[Ljava/io/File;
    .restart local v24    # "oatDir":Ljava/io/File;
    .restart local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    goto :goto_f

    .line 2268
    .end local v9    # "instructionSets":[Ljava/lang/String;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "archSubdirs":[Ljava/io/File;
    .end local v24    # "oatDir":Ljava/io/File;
    .end local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v0    # "archSubdirs":[Ljava/io/File;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "oatDir":Ljava/io/File;
    .restart local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    :cond_21
    move-object/from16 v23, v0

    move-object/from16 v21, v4

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "oatDir":Ljava/io/File;
    .end local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v23    # "archSubdirs":[Ljava/io/File;
    .restart local v24    # "oatDir":Ljava/io/File;
    .restart local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    goto :goto_f

    .line 2262
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "archSubdirs":[Ljava/io/File;
    .end local v24    # "oatDir":Ljava/io/File;
    .end local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "oatDir":Ljava/io/File;
    .restart local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    :cond_22
    move-object/from16 v21, v4

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 2288
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "oatDir":Ljava/io/File;
    .end local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v24    # "oatDir":Ljava/io/File;
    .restart local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2289
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "lib"

    invoke-direct {v4, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v4, v0, v7

    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "lib64"

    invoke-direct {v4, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v4, v0, v8

    move-object v4, v0

    .line 2292
    .local v4, "libDirs":[Ljava/io/File;
    array-length v8, v4

    move v9, v7

    :goto_10
    if-ge v9, v8, :cond_2b

    aget-object v13, v4, v9

    .line 2293
    .local v13, "libDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2294
    move-object/from16 v23, v2

    move-object/from16 v29, v3

    move-object/from16 v26, v4

    goto/16 :goto_15

    .line 2296
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    .line 2297
    .local v16, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    .line 2298
    .local v17, "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v7, v0

    move-object/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_11
    if-ge v2, v7, :cond_27

    move-object/from16 v26, v4

    .end local v4    # "libDirs":[Ljava/io/File;
    .local v26, "libDirs":[Ljava/io/File;
    aget-object v4, v0, v2

    .line 2299
    .local v4, "archSubDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v27

    if-nez v27, :cond_24

    .line 2300
    move-object/from16 v27, v0

    move-object/from16 v29, v3

    move/from16 v30, v7

    move-object/from16 v3, v16

    move-object/from16 v7, v17

    goto :goto_12

    .line 2304
    :cond_24
    :try_start_1
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v27
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v28, v27

    .line 2311
    .local v28, "relLibPath":Ljava/lang/String;
    nop

    .line 2313
    move-object/from16 v27, v0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2314
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_26

    move-object/from16 v29, v3

    .end local v3    # "packageInstallDir":Ljava/io/File;
    .local v29, "packageInstallDir":Ljava/io/File;
    array-length v3, v0

    if-nez v3, :cond_25

    .line 2315
    move/from16 v30, v7

    move-object/from16 v3, v16

    move-object/from16 v7, v17

    goto :goto_12

    .line 2318
    :cond_25
    move-object/from16 v3, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v28

    .end local v28    # "relLibPath":Ljava/lang/String;
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "relLibPath":Ljava/lang/String;
    .local v16, "archSubDir":Ljava/io/File;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2319
    nop

    .end local v4    # "relLibPath":Ljava/lang/String;
    .restart local v28    # "relLibPath":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move/from16 v30, v7

    move-object/from16 v7, v17

    .end local v17    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v7, "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 2314
    .end local v7    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v29    # "packageInstallDir":Ljava/io/File;
    .local v3, "packageInstallDir":Ljava/io/File;
    .local v4, "archSubDir":Ljava/io/File;
    .local v16, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_26
    move-object/from16 v29, v3

    move/from16 v30, v7

    move-object/from16 v3, v16

    move-object/from16 v7, v17

    move-object/from16 v16, v4

    .line 2298
    .end local v0    # "files":[Ljava/io/File;
    .end local v4    # "archSubDir":Ljava/io/File;
    .end local v16    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v28    # "relLibPath":Ljava/lang/String;
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v29    # "packageInstallDir":Ljava/io/File;
    :goto_12
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v4, v26

    move-object/from16 v0, v27

    move-object/from16 v3, v29

    move/from16 v7, v30

    goto :goto_11

    .line 2305
    .end local v7    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v29    # "packageInstallDir":Ljava/io/File;
    .local v3, "packageInstallDir":Ljava/io/File;
    .restart local v4    # "archSubDir":Ljava/io/File;
    .restart local v16    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_1
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v3, v16

    move-object/from16 v7, v17

    move-object/from16 v16, v4

    move-object v2, v0

    .end local v4    # "archSubDir":Ljava/io/File;
    .end local v17    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v16, "archSubDir":Ljava/io/File;
    .restart local v29    # "packageInstallDir":Ljava/io/File;
    move-object v0, v2

    .line 2306
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PackageInstallerSession"

    const-string v4, "Skipping linking of native library directory!"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2308
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2309
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2310
    goto :goto_13

    .line 2298
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v26    # "libDirs":[Ljava/io/File;
    .end local v29    # "packageInstallDir":Ljava/io/File;
    .local v3, "packageInstallDir":Ljava/io/File;
    .local v4, "libDirs":[Ljava/io/File;
    .local v16, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_27
    move-object/from16 v29, v3

    move-object/from16 v26, v4

    move-object/from16 v3, v16

    move-object/from16 v7, v17

    .line 2321
    .end local v4    # "libDirs":[Ljava/io/File;
    .end local v16    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v26    # "libDirs":[Ljava/io/File;
    .restart local v29    # "packageInstallDir":Ljava/io/File;
    :goto_13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2322
    .local v2, "subDir":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 2323
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2325
    .end local v2    # "subDir":Ljava/lang/String;
    :cond_28
    goto :goto_14

    .line 2326
    :cond_29
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 2293
    .end local v7    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "libDirs":[Ljava/io/File;
    .end local v29    # "packageInstallDir":Ljava/io/File;
    .local v2, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "packageInstallDir":Ljava/io/File;
    .restart local v4    # "libDirs":[Ljava/io/File;
    :cond_2a
    move-object/from16 v23, v2

    move-object/from16 v29, v3

    move-object/from16 v26, v4

    .line 2292
    .end local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "packageInstallDir":Ljava/io/File;
    .end local v4    # "libDirs":[Ljava/io/File;
    .end local v13    # "libDir":Ljava/io/File;
    .restart local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "libDirs":[Ljava/io/File;
    .restart local v29    # "packageInstallDir":Ljava/io/File;
    :goto_15
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v23

    move-object/from16 v4, v26

    move-object/from16 v3, v29

    const/4 v7, 0x0

    goto/16 :goto_10

    .end local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "libDirs":[Ljava/io/File;
    .end local v29    # "packageInstallDir":Ljava/io/File;
    .restart local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "packageInstallDir":Ljava/io/File;
    .restart local v4    # "libDirs":[Ljava/io/File;
    :cond_2b
    move-object/from16 v23, v2

    move-object/from16 v29, v3

    move-object/from16 v26, v4

    .end local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "packageInstallDir":Ljava/io/File;
    .end local v4    # "libDirs":[Ljava/io/File;
    .restart local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "libDirs":[Ljava/io/File;
    .restart local v29    # "packageInstallDir":Ljava/io/File;
    goto :goto_16

    .line 2288
    .end local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "libDirs":[Ljava/io/File;
    .end local v29    # "packageInstallDir":Ljava/io/File;
    .restart local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "packageInstallDir":Ljava/io/File;
    :cond_2c
    move-object/from16 v23, v2

    move-object/from16 v29, v3

    .line 2330
    .end local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "packageInstallDir":Ljava/io/File;
    .end local v5    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v6    # "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$PackageLite;>;"
    .end local v19    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "oatDir":Ljava/io/File;
    .end local v25    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_16
    iget-boolean v0, v14, Landroid/content/pm/PackageParser$ApkLite;->useEmbeddedDex:Z

    if-eqz v0, :cond_2f

    .line 2331
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 2332
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2333
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager;->auditUncompressedDexInApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v4, -0x2

    goto :goto_18

    .line 2334
    :cond_2d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Some dex are not uncompressed and aligned correctly for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {v0, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2332
    :cond_2e
    const/4 v4, -0x2

    .line 2338
    .end local v2    # "file":Ljava/io/File;
    :goto_18
    goto :goto_17

    .line 2340
    :cond_2f
    iget-boolean v0, v14, Landroid/content/pm/PackageParser$ApkLite;->isSplitRequired:Z

    if-eqz v0, :cond_31

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_30

    goto :goto_19

    .line 2341
    :cond_30
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing split for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2340
    :cond_31
    const/4 v2, 0x1

    .line 2345
    :goto_19
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_32

    move v7, v2

    goto :goto_1a

    :cond_32
    const/4 v7, 0x0

    :goto_1a
    move v0, v7

    .line 2346
    .local v0, "isInstallerShell":Z
    if-eqz v0, :cond_33

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-eqz v2, :cond_33

    .line 2347
    iget-boolean v2, v14, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    if-nez v2, :cond_33

    iget-boolean v2, v14, Landroid/content/pm/PackageParser$ApkLite;->profilableByShell:Z

    if-nez v2, :cond_33

    .line 2348
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    invoke-virtual {v2}, Landroid/os/incremental/IncrementalFileStorages;->disableReadLogs()V

    .line 2351
    :cond_33
    return-void

    .line 2220
    .end local v0    # "isInstallerShell":Z
    .end local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .restart local v6    # "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$PackageLite;>;"
    .restart local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    :cond_34
    move-object/from16 v23, v2

    move-object/from16 v18, v3

    .end local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2221
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v0, v7, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2212
    .end local v5    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v8    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_35
    move-object/from16 v23, v2

    move-object/from16 v18, v3

    .end local v2    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v23    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2213
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v0, v7, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static writeAutoRevokePermissionsMode(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 3
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3369
    const/4 v0, 0x0

    const-string v1, "auto-revoke-permissions-mode"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3370
    const-string/jumbo v2, "mode"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3371
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3372
    return-void
.end method

.method private static writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V
    .locals 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "grantedRuntimePermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3346
    if-eqz p1, :cond_0

    .line 3347
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3348
    .local v2, "permission":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "granted-runtime-permission"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3349
    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3350
    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3347
    .end local v2    # "permission":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3353
    :cond_0
    return-void
.end method

.method private static writeWhitelistedRestrictedPermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3357
    .local p1, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3359
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3360
    const/4 v2, 0x0

    const-string/jumbo v3, "whitelisted-restricted-permission"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3361
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3362
    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3365
    .end local v0    # "permissionCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 4

    .line 2645
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 2646
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 2647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 2649
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2655
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsNotLocked()Ljava/util/List;

    move-result-object v0

    .line 2656
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2657
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v2, :cond_1

    .line 2660
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystemLocked()V

    goto :goto_0

    .line 2662
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2665
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2670
    monitor-exit v1

    return-void

    .line 2672
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_4

    .line 2673
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 2674
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/StagingManager;->abortCommittedSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2676
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2677
    monitor-exit v1

    return-void

    .line 2679
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir(Ljava/util/List;)V

    .line 2682
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    if-eqz v2, :cond_5

    .line 2683
    const-string v2, "PackageInstallerSession"

    const-string v3, "Ignoring abandon after commit relinquished control"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    monitor-exit v1

    return-void

    .line 2686
    :cond_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 2687
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    const/16 v1, -0x73

    const/4 v2, 0x0

    const-string v3, "Session was abandoned"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2689
    return-void

    .line 2687
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2650
    .end local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is a child of multi-package session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and may not be abandoned directly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildSessionId(I)V
    .locals 4
    .param p1, "childSessionId"    # I

    .line 2982
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 2983
    .local v0, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_2

    .line 2984
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-ne v1, v2, :cond_2

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_2

    .line 2990
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2991
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2992
    const-string v2, "addChildSessionId"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 2994
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 2995
    .local v2, "indexOfSession":I
    if-ltz v2, :cond_1

    .line 2996
    monitor-exit v1

    return-void

    .line 2998
    :cond_1
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 2999
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionIdInternal(I)V

    .line 3000
    .end local v2    # "indexOfSession":I
    monitor-exit v1

    .line 3001
    return-void

    .line 3000
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2987
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add child session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as it does not exist or is in an invalid state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addChildSessionIdInternal(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 2594
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2595
    return-void
.end method

.method public addClientProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 791
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 793
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 794
    monitor-exit v0

    .line 795
    return-void

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addFile(ILjava/lang/String;J[B[B)V
    .locals 14
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lengthBytes"    # J
    .param p5, "metadata"    # [B
    .param p6, "signature"    # [B

    .line 2710
    move-object v1, p0

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v2, "com.android.permission.USE_INSTALLER_V2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2715
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStreamingInstallation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2716
    if-nez p1, :cond_0

    goto :goto_0

    .line 2717
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-incremental installation only supports /data/app placement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2721
    :cond_1
    :goto_0
    if-eqz p5, :cond_4

    .line 2726
    invoke-static/range {p2 .. p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2730
    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2731
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2732
    const-string v0, "addFile"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 2734
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v11, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v12

    new-instance v13, Landroid/content/pm/InstallationFile;

    move-object v2, v13

    move v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v11, v12, v13}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2738
    monitor-exit v10

    .line 2739
    return-void

    .line 2736
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File already added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "location":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "lengthBytes":J
    .end local p5    # "metadata":[B
    .end local p6    # "signature":[B
    throw v0

    .line 2738
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "location":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "lengthBytes":J
    .restart local p5    # "metadata":[B
    .restart local p6    # "signature":[B
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2727
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2722
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataLoader installation requires valid metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2712
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add files to non-data loader installation session."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 2625
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 2626
    return-void
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .locals 6
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "forTransfer"    # Z

    .line 1146
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1156
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    return-void

    .line 1159
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1160
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1161
    .local v0, "remainingSessions":Landroid/util/SparseIntArray;
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V

    .line 1163
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 1164
    .local v1, "childIntentSender":Landroid/content/IntentSender;
    const/4 v2, 0x0

    .line 1165
    .local v2, "sealFailed":Z
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1166
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1169
    .local v4, "childSessionId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v5, v4}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v5

    .line 1170
    invoke-direct {v5, v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1171
    const/4 v2, 0x1

    .line 1165
    .end local v4    # "childSessionId":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1174
    .end local v3    # "i":I
    :cond_3
    if-eqz v2, :cond_4

    .line 1175
    return-void

    .line 1179
    .end local v0    # "remainingSessions":Landroid/util/SparseIntArray;
    .end local v1    # "childIntentSender":Landroid/content/IntentSender;
    .end local v2    # "sealFailed":Z
    :cond_4
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchStreamValidateAndCommit()V

    .line 1180
    return-void

    .line 1151
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is a child of multi-package session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and may not be committed directly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 3217
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3218
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3219
    monitor-exit v0

    .line 3220
    return-void

    .line 3219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1
    .param p1, "includeIcon"    # Z
    .param p2, "callingUid"    # I

    .line 649
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->shouldScrubData(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1
    .param p1, "includeIcon"    # Z

    .line 659
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChildSessionIds()[I
    .locals 2

    .line 2973
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v0

    .line 2974
    .local v0, "childSessionIds":[I
    if-eqz v0, :cond_0

    .line 2975
    return-object v0

    .line 2977
    :cond_0
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    return-object v1
.end method

.method public getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;
    .locals 3

    .line 2703
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 2

    .line 2472
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2473
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    monitor-exit v0

    return-object v1

    .line 2474
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 2468
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerUid()I
    .locals 2

    .line 2444
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2445
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    monitor-exit v0

    return v1

    .line 2446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 813
    const-string v1, "getNames"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 815
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackageName()Ljava/lang/String;
    .locals 2

    .line 2453
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2454
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParentSessionId()I
    .locals 1

    .line 3040
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    return v0
.end method

.method getStagedSessionErrorCode()I
    .locals 1

    .line 3145
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    return v0
.end method

.method getStagedSessionErrorMessage()Ljava/lang/String;
    .locals 1

    .line 3150
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedMillis()J
    .locals 3

    .line 2462
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2463
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-wide v1

    .line 2464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasParentSessionId()Z
    .locals 2

    .line 3035
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCommitted()Z
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    monitor-exit v0

    return v1

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDestroyed()Z
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 737
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMultiPackage()Z
    .locals 1

    .line 2693
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    monitor-exit v0

    return v1

    .line 717
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSealed()Z
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return v1

    .line 723
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isStaged()Z
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return v0
.end method

.method public isStagedAndInTerminalState()Z
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 744
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isStagedSessionApplied()Z
    .locals 1

    .line 3135
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    return v0
.end method

.method isStagedSessionFailed()Z
    .locals 1

    .line 3140
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    return v0
.end method

.method isStagedSessionReady()Z
    .locals 1

    .line 3130
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    return v0
.end method

.method public synthetic lambda$doWriteInternal$0$PackageInstallerSession(Landroid/system/Int64Ref;J)V
    .locals 7
    .param p1, "last"    # Landroid/system/Int64Ref;
    .param p2, "progress"    # J

    .line 1032
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1033
    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    .line 1034
    .local v0, "delta":J
    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    .line 1035
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1036
    :try_start_0
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1038
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1040
    .end local v0    # "delta":J
    :cond_0
    :goto_0
    return-void
.end method

.method public markUpdated()V
    .locals 3

    .line 1663
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1664
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 1665
    monitor-exit v0

    .line 1666
    return-void

    .line 1665
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onAfterSessionRead()V
    .locals 5

    .line 1640
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1641
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1644
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1645
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsNotLocked()Ljava/util/List;

    move-result-object v1

    .line 1646
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1648
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked(Ljava/util/List;)V

    .line 1650
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexInstallation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1653
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1657
    :cond_1
    goto :goto_0

    .line 1658
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_2
    const-string v3, "PackageInstallerSession"

    const-string v4, "Package not valid"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1658
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_0
    monitor-exit v2

    .line 1659
    return-void

    .line 1658
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1642
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    .line 1644
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2598
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2599
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2604
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 2605
    .local v2, "wasPrepared":Z
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v3, :cond_3

    .line 2606
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 2607
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    goto :goto_0

    .line 2608
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v3, :cond_2

    .line 2614
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_1

    .line 2611
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "stageDir must be set"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2616
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2618
    if-nez v2, :cond_4

    .line 2619
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2621
    :cond_4
    return-void

    .line 2616
    .end local v2    # "wasPrepared":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1073
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 1079
    const-string/jumbo v1, "openRead"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 1082
    :catch_0
    move-exception v1

    .line 1083
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    throw v2

    .line 1085
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1074
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read regular files in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J

    .line 936
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 939
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-nez v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    const/16 v1, 0x1088

    const/4 v2, 0x0

    const/16 v3, 0x4e20

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 946
    :cond_1
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeChildSessionId(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 3005
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 3006
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3007
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 3008
    .local v2, "indexOfSession":I
    if-eqz v0, :cond_0

    .line 3009
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 3011
    :cond_0
    if-gez v2, :cond_1

    .line 3013
    monitor-exit v1

    return-void

    .line 3015
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3016
    .end local v2    # "indexOfSession":I
    monitor-exit v1

    .line 3017
    return-void

    .line 3016
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeFile(ILjava/lang/String;)V
    .locals 12
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 2743
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2748
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2752
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2753
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2754
    const-string/jumbo v1, "removeFile"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 2756
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-instance v11, Landroid/content/pm/InstallationFile;

    .line 2757
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v2, v3, v11}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    .line 2756
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2760
    monitor-exit v0

    .line 2761
    return-void

    .line 2758
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File already removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "location":I
    .end local p2    # "name":Ljava/lang/String;
    throw v1

    .line 2760
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "location":I
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2749
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2745
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add files to non-data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSplit(Ljava/lang/String;)V
    .locals 3
    .param p1, "splitName"    # Ljava/lang/String;

    .line 871
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 881
    const-string/jumbo v1, "removeSplit"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    nop

    .line 888
    :try_start_2
    monitor-exit v0

    .line 889
    return-void

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "splitName":Ljava/lang/String;
    throw v2

    .line 888
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "splitName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 876
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove splits in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClientProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 783
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 785
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 786
    monitor-exit v0

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setParentSessionId(I)V
    .locals 4
    .param p1, "parentSessionId"    # I

    .line 3024
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3025
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 3027
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The parent of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is alreadyset to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "parentSessionId":I
    throw v1

    .line 3030
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "parentSessionId":I
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 3031
    monitor-exit v0

    .line 3032
    return-void

    .line 3031
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPermissionsResult(Z)V
    .locals 3
    .param p1, "accepted"    # Z

    .line 2573
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_1

    .line 2577
    if-eqz p1, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2580
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 2581
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2582
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2584
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 2585
    const/16 v0, -0x73

    const/4 v1, 0x0

    const-string v2, "User rejected permissions"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2587
    :goto_0
    return-void

    .line 2574
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be sealed to accept permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setStagedSessionApplied()V
    .locals 4

    .line 3115
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3116
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3117
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 3118
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 3119
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 3120
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 3121
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 3122
    const-string v1, "PackageInstallerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as applied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3124
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDirNotLocked()V

    .line 3125
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3126
    return-void

    .line 3123
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setStagedSessionFailed(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 3100
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3101
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3102
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 3103
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 3104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 3105
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 3106
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 3107
    const-string v1, "PackageInstallerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDirNotLocked()V

    .line 3110
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3111
    return-void

    .line 3108
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setStagedSessionReady()V
    .locals 2

    .line 3086
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3087
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3088
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 3089
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 3090
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 3091
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 3092
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 3093
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3094
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3095
    return-void

    .line 3093
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public transfer(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1670
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1673
    .local v0, "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 1677
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 1685
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1689
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsNotLocked()Ljava/util/List;

    move-result-object v1

    .line 1691
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1692
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 1693
    const-string/jumbo v3, "transfer"

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    nop

    .line 1701
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1706
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1707
    const/4 v3, 0x0

    invoke-static {p1, v3, p1}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 1708
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1713
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1714
    return-void

    .line 1702
    :cond_0
    :try_start_3
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Can only transfer sessions that update the original installer"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v3

    .line 1697
    .restart local v0    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1698
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Package is not valid"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v4

    .line 1708
    .end local v3    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v0    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1686
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only transfer sessions that use public options"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1679
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1674
    :cond_3
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 961
    const-string v0, "PackageInstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 962
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    goto :goto_0

    .line 964
    :cond_0
    if-eqz p6, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    .line 968
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    nop

    .line 972
    return-void

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method write(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/File;)V
    .locals 13
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "sessionsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3386
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3387
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v1, :cond_0

    .line 3388
    monitor-exit v0

    return-void

    .line 3391
    :cond_0
    const-string/jumbo v1, "session"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3393
    const-string/jumbo v1, "sessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3394
    const-string/jumbo v1, "userId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3395
    const-string/jumbo v1, "installerPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3397
    const-string/jumbo v1, "installerUid"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3398
    const-string/jumbo v1, "installInitiatingPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3400
    const-string/jumbo v1, "installOriginatingPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3402
    const-string v1, "createdMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 3403
    const-string/jumbo v1, "updatedMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 3404
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 3405
    const-string/jumbo v1, "sessionStageDir"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 3406
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3405
    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3408
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3409
    const-string/jumbo v1, "sessionStageCid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3411
    :cond_2
    const-string/jumbo v1, "prepared"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPrepared()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3412
    const-string v1, "committed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3413
    const-string v1, "destroyed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3414
    const-string/jumbo v1, "sealed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3416
    const-string/jumbo v1, "multiPackage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3417
    const-string/jumbo v1, "stagedSession"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3418
    const-string/jumbo v1, "isReady"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3419
    const-string/jumbo v1, "isFailed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3420
    const-string/jumbo v1, "isApplied"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3421
    const-string v1, "errorCode"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3422
    const-string v1, "errorMessage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3426
    const-string/jumbo v1, "parentSessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3427
    const-string/jumbo v1, "mode"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3428
    const-string/jumbo v1, "installFlags"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3429
    const-string/jumbo v1, "installLocation"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3430
    const-string/jumbo v1, "sizeBytes"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 3431
    const-string v1, "appPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3432
    const-string v1, "appLabel"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3433
    const-string/jumbo v1, "originatingUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 3434
    const-string/jumbo v1, "originatingUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3435
    const-string/jumbo v1, "referrerUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 3436
    const-string v1, "abiOverride"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3437
    const-string/jumbo v1, "volumeUuid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3438
    const-string/jumbo v1, "installRason"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3440
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 3441
    .local v1, "isDataLoader":Z
    :goto_0
    const-string/jumbo v4, "isDataLoader"

    invoke-static {p1, v4, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3442
    if-eqz v1, :cond_4

    .line 3443
    const-string v4, "dataLoaderType"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3444
    const-string v4, "dataLoaderPackageName"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3445
    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3444
    invoke-static {p1, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3446
    const-string v4, "dataLoaderClassName"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3447
    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 3446
    invoke-static {p1, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3448
    const-string v4, "dataLoaderArguments"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3449
    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v5

    .line 3448
    invoke-static {p1, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3452
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/server/pm/PackageInstallerSession;->writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V

    .line 3453
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-static {p1, v4}, Lcom/android/server/pm/PackageInstallerSession;->writeWhitelistedRestrictedPermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 3455
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {p1, v4}, Lcom/android/server/pm/PackageInstallerSession;->writeAutoRevokePermissionsMode(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 3458
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v4, p2}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 3459
    .local v4, "appIconFile":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3460
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 3461
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    .line 3462
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 3463
    const-string v5, "PackageInstallerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing changed icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3464
    const/4 v5, 0x0

    .line 3466
    .local v5, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    .line 3467
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3471
    :goto_1
    :try_start_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3472
    goto :goto_2

    .line 3471
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 3468
    :catch_0
    move-exception v6

    .line 3469
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v7, "PackageInstallerSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write icon "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3474
    .end local v6    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_4

    .line 3471
    :goto_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3472
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local p2    # "sessionsDir":Ljava/io/File;
    throw v2

    .line 3476
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local p2    # "sessionsDir":Ljava/io/File;
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v5

    .line 3477
    .local v5, "childSessionIds":[I
    array-length v6, v5

    move v7, v3

    :goto_5
    if-ge v7, v6, :cond_7

    aget v8, v5, v7

    .line 3478
    .local v8, "childSessionId":I
    const-string v9, "childSession"

    invoke-interface {p1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3479
    const-string/jumbo v9, "sessionId"

    invoke-static {p1, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3480
    const-string v9, "childSession"

    invoke-interface {p1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3477
    nop

    .end local v8    # "childSessionId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 3483
    :cond_7
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v6

    .line 3484
    .local v6, "files":[Landroid/content/pm/InstallationFile;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v7

    array-length v8, v7

    :goto_6
    if-ge v3, v8, :cond_8

    aget-object v9, v7, v3

    .line 3485
    .local v9, "file":Landroid/content/pm/InstallationFile;
    const-string/jumbo v10, "sessionFile"

    invoke-interface {p1, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3486
    const-string/jumbo v10, "location"

    invoke-virtual {v9}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v11

    invoke-static {p1, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3487
    const-string/jumbo v10, "name"

    invoke-virtual {v9}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3488
    const-string/jumbo v10, "lengthBytes"

    invoke-virtual {v9}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v11

    invoke-static {p1, v10, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 3489
    const-string/jumbo v10, "metadata"

    invoke-virtual {v9}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v11

    invoke-static {p1, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 3490
    const-string/jumbo v10, "signature"

    invoke-virtual {v9}, Landroid/content/pm/InstallationFile;->getSignature()[B

    move-result-object v11

    invoke-static {p1, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 3491
    const-string/jumbo v10, "sessionFile"

    invoke-interface {p1, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3484
    nop

    .end local v9    # "file":Landroid/content/pm/InstallationFile;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3493
    .end local v1    # "isDataLoader":Z
    .end local v4    # "appIconFile":Ljava/io/File;
    .end local v5    # "childSessionIds":[I
    .end local v6    # "files":[Landroid/content/pm/InstallationFile;
    :cond_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3495
    const-string/jumbo v0, "session"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3496
    return-void

    .line 3493
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
