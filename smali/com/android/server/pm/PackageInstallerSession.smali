.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;
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

.field private static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field private static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field private static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field private static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "installRason"

.field private static final ATTR_IS_APPLIED:Ljava/lang/String; = "isApplied"

.field private static final ATTR_IS_FAILED:Ljava/lang/String; = "isFailed"

.field private static final ATTR_IS_READY:Ljava/lang/String; = "isReady"

.field private static final ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final ATTR_MULTI_PACKAGE:Ljava/lang/String; = "multiPackage"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ORIGINATING_UID:Ljava/lang/String; = "originatingUid"

.field private static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field private static final ATTR_PARENT_SESSION_ID:Ljava/lang/String; = "parentSessionId"

.field private static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field private static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field private static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field private static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field private static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field private static final ATTR_STAGED_SESSION:Ljava/lang/String; = "stagedSession"

.field private static final ATTR_STAGED_SESSION_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final ATTR_STAGED_SESSION_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final ATTR_UPDATED_MILLIS:Ljava/lang/String; = "updatedMillis"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field private static final EMPTY_CHILD_SESSION_ARRAY:[I

.field private static final LOGD:Z = true

.field private static final MSG_COMMIT:I = 0x1

.field private static final MSG_ON_PACKAGE_INSTALLED:I = 0x2

.field private static final PROPERTY_NAME_INHERIT_NATIVE:Ljava/lang/String; = "pi.inherit_native_on_dont_kill"

.field private static final REMOVE_SPLIT_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final TAG:Ljava/lang/String; = "PackageInstallerSession"

.field static final TAG_CHILD_SESSION:Ljava/lang/String; = "childSession"

.field private static final TAG_GRANTED_RUNTIME_PERMISSION:Ljava/lang/String; = "granted-runtime-permission"

.field static final TAG_SESSION:Ljava/lang/String; = "session"

.field private static final TAG_WHITELISTED_RESTRICTED_PERMISSION:Ljava/lang/String; = "whitelisted-restricted-permission"

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field final createdMillis:J

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBridges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mClientProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mCommitted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mFds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mFinalStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mInheritedFilesBase:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mInstallerPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mInstallerUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mInternalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mOriginalInstallerUid:I

.field private mPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mParentSessionId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPermissionsManuallyAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRelinquished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mReportedProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mResolvedBaseFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedNativeLibPaths:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvedStageDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

.field private mShouldBeSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionApplied:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionErrorCode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionErrorMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionFailed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;

.field private mVerityFound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mVersionCode:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field private updatedMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 312
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 324
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZZ[IIZZZILjava/lang/String;)V
    .locals 18
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "sessionProvider"    # Lcom/android/server/pm/PackageSessionProvider;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "stagingManager"    # Lcom/android/server/pm/StagingManager;
    .param p7, "sessionId"    # I
    .param p8, "userId"    # I
    .param p9, "installerPackageName"    # Ljava/lang/String;
    .param p10, "installerUid"    # I
    .param p11, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p12, "createdMillis"    # J
    .param p14, "stageDir"    # Ljava/io/File;
    .param p15, "stageCid"    # Ljava/lang/String;
    .param p16, "prepared"    # Z
    .param p17, "committed"    # Z
    .param p18, "sealed"    # Z
    .param p19, "childSessionIds"    # [I
    .param p20, "parentSessionId"    # I
    .param p21, "isReady"    # Z
    .param p22, "isFailed"    # Z
    .param p23, "isApplied"    # Z
    .param p24, "stagedSessionErrorCode"    # I
    .param p25, "stagedSessionErrorMessage"    # Ljava/lang/String;

    .line 420
    move-object/from16 v0, p0

    move/from16 v1, p10

    move-object/from16 v2, p11

    move-wide/from16 v3, p12

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p19

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 202
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 204
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 221
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 223
    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 226
    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 228
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 232
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 234
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 236
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 238
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 240
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 242
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 246
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 254
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 256
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 269
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    .line 280
    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 299
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 301
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 303
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 305
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 333
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v9, v0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 421
    move-object/from16 v9, p1

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 422
    move-object/from16 v10, p2

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 423
    move-object/from16 v11, p3

    iput-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 424
    move-object/from16 v12, p4

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 425
    new-instance v13, Landroid/os/Handler;

    iget-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v15, p5

    invoke-direct {v13, v15, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 426
    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 428
    move/from16 v14, p7

    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 429
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 430
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 431
    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 432
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 433
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 434
    iput-wide v3, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 435
    iput-wide v3, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 436
    iput-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 437
    iput-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 438
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 439
    if-eqz v7, :cond_1

    .line 440
    array-length v1, v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v7, v3

    .line 441
    .local v4, "childSessionId":I
    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 440
    .end local v4    # "childSessionId":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p19

    move/from16 v1, v17

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 439
    :cond_1
    const/4 v7, 0x0

    .line 444
    :goto_1
    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 446
    iget-boolean v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    if-nez v5, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    if-nez v6, :cond_3

    move v7, v3

    :cond_3
    if-eq v4, v7, :cond_4

    goto :goto_3

    .line 447
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_5
    :goto_3
    move/from16 v3, p16

    iput-boolean v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 452
    move/from16 v4, p17

    iput-boolean v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 453
    move/from16 v7, p21

    iput-boolean v7, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 454
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 455
    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 456
    move/from16 v1, p24

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 457
    nop

    .line 458
    if-eqz p25, :cond_6

    move-object/from16 v1, p25

    goto :goto_4

    :cond_6
    const-string v16, ""

    move-object/from16 v1, v16

    :goto_4
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 459
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 131
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleCommit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 131
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "apk"    # Landroid/content/pm/PackageParser$ApkLite;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1822
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " inconsistent with "

    const/4 v2, -0x2

    if-eqz v0, :cond_4

    .line 1826
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

    .line 1827
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

    .line 1831
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 1836
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1840
    return-void

    .line 1837
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

    .line 1832
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

    .line 1823
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 820
    .local v0, "callingUid":I
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 821
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

    .line 823
    :cond_1
    :goto_0
    return-void
.end method

.method private assertConsistencyWithLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5
    .param p1, "other"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const-string v2, " and session "

    const-string v3, "Multipackage Inconsistency: session "

    const/16 v4, -0x78

    if-ne v0, v1, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v0

    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1080
    return-void

    .line 1074
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

    .line 1067
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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

    .line 1044
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

    .line 1048
    .local v1, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v1, :cond_0

    .line 1049
    goto :goto_0

    .line 1051
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertConsistencyWithLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1052
    .end local v1    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_0

    .line 1053
    :cond_1
    return-void
.end method

.method private assertNoWriteFileTransfersOpenLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 831
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

    .line 832
    .local v1, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    .end local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_0

    .line 833
    .restart local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
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

    .line 837
    .local v1, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v1}, Landroid/os/FileBridge;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 840
    .end local v1    # "bridge":Landroid/os/FileBridge;
    goto :goto_1

    .line 838
    .restart local v1    # "bridge":Landroid/os/FileBridge;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    .end local v1    # "bridge":Landroid/os/FileBridge;
    :cond_3
    return-void
.end method

.method private assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 546
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 547
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v0, :cond_0

    .line 550
    return-void

    .line 548
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 554
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_1

    .line 557
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 560
    return-void

    .line 558
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

    .line 555
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 538
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 539
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v0, :cond_0

    .line 542
    return-void

    .line 540
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

.method private static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "sessionId"    # I
    .param p1, "sessionsDir"    # Ljava/io/File;

    .line 2375
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
    .locals 5

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 2300
    .local v3, "childSessionId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v4, v3}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    invoke-direct {v4}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2299
    .end local v3    # "childSessionId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2304
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

    .line 2306
    goto :goto_1

    .line 2305
    :catch_0
    move-exception v0

    .line 2308
    :cond_1
    :goto_1
    return-void
.end method

.method private closeInternal(Z)V
    .locals 3
    .param p1, "checkCaller"    # Z

    .line 2039
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2040
    if-eqz p1, :cond_0

    .line 2041
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2044
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 2045
    .local v1, "activeCount":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2047
    if-nez v1, :cond_1

    .line 2048
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2050
    :cond_1
    return-void

    .line 2045
    .end local v1    # "activeCount":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private commitNonStagedLocked(Ljava/util/List;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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

    .line 1278
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    nop

    .line 1279
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    move-result-object v0

    .line 1280
    .local v0, "committingSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    if-nez v0, :cond_0

    .line 1281
    return-void

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1284
    new-instance v1, Ljava/util/ArrayList;

    .line 1285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1286
    .local v1, "activeChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;>;"
    const/4 v2, 0x1

    .line 1287
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 1288
    .local v3, "failure":Lcom/android/server/pm/PackageManagerException;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1289
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 1291
    .local v5, "session":Lcom/android/server/pm/PackageInstallerSession;
    nop

    .line 1292
    :try_start_0
    invoke-direct {v5}, Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    move-result-object v6

    .line 1293
    .local v6, "activeSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    if-eqz v6, :cond_1

    .line 1294
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    .end local v6    # "activeSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    :cond_1
    goto :goto_1

    .line 1296
    :catch_0
    move-exception v6

    .line 1297
    .local v6, "e":Lcom/android/server/pm/PackageManagerException;
    move-object v3, v6

    .line 1298
    const/4 v2, 0x0

    .line 1288
    .end local v5    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1301
    .end local v4    # "i":I
    :cond_2
    if-nez v2, :cond_3

    .line 1303
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v3, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1304
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    .line 1303
    const/4 v7, 0x0

    invoke-interface {v4, v7, v5, v6, v7}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1306
    goto :goto_2

    .line 1305
    :catch_1
    move-exception v4

    .line 1307
    :goto_2
    return-void

    .line 1309
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/util/List;)V

    .line 1310
    .end local v1    # "activeChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;>;"
    .end local v2    # "success":Z
    .end local v3    # "failure":Lcom/android/server/pm/PackageManagerException;
    goto :goto_3

    .line 1311
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->installStage(Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V

    .line 1313
    :goto_3
    return-void
.end method

.method private computeProgressLocked(Z)V
    .locals 4
    .param p1, "forcePublish"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 602
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    .line 603
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 606
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 607
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 608
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 610
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

    .line 1930
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, ".tmp"

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 1931
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1932
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1930
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1936
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

    .line 1937
    .local v1, "fromFile":Ljava/io/File;
    const-string v4, "inherit"

    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 1938
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

    .line 1939
    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1943
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1a4

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    nop

    .line 1947
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1948
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

    .line 1949
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1952
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v4    # "tmpFile":Ljava/io/File;
    .end local v5    # "toFile":Ljava/io/File;
    goto :goto_1

    .line 1950
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

    .line 1944
    .end local v5    # "toFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1945
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

    .line 1940
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

    .line 1953
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

    .line 1954
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

    .line 1903
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

    .line 1905
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    nop

    .line 1909
    .end local v1    # "instructionSet":Ljava/lang/String;
    goto :goto_0

    .line 1906
    .restart local v1    # "instructionSet":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1907
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    .line 1910
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "markerName":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 651
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 652
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 655
    .end local v0    # "markerName":Ljava/lang/String;
    .end local v1    # "target":Ljava/io/File;
    nop

    .line 656
    return-void

    .line 648
    .restart local v0    # "markerName":Ljava/lang/String;
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

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "splitName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v0    # "markerName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "splitName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private destroyInternal()V
    .locals 3

    .line 2273
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2274
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 2275
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2276
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 2279
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

    .line 2280
    .local v2, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 2281
    .end local v2    # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_0

    .line 2282
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

    .line 2283
    .local v2, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v2}, Landroid/os/FileBridge;->forceClose()V

    .line 2284
    .end local v2    # "bridge":Landroid/os/FileBridge;
    goto :goto_1

    .line 2285
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2289
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_4

    .line 2291
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2293
    goto :goto_2

    .line 2292
    :catch_0
    move-exception v0

    .line 2295
    :cond_4
    :goto_2
    return-void

    .line 2285
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

    .line 2173
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2174
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 2175
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 2177
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 2178
    .local v1, "observer":Landroid/content/pm/IPackageInstallObserver2;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2179
    .local v2, "packageName":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    if-eqz v1, :cond_0

    .line 2185
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2186
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2187
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2188
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2189
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2190
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2192
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2195
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    .line 2198
    .local v4, "success":Z
    :goto_0
    if-eqz p3, :cond_2

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move v0, v3

    .line 2199
    .local v0, "isNewInstall":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerService;->okToSendBroadcasts()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2200
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 2203
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v3, p0, v4}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2204
    return-void

    .line 2179
    .end local v0    # "isNewInstall":Z
    .end local v1    # "observer":Landroid/content/pm/IPackageInstallObserver2;
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

.method private doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "incomingFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v12, p4

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 686
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 687
    const-string/jumbo v0, "openWrite"

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 689
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_0

    .line 690
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v0}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 691
    .local v0, "fd":Landroid/os/RevocableFileDescriptor;
    const/4 v6, 0x0

    .line 692
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    goto :goto_0

    .line 694
    .end local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6    # "bridge":Landroid/os/FileBridge;
    :cond_0
    const/4 v0, 0x0

    .line 695
    .restart local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    new-instance v6, Landroid/os/FileBridge;

    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    .line 696
    .restart local v6    # "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    .line 699
    .end local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .local v14, "fd":Landroid/os/RevocableFileDescriptor;
    .local v15, "bridge":Landroid/os/FileBridge;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v0

    move-object v11, v0

    .line 700
    .local v11, "stageDir":Ljava/io/File;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 704
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2

    move-wide/from16 v16, v5

    .line 710
    .local v16, "identity":J
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v18, v0

    .line 712
    .local v18, "target":Ljava/io/File;
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    nop

    .line 717
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    sget v6, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v5, v6

    const/16 v6, 0x1a4

    invoke-static {v0, v5, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v10, v0

    .line 719
    .local v10, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 723
    const-wide/16 v5, 0x0

    if-eqz v11, :cond_1

    cmp-long v0, v12, v5

    if-lez v0, :cond_1

    .line 724
    :try_start_4
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 725
    invoke-static {v7}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v7

    .line 724
    invoke-virtual {v0, v10, v12, v13, v7}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 728
    :cond_1
    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 729
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v10, v3, v4, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 782
    .end local v10    # "targetFd":Ljava/io/FileDescriptor;
    .end local v16    # "identity":J
    .end local v18    # "target":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object/from16 v19, v11

    goto/16 :goto_7

    .line 732
    .restart local v10    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v16    # "identity":J
    .restart local v18    # "target":Ljava/io/File;
    :cond_2
    :goto_1
    if-eqz p6, :cond_7

    .line 733
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v0, :cond_4

    const/16 v7, 0x3e8

    if-eq v0, v7, :cond_4

    const/16 v7, 0x7d0

    if-ne v0, v7, :cond_3

    goto :goto_2

    .line 739
    :cond_3
    :try_start_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Reverse mode only supported from shell or system"

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "stageDir":Ljava/io/File;
    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0

    .line 737
    .restart local v11    # "stageDir":Ljava/io/File;
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    nop

    .line 748
    :try_start_7
    new-instance v0, Landroid/system/Int64Ref;

    invoke-direct {v0, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    .line 749
    .local v0, "last":Landroid/system/Int64Ref;
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v9, 0x0

    sget-object v19, Lcom/android/server/pm/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    new-instance v7, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;

    invoke-direct {v7, v1, v0}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v6, v10

    move-object/from16 v20, v7

    move-wide/from16 v7, p4

    move-object/from16 v21, v10

    .end local v10    # "targetFd":Ljava/io/FileDescriptor;
    .local v21, "targetFd":Ljava/io/FileDescriptor;
    move-object/from16 v10, v19

    move-object/from16 v19, v11

    .end local v11    # "stageDir":Ljava/io/File;
    .local v19, "stageDir":Ljava/io/File;
    move-object/from16 v11, v20

    :try_start_8
    invoke-static/range {v5 .. v11}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 758
    nop

    .end local v0    # "last":Landroid/system/Int64Ref;
    :try_start_9
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 759
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 763
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_1

    .line 764
    :try_start_a
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_5

    .line 765
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 767
    :cond_5
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    .line 768
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 770
    :goto_3
    monitor-exit v5

    .line 771
    nop

    .line 772
    const/4 v0, 0x0

    return-object v0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local v19    # "stageDir":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :goto_4
    :try_start_b
    throw v0

    .line 758
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local v19    # "stageDir":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v19    # "stageDir":Ljava/io/File;
    .end local v21    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v10    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v11    # "stageDir":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v19, v11

    .end local v10    # "targetFd":Ljava/io/FileDescriptor;
    .end local v11    # "stageDir":Ljava/io/File;
    .restart local v19    # "stageDir":Ljava/io/File;
    .restart local v21    # "targetFd":Ljava/io/FileDescriptor;
    :goto_5
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 759
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 763
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_b} :catch_1

    .line 764
    :try_start_c
    sget-boolean v6, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v6, :cond_6

    .line 765
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 767
    :cond_6
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    .line 768
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 770
    :goto_6
    monitor-exit v5

    goto :goto_4

    :catchall_3
    move-exception v0

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_4

    .line 773
    .end local v19    # "stageDir":Ljava/io/File;
    .end local v21    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v10    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v11    # "stageDir":Ljava/io/File;
    :cond_7
    move-object/from16 v21, v10

    move-object/from16 v19, v11

    .end local v10    # "targetFd":Ljava/io/FileDescriptor;
    .end local v11    # "stageDir":Ljava/io/File;
    .restart local v19    # "stageDir":Ljava/io/File;
    .restart local v21    # "targetFd":Ljava/io/FileDescriptor;
    :try_start_d
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_8

    .line 774
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    move-object/from16 v5, v21

    .end local v21    # "targetFd":Ljava/io/FileDescriptor;
    .local v5, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v14, v0, v5}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 775
    invoke-virtual {v14}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 777
    .end local v5    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v21    # "targetFd":Ljava/io/FileDescriptor;
    :cond_8
    move-object/from16 v5, v21

    .end local v21    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v5    # "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v15, v5}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    .line 778
    invoke-virtual {v15}, Landroid/os/FileBridge;->start()V

    .line 779
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v15}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 712
    .end local v5    # "targetFd":Ljava/io/FileDescriptor;
    .end local v18    # "target":Ljava/io/File;
    .end local v19    # "stageDir":Ljava/io/File;
    .restart local v11    # "stageDir":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v11

    .end local v11    # "stageDir":Ljava/io/File;
    .restart local v19    # "stageDir":Ljava/io/File;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local v19    # "stageDir":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0

    .line 705
    .end local v16    # "identity":J
    .restart local v11    # "stageDir":Ljava/io/File;
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    move-object/from16 v19, v11

    .end local v11    # "stageDir":Ljava/io/File;
    .restart local v19    # "stageDir":Ljava/io/File;
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
    .end local v19    # "stageDir":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_d} :catch_1

    .line 782
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local v19    # "stageDir":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v19    # "stageDir":Ljava/io/File;
    .restart local v11    # "stageDir":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v19, v11

    .line 783
    .end local v11    # "stageDir":Ljava/io/File;
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v19    # "stageDir":Ljava/io/File;
    :goto_7
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 700
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local v19    # "stageDir":Ljava/io/File;
    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2318
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

    .line 2319
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2321
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2322
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mOriginalInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2323
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    const-string/jumbo v1, "mInstallerPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2324
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2325
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "createdMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2326
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string/jumbo v1, "stageDir"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2327
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    const-string/jumbo v1, "stageCid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2328
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2330
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2332
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "mClientProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2333
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "mProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2334
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mCommitted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2335
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mSealed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2336
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mPermissionsManuallyAccepted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2337
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mRelinquished"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2338
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mDestroyed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2339
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mFds"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2340
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mBridges"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2341
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mFinalStatus"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2342
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    const-string/jumbo v1, "mFinalMessage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2343
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "params.isMultiPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2344
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "params.isStaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2345
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2347
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2348
    return-void
.end method

.method private static extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .param p2, "inherit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1958
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1959
    .local v0, "libDir":Ljava/io/File;
    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 1961
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 1964
    :cond_0
    const/4 v2, 0x0

    .line 1966
    .local v2, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v3

    move-object v2, v3

    .line 1967
    invoke-static {v2, v0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    .local v3, "res":I
    if-ne v3, v1, :cond_1

    .line 1977
    .end local v3    # "res":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1978
    nop

    .line 1979
    return-void

    .line 1970
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
    .end local p0    # "packageDir":Ljava/io/File;
    .end local p1    # "abiOverride":Ljava/lang/String;
    .end local p2    # "inherit":Z
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1977
    .end local v3    # "res":I
    .restart local v0    # "libDir":Ljava/io/File;
    .restart local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0    # "packageDir":Ljava/io/File;
    .restart local p1    # "abiOverride":Ljava/lang/String;
    .restart local p2    # "inherit":Z
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1973
    :catch_0
    move-exception v1

    .line 1974
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x6e

    const-string v5, "Failed to extract native libraries"

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "libDir":Ljava/io/File;
    .end local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local p0    # "packageDir":Ljava/io/File;
    .end local p1    # "abiOverride":Ljava/lang/String;
    .end local p2    # "inherit":Z
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1977
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "libDir":Ljava/io/File;
    .restart local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0    # "packageDir":Ljava/io/File;
    .restart local p1    # "abiOverride":Ljava/lang/String;
    .restart local p2    # "inherit":Z
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private getChildSessions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v1

    .line 1027
    .local v1, "childSessionIds":[I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1028
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 1029
    .local v4, "childSessionId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v5, v4}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    .end local v4    # "childSessionId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1032
    .end local v1    # "childSessionIds":[I
    :cond_0
    return-object v0
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

    .line 1887
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1888
    .local v0, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1890
    .local v1, "baseStr":Ljava/lang/String;
    const-string v2, "/."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1894
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1895
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1898
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

    .line 1891
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

.method private handleCommit()V
    .locals 6

    .line 1237
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    const/16 v0, 0x70

    .line 1239
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 1240
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1241
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1245
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1246
    const/4 v0, 0x1

    const-string v2, "Session staged"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1247
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 1251
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1252
    const/16 v0, -0x6e

    const-string v2, "APEX packages can only be installed using staged sessions."

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1254
    return-void

    .line 1261
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 1264
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->commitNonStagedLocked(Ljava/util/List;)V

    .line 1266
    monitor-exit v2

    .line 1272
    goto :goto_0

    .line 1266
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

    .line 1267
    .restart local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catch_0
    move-exception v2

    .line 1268
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-static {v2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1269
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

    .line 1270
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1271
    iget v4, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1273
    .end local v2    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v3    # "completeMsg":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 366
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 367
    return v2

    .line 369
    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 370
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 371
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

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

    .line 1848
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 1849
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

    .line 1850
    .local v3, "fromFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 1851
    .local v4, "fromStat":Landroid/system/StructStat;
    iget-wide v5, v4, Landroid/system/StructStat;->st_dev:J

    iget-wide v7, v1, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 1852
    return v0

    .line 1854
    .end local v3    # "fromFile":Ljava/io/File;
    .end local v4    # "fromStat":Landroid/system/StructStat;
    :cond_0
    goto :goto_0

    .line 1858
    .end local v1    # "toStat":Landroid/system/StructStat;
    :cond_1
    nop

    .line 1859
    const/4 v0, 0x1

    return v0

    .line 1855
    :catch_0
    move-exception v1

    .line 1856
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

    .line 1857
    return v0
.end method

.method private static isStagedSessionStateValid(ZZZ)Z
    .locals 1
    .param p0, "isReady"    # Z
    .param p1, "isApplied"    # Z
    .param p2, "isFailed"    # Z

    .line 2472
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

.method static synthetic lambda$readFromXml$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 2579
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$readFromXml$2(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 2588
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
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

    .line 1914
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

    .line 1915
    .local v1, "fromFile":Ljava/io/File;
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 1917
    .local v2, "relativePath":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1918
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1917
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    nop

    .line 1923
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "relativePath":Ljava/lang/String;
    goto :goto_0

    .line 1919
    .restart local v1    # "fromFile":Ljava/io/File;
    .restart local v2    # "relativePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1920
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

    .line 1925
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

    .line 1926
    return-void
.end method

.method private makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1323
    const-string v0, "PackageInstallerSession"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_f

    .line 1327
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_e

    .line 1330
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_d

    .line 1335
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1336
    const/4 v0, 0x0

    .local v0, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    goto/16 :goto_6

    .line 1338
    .end local v0    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_b

    .line 1339
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->needToAskForPermissionsLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1349
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    goto :goto_0

    .line 1352
    :catch_0
    move-exception v1

    .line 1357
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 1358
    const/4 v1, 0x0

    return-object v1

    .line 1363
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 1365
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 1366
    .local v1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v3

    .line 1368
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

    .line 1369
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1370
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "mInheritedFilesBase == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v0

    .line 1373
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3
    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1374
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1375
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "oat"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1376
    .local v4, "oatDir":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    .line 1379
    .end local v4    # "oatDir":Ljava/io/File;
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1380
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1382
    .local v5, "libPath":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1383
    .local v6, "splitIndex":I
    if-ltz v6, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-lt v6, v7, :cond_5

    goto :goto_3

    .line 1389
    :cond_5
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1390
    .local v7, "libDirPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1391
    .local v8, "libDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1392
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1394
    :cond_6
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1395
    .local v9, "archDirPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1397
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v6    # "splitIndex":I
    .end local v7    # "libDirPath":Ljava/lang/String;
    .end local v8    # "libDir":Ljava/io/File;
    .end local v9    # "archDirPath":Ljava/lang/String;
    goto :goto_2

    .line 1384
    .restart local v5    # "libPath":Ljava/lang/String;
    .restart local v6    # "splitIndex":I
    :cond_7
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    goto :goto_2

    .line 1399
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v6    # "splitIndex":I
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_4

    .line 1403
    :cond_9
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1408
    .end local v1    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "toDir":Ljava/io/File;
    :goto_4
    goto :goto_5

    .line 1405
    :catch_1
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    const-string v3, "Failed to inherit existing install"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1412
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_5
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 1413
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1416
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 1417
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v3

    .line 1416
    invoke-static {v0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V

    .line 1422
    :cond_b
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1438
    .local v0, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :goto_6
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_c

    .line 1439
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .local v1, "user":Landroid/os/UserHandle;
    goto :goto_7

    .line 1447
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_c
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1, v3, v4}, Lcom/android/server/pm/PmInjector;->makeSessionActiveLockedUsers(ILjava/lang/String;I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1452
    .restart local v1    # "user":Landroid/os/UserHandle;
    :goto_7
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 1453
    new-instance v2, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object v3, v2

    move-object v6, v0

    move-object v10, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V

    return-object v2

    .line 1331
    .end local v0    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1328
    :cond_e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1324
    :cond_f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session relinquished"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private mayInheritNativeLibs()Z
    .locals 3

    .line 1473
    const/4 v0, 0x1

    const-string/jumbo v1, "pi.inherit_native_on_dont_kill"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 1459
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1460
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1461
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

    .line 1465
    :cond_1
    :goto_0
    return-void
.end method

.method private needToAskForPermissionsLocked()Z
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 384
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 385
    return v1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 389
    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 391
    .local v0, "isInstallPermissionGranted":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 392
    const-string v5, "android.permission.INSTALL_SELF_UPDATES"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 394
    .local v3, "isSelfUpdatePermissionGranted":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 395
    const-string v6, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    .line 397
    .local v4, "isUpdatePermissionGranted":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    .line 398
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

    .line 401
    .local v6, "isPermissionGranted":Z
    :goto_4
    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v7, :cond_7

    move v7, v2

    goto :goto_5

    :cond_7
    move v7, v1

    .line 402
    .local v7, "isInstallerRoot":Z
    :goto_5
    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_8

    move v8, v2

    goto :goto_6

    :cond_8
    move v8, v1

    .line 403
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

    .line 408
    .local v9, "forcePermissionPrompt":Z
    :goto_7
    if-nez v9, :cond_b

    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-nez v8, :cond_a

    .line 409
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    goto :goto_9

    :cond_b
    :goto_8
    move v1, v2

    .line 408
    :goto_9
    return v1
.end method

.method private openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 806
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 807
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 803
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

    .line 808
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method static readChildSessionIdFromXml(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 2604
    const-string/jumbo v0, "sessionId"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;)Lcom/android/server/pm/PackageInstallerSession;
    .locals 55
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

    .line 2497
    move-object/from16 v0, p0

    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    .line 2498
    .local v14, "sessionId":I
    const-string/jumbo v2, "userId"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    .line 2499
    .local v15, "userId":I
    const-string v2, "installerPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2500
    .local v13, "installerPackageName":Ljava/lang/String;
    const/16 v2, 0x2000

    move-object/from16 v12, p3

    invoke-virtual {v12, v13, v2, v15}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    const-string v3, "installerUid"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v28

    .line 2502
    .local v28, "installerUid":I
    const-string v2, "createdMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v29

    .line 2503
    .local v29, "createdMillis":J
    const-string/jumbo v2, "updatedMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v31

    .line 2504
    .local v31, "updatedMillis":J
    const-string/jumbo v2, "sessionStageDir"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2505
    .local v11, "stageDirRaw":Ljava/lang/String;
    if-eqz v11, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v16, v2

    .line 2506
    .local v16, "stageDir":Ljava/io/File;
    const-string/jumbo v2, "sessionStageCid"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2507
    .local v33, "stageCid":Ljava/lang/String;
    const/4 v2, 0x1

    const-string/jumbo v3, "prepared"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v34

    .line 2508
    .local v34, "prepared":Z
    const-string v3, "committed"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    .line 2509
    .local v35, "committed":Z
    const-string/jumbo v3, "sealed"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v36

    .line 2510
    .local v36, "sealed":Z
    const/4 v3, -0x1

    const-string/jumbo v4, "parentSessionId"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v37

    .line 2513
    .local v37, "parentSessionId":I
    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v4, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v10, v4

    .line 2515
    .local v10, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const/4 v4, 0x0

    const-string/jumbo v5, "multiPackage"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 2516
    const-string/jumbo v5, "stagedSession"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2517
    const-string/jumbo v5, "mode"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2518
    const-string v5, "installFlags"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2519
    const-string v5, "installLocation"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2520
    const-string/jumbo v5, "sizeBytes"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2521
    const-string v5, "appPackageName"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2522
    const-string v5, "appIcon"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2523
    const-string v5, "appLabel"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2524
    const-string/jumbo v5, "originatingUri"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2525
    nop

    .line 2526
    const-string/jumbo v5, "originatingUid"

    invoke-static {v0, v5, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2527
    const-string/jumbo v5, "referrerUri"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2528
    const-string v5, "abiOverride"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2529
    const-string/jumbo v5, "volumeUuid"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2530
    const-string v5, "installRason"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2532
    move-object/from16 v9, p6

    invoke-static {v14, v9}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v38

    .line 2533
    .local v38, "appIconFile":Ljava/io/File;
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2534
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2535
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 2537
    :cond_1
    const-string/jumbo v5, "isReady"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    .line 2538
    .local v8, "isReady":Z
    const-string v5, "isFailed"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    .line 2539
    .local v7, "isFailed":Z
    const-string v5, "isApplied"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    .line 2540
    .local v6, "isApplied":Z
    const-string v5, "errorCode"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v39

    .line 2542
    .local v39, "stagedSessionErrorCode":I
    const-string v4, "errorMessage"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2545
    .local v40, "stagedSessionErrorMessage":Ljava/lang/String;
    invoke-static {v8, v6, v7}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionStateValid(ZZZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2555
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    .line 2556
    .local v5, "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2557
    .local v4, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v41, v17

    .line 2558
    .local v41, "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2560
    .local v3, "outerDepth":I
    :goto_1
    move/from16 v18, v6

    .end local v6    # "isApplied":Z
    .local v18, "isApplied":Z
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move/from16 v42, v6

    .local v42, "type":I
    if-eq v6, v2, :cond_9

    const/4 v6, 0x3

    move/from16 v12, v42

    .end local v42    # "type":I
    .local v12, "type":I
    if-ne v12, v6, :cond_3

    .line 2561
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v20, v3

    move-object/from16 v6, v41

    goto/16 :goto_3

    .line 2562
    :cond_3
    :goto_2
    if-eq v12, v6, :cond_8

    const/4 v2, 0x4

    if-ne v12, v2, :cond_4

    .line 2563
    move-object/from16 v12, p3

    move/from16 v6, v18

    const/4 v2, 0x1

    goto :goto_1

    .line 2565
    :cond_4
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "granted-runtime-permission"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v6, "name"

    if-eqz v2, :cond_5

    .line 2566
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2568
    :cond_5
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move/from16 v20, v3

    .end local v3    # "outerDepth":I
    .local v20, "outerDepth":I
    const-string/jumbo v3, "whitelisted-restricted-permission"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2569
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2572
    :cond_6
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "childSession"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2573
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, v41

    .end local v41    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p3

    move/from16 v6, v18

    move/from16 v3, v20

    const/4 v2, 0x1

    goto :goto_1

    .line 2572
    .end local v6    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v6, v41

    const/4 v2, -0x1

    .end local v41    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v12, p3

    move/from16 v6, v18

    move/from16 v3, v20

    const/4 v2, 0x1

    goto :goto_1

    .line 2562
    .end local v6    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20    # "outerDepth":I
    .restart local v3    # "outerDepth":I
    .restart local v41    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    move/from16 v20, v3

    move-object/from16 v6, v41

    const/4 v2, -0x1

    .end local v3    # "outerDepth":I
    .end local v41    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "outerDepth":I
    move-object/from16 v12, p3

    move/from16 v6, v18

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2560
    .end local v6    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "type":I
    .end local v20    # "outerDepth":I
    .restart local v3    # "outerDepth":I
    .restart local v41    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v42    # "type":I
    :cond_9
    move/from16 v20, v3

    move-object/from16 v6, v41

    move/from16 v12, v42

    .line 2577
    .end local v3    # "outerDepth":I
    .end local v41    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v42    # "type":I
    .restart local v6    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "type":I
    .restart local v20    # "outerDepth":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 2578
    nop

    .line 2579
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$7Sec-athzbWSLkwYbdNW1Dgq0jU;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$7Sec-athzbWSLkwYbdNW1Dgq0jU;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v10, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 2582
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 2583
    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 2587
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 2588
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .local v1, "childSessionIdsArray":[I
    goto :goto_4

    .line 2590
    .end local v1    # "childSessionIdsArray":[I
    :cond_c
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 2593
    .restart local v1    # "childSessionIdsArray":[I
    :goto_4
    new-instance v41, Lcom/android/server/pm/PackageInstallerSession;

    move-object/from16 v2, v41

    move/from16 v42, v20

    .end local v20    # "outerDepth":I
    .local v42, "outerDepth":I
    move-object/from16 v3, p1

    move-object/from16 v43, v4

    .end local v4    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v43, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, p2

    move-object/from16 v44, v5

    .end local v5    # "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v44, "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v5, p3

    move-object/from16 v46, v6

    move/from16 v45, v18

    .end local v6    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "isApplied":Z
    .local v45, "isApplied":Z
    .local v46, "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v6, p7

    move/from16 v47, v7

    .end local v7    # "isFailed":Z
    .local v47, "isFailed":Z
    move-object/from16 v7, p4

    move/from16 v48, v8

    .end local v8    # "isReady":Z
    .local v48, "isReady":Z
    move-object/from16 v8, p5

    move v9, v14

    move-object/from16 v49, v10

    .end local v10    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v49, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move v10, v15

    move-object/from16 v50, v11

    .end local v11    # "stageDirRaw":Ljava/lang/String;
    .local v50, "stageDirRaw":Ljava/lang/String;
    move-object v11, v13

    move/from16 v51, v12

    .end local v12    # "type":I
    .local v51, "type":I
    move/from16 v12, v28

    move-object/from16 v52, v13

    .end local v13    # "installerPackageName":Ljava/lang/String;
    .local v52, "installerPackageName":Ljava/lang/String;
    move-object/from16 v13, v49

    move/from16 v53, v14

    move/from16 v54, v15

    .end local v14    # "sessionId":I
    .end local v15    # "userId":I
    .local v53, "sessionId":I
    .local v54, "userId":I
    move-wide/from16 v14, v29

    move-object/from16 v17, v33

    move/from16 v18, v34

    move/from16 v19, v35

    move/from16 v20, v36

    move-object/from16 v21, v1

    move/from16 v22, v37

    move/from16 v23, v48

    move/from16 v24, v47

    move/from16 v25, v45

    move/from16 v26, v39

    move-object/from16 v27, v40

    invoke-direct/range {v2 .. v27}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZZ[IIZZZILjava/lang/String;)V

    return-object v41

    .line 2546
    .end local v1    # "childSessionIdsArray":[I
    .end local v42    # "outerDepth":I
    .end local v43    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v44    # "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "isApplied":Z
    .end local v46    # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v47    # "isFailed":Z
    .end local v48    # "isReady":Z
    .end local v49    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v50    # "stageDirRaw":Ljava/lang/String;
    .end local v51    # "type":I
    .end local v52    # "installerPackageName":Ljava/lang/String;
    .end local v53    # "sessionId":I
    .end local v54    # "userId":I
    .local v6, "isApplied":Z
    .restart local v7    # "isFailed":Z
    .restart local v8    # "isReady":Z
    .restart local v10    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v11    # "stageDirRaw":Ljava/lang/String;
    .restart local v13    # "installerPackageName":Ljava/lang/String;
    .restart local v14    # "sessionId":I
    .restart local v15    # "userId":I
    :cond_d
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

    .line 1777
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1778
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 1780
    new-instance v0, Ljava/io/File;

    .line 1781
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1783
    .local v0, "originalSignature":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, -0x76

    if-eqz v1, :cond_2

    .line 1787
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    if-nez v1, :cond_1

    .line 1788
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    .line 1789
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_0

    goto :goto_0

    .line 1790
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Some file is missing fs-verity signature"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1802
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 1803
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1804
    .local v1, "stagedSignature":Ljava/io/File;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 1805
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1806
    return-void

    .line 1795
    .end local v1    # "stagedSignature":Ljava/io/File;
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    if-nez v1, :cond_3

    .line 1796
    return-void

    .line 1798
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

    .line 1809
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1812
    new-instance v0, Ljava/io/File;

    .line 1813
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1814
    .local v0, "fsveritySignatureFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_0
    return-void
.end method

.method private resolveStageDirLocked()Ljava/io/File;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 571
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    goto :goto_0

    .line 573
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing stageDir"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    return-object v0
.end method

.method private sealAndValidateLocked(Ljava/util/List;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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
            Lcom/android/server/pm/PackageManagerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 1096
    const-string/jumbo v0, "sealing of session"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 1100
    if-eqz p1, :cond_0

    .line 1101
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertMultiPackageConsistencyLocked(Ljava/util/List;)V

    .line 1104
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_3

    .line 1105
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v1}, Lcom/android/server/pm/StagingManager;->getActiveSession()Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    .line 1106
    .local v1, "activeSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1109
    .local v0, "anotherSessionAlreadyInProgress":Z
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 1110
    :cond_2
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is already in-progress committed staged session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1120
    .end local v0    # "anotherSessionAlreadyInProgress":Z
    .end local v1    # "activeSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_5

    .line 1121
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const v2, 0x4000040

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1125
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 1128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 1129
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_2

    .line 1131
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    :goto_2
    goto :goto_3

    .line 1135
    :catchall_0
    move-exception v1

    .line 1138
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1133
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 1134
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    throw v1

    .line 1141
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_5
    :goto_3
    return-void
.end method

.method private validateApexInstallLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1487
    .local v0, "addedFiles":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_1

    .line 1491
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 1496
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1497
    return-void

    .line 1492
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Too many files for apex install"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1488
    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "No packages staged"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private validateApkInstallLocked(Landroid/content/pm/PackageInfo;)V
    .locals 26
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1514
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1515
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1516
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1517
    sget-object v4, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1519
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1520
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1521
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1524
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v5, 0x2

    const/4 v6, -0x2

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1526
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Missing existing base package"

    invoke-direct {v0, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1530
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1532
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    iput-boolean v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    .line 1535
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1539
    nop

    .line 1541
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v9, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-virtual {v4, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1542
    .local v4, "removedFiles":[Ljava/io/File;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .local v9, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1544
    array-length v10, v4

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_3

    aget-object v12, v4, v11

    .line 1545
    .local v12, "removedFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1546
    .local v13, "fileName":Ljava/lang/String;
    nop

    .line 1547
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, ".removed"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1546
    invoke-virtual {v13, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1548
    .local v14, "splitName":Ljava/lang/String;
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    .end local v12    # "removedFile":Ljava/io/File;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14    # "splitName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1552
    :cond_3
    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v11, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v10

    .line 1553
    .local v10, "addedFiles":[Ljava/io/File;
    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    .line 1554
    :cond_4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "No packages staged"

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1558
    :cond_5
    :goto_3
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1559
    .local v11, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v12, v10

    move-object v13, v3

    move v3, v7

    .end local v3    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .local v13, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :goto_4
    const-string v14, ".apk"

    const/16 v15, 0x20

    if-ge v3, v12, :cond_e

    aget-object v5, v10, v3

    .line 1562
    .local v5, "addedFile":Ljava/io/File;
    :try_start_1
    invoke-static {v5, v15}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v15
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1566
    .local v15, "apk":Landroid/content/pm/PackageParser$ApkLite;
    nop

    .line 1568
    iget-object v7, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1574
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 1575
    iget-object v7, v15, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1576
    move-object v7, v9

    .end local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    goto :goto_5

    .line 1574
    .end local v7    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move-object v7, v9

    .line 1578
    .end local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v9, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v8, v9, :cond_7

    .line 1579
    iget-object v8, v15, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1582
    :cond_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v15}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 1586
    iget-object v8, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 1587
    const-string v8, "base.apk"

    .local v8, "targetName":Ljava/lang/String;
    goto :goto_6

    .line 1589
    .end local v8    # "targetName":Ljava/lang/String;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "split_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1591
    .restart local v8    # "targetName":Ljava/lang/String;
    :goto_6
    invoke-static {v8}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v9

    const-string v14, "Invalid filename: "

    if-eqz v9, :cond_c

    .line 1596
    new-instance v9, Ljava/io/File;

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v9

    .line 1597
    .local v0, "targetFile":Ljava/io/File;
    invoke-direct {v1, v5, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    .line 1600
    iget-object v9, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v9, :cond_9

    .line 1601
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1602
    move-object v9, v15

    move-object v13, v9

    .line 1605
    :cond_9
    invoke-static {v5}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 1606
    .local v9, "dexMetadataFile":Ljava/io/File;
    if-eqz v9, :cond_b

    .line 1607
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1611
    new-instance v14, Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 1612
    move-object/from16 v20, v0

    .end local v0    # "targetFile":Ljava/io/File;
    .local v20, "targetFile":Ljava/io/File;
    invoke-static {v8}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v14

    .line 1613
    .local v0, "targetDexMetadataFile":Ljava/io/File;
    invoke-direct {v1, v9, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_7

    .line 1608
    .end local v20    # "targetFile":Ljava/io/File;
    .local v0, "targetFile":Ljava/io/File;
    :cond_a
    move-object/from16 v20, v0

    .end local v0    # "targetFile":Ljava/io/File;
    .restart local v20    # "targetFile":Ljava/io/File;
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x2

    invoke-direct {v0, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1606
    .end local v20    # "targetFile":Ljava/io/File;
    .restart local v0    # "targetFile":Ljava/io/File;
    :cond_b
    move-object/from16 v20, v0

    .line 1559
    .end local v0    # "targetFile":Ljava/io/File;
    .end local v5    # "addedFile":Ljava/io/File;
    .end local v8    # "targetName":Ljava/lang/String;
    .end local v9    # "dexMetadataFile":Ljava/io/File;
    .end local v15    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object v9, v7

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1592
    .restart local v5    # "addedFile":Ljava/io/File;
    .restart local v8    # "targetName":Ljava/lang/String;
    .restart local v15    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x2

    invoke-direct {v0, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1569
    .end local v7    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "targetName":Ljava/lang/String;
    .local v9, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was defined multiple times"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x2

    invoke-direct {v0, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1564
    .end local v15    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_0
    move-exception v0

    move-object v7, v9

    move-object v3, v0

    .end local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v3

    .line 1565
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v3

    throw v3

    .line 1617
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v5    # "addedFile":Ljava/io/File;
    .end local v7    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    move-object v7, v9

    .end local v9    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1618
    if-eqz v2, :cond_12

    .line 1624
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1625
    .local v3, "splitName":Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1629
    .end local v3    # "splitName":Ljava/lang/String;
    goto :goto_8

    .line 1626
    .restart local v3    # "splitName":Ljava/lang/String;
    :cond_f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x2

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1632
    .end local v3    # "splitName":Ljava/lang/String;
    :cond_10
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1633
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1634
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1636
    :cond_11
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v0, v3, :cond_13

    .line 1638
    :try_start_2
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1644
    goto :goto_9

    .line 1641
    :catch_1
    move-exception v0

    .line 1642
    .restart local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "Couldn\'t obtain signatures from base APK"

    const/4 v6, -0x2

    invoke-direct {v3, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1619
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_12
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing existing base package for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x2

    invoke-direct {v0, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1648
    :cond_13
    :goto_9
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_15

    .line 1650
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object/from16 v25, v4

    goto/16 :goto_13

    .line 1651
    :cond_14
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Full install must include a base package"

    const/4 v5, -0x2

    invoke-direct {v0, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1658
    :cond_15
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1660
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    move-object v5, v0

    .line 1661
    .local v5, "existing":Landroid/content/pm/PackageParser$PackageLite;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v15}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v0

    .line 1665
    .local v6, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    nop

    .line 1667
    const-string v0, "Existing base"

    invoke-direct {v1, v0, v6}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 1670
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v0, :cond_17

    .line 1671
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1672
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1674
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1675
    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1676
    .local v0, "baseDexMetadataFile":Ljava/io/File;
    if-eqz v0, :cond_16

    .line 1677
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1679
    :cond_16
    move-object v8, v6

    move-object v13, v8

    .line 1683
    .end local v0    # "baseDexMetadataFile":Ljava/io/File;
    :cond_17
    iget-object v0, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v8, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_19

    .line 1685
    iget-object v8, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v8, v8, v0

    .line 1686
    .local v8, "splitName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    iget-object v12, v5, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    aget-object v12, v12, v0

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v9, "splitFile":Ljava/io/File;
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 1688
    .local v12, "splitRemoved":Z
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    if-nez v12, :cond_18

    .line 1689
    invoke-direct {v1, v9}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1691
    nop

    .line 1692
    invoke-static {v9}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    .line 1693
    .local v15, "splitDexMetadataFile":Ljava/io/File;
    if-eqz v15, :cond_18

    .line 1694
    invoke-direct {v1, v15}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1684
    .end local v8    # "splitName":Ljava/lang/String;
    .end local v9    # "splitFile":Ljava/io/File;
    .end local v12    # "splitRemoved":Z
    .end local v15    # "splitDexMetadataFile":Ljava/io/File;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1701
    .end local v0    # "i":I
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 1702
    .local v8, "packageInstallDir":Ljava/io/File;
    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 1703
    new-instance v0, Ljava/io/File;

    const-string/jumbo v9, "oat"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 1704
    .local v9, "oatDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1705
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1710
    .local v0, "archSubdirs":[Ljava/io/File;
    if-eqz v0, :cond_1d

    array-length v12, v0

    if-lez v12, :cond_1d

    .line 1711
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v12

    .line 1712
    .local v12, "instructionSets":[Ljava/lang/String;
    array-length v15, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v15, :cond_1c

    aget-object v18, v0, v2

    .line 1714
    .local v18, "archSubDir":Ljava/io/File;
    move-object/from16 v20, v0

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .local v20, "archSubdirs":[Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1715
    move-object/from16 v21, v3

    goto :goto_c

    .line 1718
    :cond_1a
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v21, v3

    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1720
    .local v0, "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1721
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1712
    .end local v0    # "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "archSubDir":Ljava/io/File;
    :cond_1b
    :goto_c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    goto :goto_b

    .end local v20    # "archSubdirs":[Ljava/io/File;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "archSubdirs":[Ljava/io/File;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1c
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "archSubdirs":[Ljava/io/File;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_d

    .line 1710
    .end local v12    # "instructionSets":[Ljava/lang/String;
    .end local v20    # "archSubdirs":[Ljava/io/File;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "archSubdirs":[Ljava/io/File;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1d
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "archSubdirs":[Ljava/io/File;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_d

    .line 1704
    .end local v20    # "archSubdirs":[Ljava/io/File;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1e
    move-object/from16 v21, v3

    .line 1728
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1729
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "lib"

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Ljava/io/File;

    const-string/jumbo v12, "lib64"

    invoke-direct {v2, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v2, v0, v12

    move-object v2, v0

    .line 1732
    .local v2, "libDirs":[Ljava/io/File;
    array-length v12, v2

    move v15, v3

    :goto_e
    if-ge v15, v12, :cond_24

    aget-object v16, v2, v15

    .line 1733
    .local v16, "libDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1734
    move-object/from16 v20, v2

    move-object/from16 v25, v4

    goto/16 :goto_12

    .line 1736
    :cond_1f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v17, v0

    .line 1737
    .local v17, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "libDirs":[Ljava/io/File;
    .local v20, "libDirs":[Ljava/io/File;
    :goto_f
    if-ge v2, v3, :cond_22

    move/from16 v22, v3

    aget-object v3, v0, v2

    .line 1738
    .local v3, "archSubDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-nez v23, :cond_20

    .line 1739
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    move-object/from16 v3, v17

    goto :goto_10

    .line 1743
    :cond_20
    :try_start_4
    invoke-static {v3, v8}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v23
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v24, v23

    .line 1749
    .local v24, "relLibPath":Ljava/lang/String;
    nop

    .line 1750
    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    move-object/from16 v25, v4

    move-object/from16 v4, v24

    .end local v24    # "relLibPath":Ljava/lang/String;
    .local v4, "relLibPath":Ljava/lang/String;
    .local v25, "removedFiles":[Ljava/io/File;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1751
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    :cond_21
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v24, v3

    move-object/from16 v3, v17

    .end local v17    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v24, "archSubDir":Ljava/io/File;
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1737
    .end local v4    # "relLibPath":Ljava/lang/String;
    .end local v24    # "archSubDir":Ljava/io/File;
    :goto_10
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v17, v3

    move/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v4, v25

    goto :goto_f

    .line 1744
    .end local v25    # "removedFiles":[Ljava/io/File;
    .local v3, "archSubDir":Ljava/io/File;
    .local v4, "removedFiles":[Ljava/io/File;
    .restart local v17    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_2
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v3, v17

    move-object v2, v0

    .end local v4    # "removedFiles":[Ljava/io/File;
    .end local v17    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v24    # "archSubDir":Ljava/io/File;
    .restart local v25    # "removedFiles":[Ljava/io/File;
    move-object v0, v2

    .line 1745
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PackageInstallerSession"

    const-string v4, "Skipping linking of native library directory!"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1748
    goto :goto_11

    .line 1737
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v24    # "archSubDir":Ljava/io/File;
    .end local v25    # "removedFiles":[Ljava/io/File;
    .restart local v4    # "removedFiles":[Ljava/io/File;
    .restart local v17    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_22
    move-object/from16 v25, v4

    move-object/from16 v3, v17

    .line 1755
    .end local v4    # "removedFiles":[Ljava/io/File;
    .end local v17    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v3    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v25    # "removedFiles":[Ljava/io/File;
    :goto_11
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 1733
    .end local v3    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v20    # "libDirs":[Ljava/io/File;
    .end local v25    # "removedFiles":[Ljava/io/File;
    .restart local v2    # "libDirs":[Ljava/io/File;
    .restart local v4    # "removedFiles":[Ljava/io/File;
    :cond_23
    move-object/from16 v20, v2

    move-object/from16 v25, v4

    .line 1732
    .end local v2    # "libDirs":[Ljava/io/File;
    .end local v4    # "removedFiles":[Ljava/io/File;
    .end local v16    # "libDir":Ljava/io/File;
    .restart local v20    # "libDirs":[Ljava/io/File;
    .restart local v25    # "removedFiles":[Ljava/io/File;
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v20

    move-object/from16 v4, v25

    const/4 v3, 0x0

    goto/16 :goto_e

    .end local v20    # "libDirs":[Ljava/io/File;
    .end local v25    # "removedFiles":[Ljava/io/File;
    .restart local v2    # "libDirs":[Ljava/io/File;
    .restart local v4    # "removedFiles":[Ljava/io/File;
    :cond_24
    move-object/from16 v20, v2

    move-object/from16 v25, v4

    .end local v2    # "libDirs":[Ljava/io/File;
    .end local v4    # "removedFiles":[Ljava/io/File;
    .restart local v20    # "libDirs":[Ljava/io/File;
    .restart local v25    # "removedFiles":[Ljava/io/File;
    goto :goto_13

    .line 1728
    .end local v20    # "libDirs":[Ljava/io/File;
    .end local v25    # "removedFiles":[Ljava/io/File;
    .restart local v4    # "removedFiles":[Ljava/io/File;
    :cond_25
    move-object/from16 v25, v4

    .line 1759
    .end local v4    # "removedFiles":[Ljava/io/File;
    .end local v5    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v6    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v8    # "packageInstallDir":Ljava/io/File;
    .end local v9    # "oatDir":Ljava/io/File;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "removedFiles":[Ljava/io/File;
    :goto_13
    iget-boolean v0, v13, Landroid/content/pm/PackageParser$ApkLite;->useEmbeddedDex:Z

    if-eqz v0, :cond_28

    .line 1760
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1761
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1762
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager;->auditUncompressedDexInApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v4, -0x2

    goto :goto_15

    .line 1763
    :cond_26
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

    .line 1761
    :cond_27
    const/4 v4, -0x2

    .line 1767
    .end local v2    # "file":Ljava/io/File;
    :goto_15
    goto :goto_14

    .line 1769
    :cond_28
    iget-boolean v0, v13, Landroid/content/pm/PackageParser$ApkLite;->isSplitRequired:Z

    if-eqz v0, :cond_2a

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_29

    goto :goto_16

    .line 1770
    :cond_29
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

    .line 1773
    :cond_2a
    :goto_16
    return-void

    .line 1663
    .end local v25    # "removedFiles":[Ljava/io/File;
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "removedFiles":[Ljava/io/File;
    :catch_3
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v25, v4

    .line 1664
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removedFiles":[Ljava/io/File;
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "removedFiles":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    .line 1536
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v7    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "addedFiles":[Ljava/io/File;
    .end local v11    # "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "removedFiles":[Ljava/io/File;
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1537
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x12

    const-string v5, "Failed to resolve stage location"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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

    .line 2352
    if-eqz p1, :cond_0

    .line 2353
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2354
    .local v2, "permission":Ljava/lang/String;
    const-string v3, "granted-runtime-permission"

    const/4 v4, 0x0

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2355
    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2356
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2353
    .end local v2    # "permission":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2359
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

    .line 2363
    .local p1, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2364
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2365
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2366
    const-string/jumbo v2, "whitelisted-restricted-permission"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2367
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2368
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2371
    .end local v0    # "permissionCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 3

    .line 2054
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2059
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2060
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2062
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2067
    monitor-exit v0

    return-void

    .line 2069
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_1

    .line 2070
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2071
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 2072
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2073
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/StagingManager;->abortCommittedSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2075
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2072
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_4
    throw v2

    .line 2078
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    if-eqz v1, :cond_2

    .line 2079
    const-string v1, "PackageInstallerSession"

    const-string v2, "Ignoring abandon after commit relinquished control"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    monitor-exit v0

    return-void

    .line 2082
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 2083
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2085
    const/16 v0, -0x73

    const/4 v1, 0x0

    const-string v2, "Session was abandoned"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2086
    return-void

    .line 2083
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 2055
    :cond_3
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

    .line 2109
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 2110
    .local v0, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_2

    .line 2111
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

    .line 2117
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2118
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2119
    const-string v2, "addChildSessionId"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 2121
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 2122
    .local v2, "indexOfSession":I
    if-ltz v2, :cond_1

    .line 2123
    monitor-exit v1

    return-void

    .line 2125
    :cond_1
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 2126
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionIdInternal(I)V

    .line 2127
    .end local v2    # "indexOfSession":I
    monitor-exit v1

    .line 2128
    return-void

    .line 2127
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2114
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

    .line 2003
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2004
    return-void
.end method

.method public addClientProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 593
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 596
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgress(F)V

    .line 597
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    .line 2034
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 2035
    return-void
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .locals 8
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "forTransfer"    # Z

    .line 845
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_5

    .line 850
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsCommitted(Landroid/content/IntentSender;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    return-void

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 854
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 855
    .local v0, "remainingSessions":Landroid/util/SparseIntArray;
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V

    .line 857
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 858
    .local v2, "childIntentSender":Landroid/content/IntentSender;
    const/4 v3, 0x0

    .line 859
    .local v3, "commitException":Ljava/lang/RuntimeException;
    const/4 v4, 0x0

    .line 860
    .local v4, "commitFailed":Z
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 861
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 865
    .local v6, "childSessionId":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v7, v6}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v7

    .line 866
    invoke-virtual {v7, v2, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsCommitted(Landroid/content/IntentSender;Z)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    .line 867
    const/4 v4, 0x1

    .line 871
    :cond_1
    goto :goto_1

    .line 869
    :catch_0
    move-exception v7

    .line 870
    .local v7, "e":Ljava/lang/RuntimeException;
    move-object v3, v7

    .line 860
    .end local v6    # "childSessionId":I
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 873
    .end local v5    # "i":I
    :cond_2
    if-nez v3, :cond_3

    .line 876
    if-eqz v4, :cond_4

    .line 877
    return-void

    .line 874
    :cond_3
    throw v3

    .line 880
    .end local v0    # "remainingSessions":Landroid/util/SparseIntArray;
    .end local v2    # "childIntentSender":Landroid/content/IntentSender;
    .end local v3    # "commitException":Ljava/lang/RuntimeException;
    .end local v4    # "commitFailed":Z
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 881
    return-void

    .line 846
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

    .line 2311
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2312
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2313
    monitor-exit v0

    .line 2314
    return-void

    .line 2313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public generateInfo(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4
    .param p1, "includeIcon"    # Z

    .line 466
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 467
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 469
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 470
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 471
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 473
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 474
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 475
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 476
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

    .line 478
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 479
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 480
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 481
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 482
    if-eqz p1, :cond_2

    .line 483
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 485
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 487
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 488
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 489
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 490
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 491
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 492
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 493
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 494
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 495
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 496
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 497
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 498
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    if-nez v2, :cond_3

    .line 499
    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 501
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied:Z

    .line 502
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady:Z

    .line 503
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed:Z

    .line 504
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->setStagedSessionErrorCode(ILjava/lang/String;)V

    .line 505
    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 506
    monitor-exit v1

    .line 507
    return-object v0

    .line 506
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getChildSessionIds()[I
    .locals 2

    .line 2100
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v0

    .line 2101
    .local v0, "childSessionIds":[I
    if-eqz v0, :cond_0

    .line 2102
    return-object v0

    .line 2104
    :cond_0
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    return-object v1
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 2

    .line 1881
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1882
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1883
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInstallerUid()I
    .locals 2

    .line 1866
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1867
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    monitor-exit v0

    return v1

    .line 1868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 616
    const-string v1, "getNames"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v2

    .line 623
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getParentSessionId()I
    .locals 1

    .line 2167
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    return v0
.end method

.method getStagedSessionErrorCode()I
    .locals 1

    .line 2264
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    return v0
.end method

.method getStagedSessionErrorMessage()Ljava/lang/String;
    .locals 1

    .line 2269
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedMillis()J
    .locals 3

    .line 1875
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-wide v1

    .line 1877
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasParentSessionId()Z
    .locals 2

    .line 2162
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

    .line 524
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    monitor-exit v0

    return v1

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMultiPackage()Z
    .locals 1

    .line 2090
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    monitor-exit v0

    return v1

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSealed()Z
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return v1

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isStaged()Z
    .locals 1

    .line 2095
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return v0
.end method

.method public isStagedAndInTerminalState()Z
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
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

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isStagedSessionApplied()Z
    .locals 1

    .line 2254
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    return v0
.end method

.method isStagedSessionFailed()Z
    .locals 1

    .line 2259
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    return v0
.end method

.method isStagedSessionReady()Z
    .locals 1

    .line 2249
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    return v0
.end method

.method public synthetic lambda$doWriteInternal$0$PackageInstallerSession(Landroid/system/Int64Ref;J)V
    .locals 5
    .param p1, "last"    # Landroid/system/Int64Ref;
    .param p2, "progress"    # J

    .line 751
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 752
    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    .line 753
    .local v0, "delta":J
    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    .line 754
    long-to-float v2, v0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->addClientProgress(F)V

    .line 756
    .end local v0    # "delta":J
    :cond_0
    return-void
.end method

.method public markAsCommitted(Landroid/content/IntentSender;Z)Z
    .locals 9
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "forTransfer"    # Z

    .line 953
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 958
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 960
    const-string v2, "commit"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 962
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 964
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v7

    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move-object v3, v2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    .line 965
    .local v2, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 967
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 968
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Session has not been transferred"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v3

    .line 974
    .restart local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "forTransfer":Z
    :cond_1
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne v4, v5, :cond_5

    .line 981
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 982
    monitor-exit v1

    return v5

    .line 985
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 986
    .local v4, "wasSealed":Z
    iget-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_3

    .line 988
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    goto :goto_1

    .line 991
    :catch_0
    move-exception v5

    .line 993
    .local v5, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 994
    iget v6, v5, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v5}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 995
    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 989
    .end local v5    # "e":Lcom/android/server/pm/PackageManagerException;
    :catch_1
    move-exception v3

    .line 990
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v5

    .line 1000
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "forTransfer":Z
    :cond_3
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 1001
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1005
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1007
    iput-boolean v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 1008
    .end local v2    # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1010
    if-nez v4, :cond_4

    .line 1014
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1016
    :cond_4
    return v5

    .line 975
    .end local v4    # "wasSealed":Z
    .restart local v2    # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    :cond_5
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Session has been transferred"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v3

    .line 1008
    .end local v2    # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
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

.method public markUpdated()V
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 1179
    monitor-exit v0

    .line 1180
    return-void

    .line 1179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2007
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2013
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 2014
    .local v2, "wasPrepared":Z
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v3, :cond_3

    .line 2015
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 2016
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    goto :goto_0

    .line 2017
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v3, :cond_2

    .line 2023
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_1

    .line 2020
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "stageDir must be set"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2025
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2027
    if-nez v2, :cond_4

    .line 2028
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2030
    :cond_4
    return-void

    .line 2025
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

    .line 789
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 791
    const-string/jumbo v1, "openRead"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 794
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    throw v2

    .line 797
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J

    .line 661
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeChildSessionId(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 2132
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 2133
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2134
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 2135
    .local v2, "indexOfSession":I
    if-eqz v0, :cond_0

    .line 2136
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 2138
    :cond_0
    if-gez v2, :cond_1

    .line 2140
    monitor-exit v1

    return-void

    .line 2142
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2143
    .end local v2    # "indexOfSession":I
    monitor-exit v1

    .line 2144
    return-void

    .line 2143
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeSplit(Ljava/lang/String;)V
    .locals 3
    .param p1, "splitName"    # Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 634
    const-string/jumbo v1, "removeSplit"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    nop

    .line 641
    :try_start_2
    monitor-exit v0

    .line 642
    return-void

    .line 638
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "splitName":Ljava/lang/String;
    throw v2

    .line 641
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "splitName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sealAndValidateIfNecessary()V
    .locals 6

    .line 1153
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1157
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1158
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    .line 1159
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1161
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1171
    goto :goto_0

    .line 1172
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_2
    const-string v3, "PackageInstallerSession"

    const-string v4, "Package not valid"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1169
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1170
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1169
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1172
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_0
    monitor-exit v2

    .line 1173
    return-void

    .line 1162
    :catch_1
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v3

    .line 1172
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1155
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_1
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    .line 1157
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setClientProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 581
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 585
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 586
    .local v1, "forcePublish":Z
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 587
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 588
    .end local v1    # "forcePublish":Z
    monitor-exit v0

    .line 589
    return-void

    .line 588
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

    .line 2151
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2152
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 2154
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

    .line 2157
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "parentSessionId":I
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 2158
    monitor-exit v0

    .line 2159
    return-void

    .line 2158
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

    .line 1982
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_1

    .line 1986
    if-eqz p1, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1989
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 1990
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1991
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1993
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1994
    const/16 v0, -0x73

    const/4 v1, 0x0

    const-string v2, "User rejected permissions"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1996
    :goto_0
    return-void

    .line 1983
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be sealed to accept permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setStagedSessionApplied()V
    .locals 4

    .line 2235
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2236
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2237
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2238
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2239
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2240
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2241
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

    .line 2242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2244
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2245
    return-void

    .line 2242
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

    .line 2221
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2222
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2223
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2225
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2226
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2227
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

    .line 2228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2230
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2231
    return-void

    .line 2228
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

    .line 2208
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2209
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2211
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2212
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2213
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2216
    return-void

    .line 2214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public transfer(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1184
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1187
    .local v0, "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 1191
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 1199
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1203
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    .line 1205
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1206
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 1207
    const-string/jumbo v3, "transfer"

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1219
    nop

    .line 1221
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1226
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 1227
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1228
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1233
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1234
    return-void

    .line 1222
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

    .line 1213
    .restart local v0    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1215
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1216
    iget v4, v3, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v3}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1218
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Package is not valid"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v4

    .line 1211
    .end local v3    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v0    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1212
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v4

    .line 1228
    .end local v3    # "e":Ljava/io/IOException;
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

    .line 1200
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only transfer sessions that use public options"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1193
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

    .line 1188
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

    .line 671
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    nop

    .line 675
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method write(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/File;)V
    .locals 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "sessionsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2385
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2386
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 2387
    monitor-exit v0

    return-void

    .line 2390
    :cond_0
    const-string/jumbo v1, "session"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2392
    const-string/jumbo v1, "sessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2393
    const-string/jumbo v1, "userId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2394
    const-string v1, "installerPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2396
    const-string v1, "installerUid"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2397
    const-string v1, "createdMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2398
    const-string/jumbo v1, "updatedMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2399
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 2400
    const-string/jumbo v1, "sessionStageDir"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2401
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2400
    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2403
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2404
    const-string/jumbo v1, "sessionStageCid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2406
    :cond_2
    const-string/jumbo v1, "prepared"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPrepared()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2407
    const-string v1, "committed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2408
    const-string/jumbo v1, "sealed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2410
    const-string/jumbo v1, "multiPackage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2411
    const-string/jumbo v1, "stagedSession"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2412
    const-string/jumbo v1, "isReady"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2413
    const-string v1, "isFailed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2414
    const-string v1, "isApplied"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2415
    const-string v1, "errorCode"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2416
    const-string v1, "errorMessage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2420
    const-string/jumbo v1, "parentSessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2421
    const-string/jumbo v1, "mode"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2422
    const-string v1, "installFlags"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2423
    const-string v1, "installLocation"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2424
    const-string/jumbo v1, "sizeBytes"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2425
    const-string v1, "appPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2426
    const-string v1, "appLabel"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2427
    const-string/jumbo v1, "originatingUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 2428
    const-string/jumbo v1, "originatingUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2429
    const-string/jumbo v1, "referrerUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 2430
    const-string v1, "abiOverride"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2431
    const-string/jumbo v1, "volumeUuid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2432
    const-string v1, "installRason"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2434
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V

    .line 2435
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeWhitelistedRestrictedPermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2439
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 2440
    .local v1, "appIconFile":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2441
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 2442
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 2443
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 2444
    const-string v3, "PackageInstallerSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing changed icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2445
    const/4 v3, 0x0

    .line 2447
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 2448
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2452
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2453
    :goto_0
    goto :goto_1

    .line 2452
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 2449
    :catch_0
    move-exception v4

    .line 2450
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "PackageInstallerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2452
    nop

    .end local v4    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 2455
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_3

    .line 2452
    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local p2    # "sessionsDir":Ljava/io/File;
    throw v2

    .line 2457
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local p2    # "sessionsDir":Ljava/io/File;
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v3

    .line 2458
    .local v3, "childSessionIds":[I
    array-length v4, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_5

    aget v6, v3, v5

    .line 2459
    .local v6, "childSessionId":I
    const-string v7, "childSession"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2460
    const-string/jumbo v7, "sessionId"

    invoke-static {p1, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2461
    const-string v7, "childSession"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2458
    nop

    .end local v6    # "childSessionId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2463
    .end local v1    # "appIconFile":Ljava/io/File;
    .end local v3    # "childSessionIds":[I
    :cond_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2465
    const-string/jumbo v0, "session"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2466
    return-void

    .line 2463
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
