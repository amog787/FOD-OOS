.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final FLAG_PARALLEL_APP:I = 0x4000000

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field static final MAX_MANAGED_PROFILES:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_USER_ID:I = 0x53e2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_USER_ID:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RELEASE_DELETED_USER_ID:Z = false

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field private static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL:Ljava/lang/String; = "lastRequestQuietModeEnabledCall"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x7

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppRestrictionsLock:Ljava/lang/Object;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation
.end field

.field private final mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGuestRestrictions"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagesLock"
        }
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserRestrictionsListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserStates"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 250
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 523
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 524
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .line 533
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 534
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;

    .line 537
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 240
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 300
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 314
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    .line 338
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 346
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    .line 352
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 359
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 370
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 376
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 392
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 401
    const-string v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 404
    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    .line 538
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 539
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 540
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 541
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 542
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 543
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 545
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 547
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 548
    .local v2, "userZeroDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 549
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 552
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v5, "userlist.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 553
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 554
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 555
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 556
    .end local v2    # "userZeroDir":Ljava/io/File;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 558
    const-class v1, Landroid/os/UserManagerInternal;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 559
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 560
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 561
    return-void

    .line 556
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/content/IntentSender;
    .param p4, "x4"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/util/SparseArray;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/IBinder;
    .locals 1

    .line 141
    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .locals 3
    .param p1, "profileHandle"    # Landroid/os/UserHandle;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "inQuietMode"    # Z

    .line 832
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 833
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 834
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 836
    :cond_0
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    :goto_0
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 839
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 840
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 842
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 843
    return-void
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .locals 3
    .param p0, "creationFlags"    # I

    .line 1969
    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_1

    .line 1970
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1971
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1974
    :cond_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1978
    :goto_0
    return-void

    .line 1975
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1956
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
    return-void

    .line 1957
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1199
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1200
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    .line 1205
    invoke-static {p1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1207
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1210
    :cond_1
    nop

    .line 1211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1210
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1215
    return-void

    .line 1212
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1208
    :cond_3
    :goto_0
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 1907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1909
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1914
    :cond_0
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1915
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1917
    return-void

    .line 1920
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1911
    :cond_2
    :goto_0
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1940
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    return-void

    .line 1941
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 2020
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2021
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2022
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2024
    :cond_1
    :goto_0
    return-void
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2657
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 2658
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2659
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2660
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2662
    :cond_0
    return-void
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1535
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1536
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1537
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;

    move-result-object v1

    .line 1538
    .local v1, "global":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1540
    .local v2, "local":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1542
    return-object v0

    .line 1544
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1545
    .local v3, "effective":Landroid/os/Bundle;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1546
    invoke-static {v3, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1548
    return-object v3
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .line 2691
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2696
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_0

    .line 2697
    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_0

    .line 2698
    :cond_0
    const-string/jumbo v0, "no_add_user"

    :goto_0
    nop

    .line 2699
    .local v0, "restriction":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add user. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    const/4 v1, 0x0

    return-object v1

    .line 2703
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 27
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2708
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2709
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2710
    .local v4, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-interface {v4}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 2711
    const-string v0, "UserManagerService"

    const-string v6, "Cannot add user. Not enough space on disk."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    return-object v5

    .line 2714
    :cond_0
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 2715
    .local v8, "isGuest":Z
    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v9, v0

    .line 2716
    .local v9, "isManagedProfile":Z
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v10, v0

    .line 2717
    .local v10, "isRestricted":Z
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move v11, v0

    .line 2718
    .local v11, "isDemo":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2721
    .local v12, "ident":J
    const/high16 v0, 0x4000000

    and-int v14, v2, v0

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 2727
    .local v14, "isParallelUser":Z
    :goto_4
    :try_start_0
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_17

    .line 2728
    const/16 v16, 0x0

    .line 2729
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v0, -0x2710

    if-eq v3, v0, :cond_7

    .line 2730
    :try_start_1
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2731
    :try_start_2
    invoke-direct {v1, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v18

    move-object/from16 v16, v18

    .line 2732
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2733
    if-nez v16, :cond_6

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2882
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2733
    return-object v5

    :cond_6
    move-object/from16 v7, v16

    goto :goto_5

    .line 2732
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v8    # "isGuest":Z
    .end local v9    # "isManagedProfile":Z
    .end local v10    # "isRestricted":Z
    .end local v11    # "isDemo":Z
    .end local v12    # "ident":J
    .end local v14    # "isParallelUser":Z
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "parentId":I
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    :try_start_5
    throw v0

    .line 2846
    .end local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v8    # "isGuest":Z
    .restart local v9    # "isManagedProfile":Z
    .restart local v10    # "isRestricted":Z
    .restart local v11    # "isDemo":Z
    .restart local v12    # "ident":J
    .restart local v14    # "isParallelUser":Z
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "flags":I
    .restart local p3    # "parentId":I
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v17, v4

    move-wide/from16 v25, v12

    move/from16 v19, v14

    goto/16 :goto_11

    .line 2729
    .restart local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_7
    move-object/from16 v7, v16

    .line 2737
    .end local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v7, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_5
    if-eqz v14, :cond_9

    const/16 v0, 0x3e7

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v6, 0x3e8

    if-ne v0, v6, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2739
    :cond_8
    const-string v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot add more Parallel user "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2882
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    const/4 v0, 0x0

    return-object v0

    .line 2742
    :cond_9
    if-nez v14, :cond_a

    if-eqz v9, :cond_a

    .line 2743
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2744
    const-string v0, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot add more managed profiles for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2882
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2745
    const/4 v0, 0x0

    return-object v0

    .line 2749
    :cond_a
    if-nez v8, :cond_b

    if-nez v9, :cond_b

    if-nez v11, :cond_b

    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2752
    const-string v0, "UserManagerService"

    const-string v5, "Cannot add user. Maximum user limit is reached."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2882
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2753
    const/4 v0, 0x0

    return-object v0

    .line 2756
    :cond_b
    if-eqz v8, :cond_c

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2757
    const-string v0, "UserManagerService"

    const-string v5, "Cannot add guest user. Guest user already exists."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2882
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2758
    const/4 v0, 0x0

    return-object v0

    .line 2761
    :cond_c
    if-eqz v10, :cond_d

    :try_start_9
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v3, :cond_d

    .line 2763
    const-string v0, "UserManagerService"

    const-string v5, "Cannot add restricted profile - parent user must be owner"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2882
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2764
    const/4 v0, 0x0

    return-object v0

    .line 2766
    :cond_d
    if-eqz v10, :cond_f

    :try_start_a
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2767
    if-nez v7, :cond_e

    .line 2768
    const-string v0, "UserManagerService"

    const-string v5, "Cannot add restricted profile - parent user must be specified"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2882
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2770
    const/4 v0, 0x0

    return-object v0

    .line 2772
    :cond_e
    :try_start_b
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2773
    const-string v0, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2882
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2775
    const/4 v0, 0x0

    return-object v0

    .line 2780
    :cond_f
    :try_start_c
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_14

    if-eqz v0, :cond_11

    if-nez v8, :cond_11

    if-nez v9, :cond_11

    .line 2781
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-nez v0, :cond_11

    .line 2782
    or-int/lit8 v2, v2, 0x1

    .line 2783
    .end local p2    # "flags":I
    .local v2, "flags":I
    :try_start_e
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2784
    :try_start_f
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v0, :cond_10

    .line 2785
    or-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 2787
    :cond_10
    monitor-exit v5

    goto :goto_6

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .end local v2    # "flags":I
    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v8    # "isGuest":Z
    .end local v9    # "isManagedProfile":Z
    .end local v10    # "isRestricted":Z
    .end local v11    # "isDemo":Z
    .end local v12    # "ident":J
    .end local v14    # "isParallelUser":Z
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "parentId":I
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 2846
    .end local v7    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "flags":I
    .restart local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v8    # "isGuest":Z
    .restart local v9    # "isManagedProfile":Z
    .restart local v10    # "isRestricted":Z
    .restart local v11    # "isDemo":Z
    .restart local v12    # "ident":J
    .restart local v14    # "isParallelUser":Z
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "parentId":I
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v17, v4

    move-wide/from16 v25, v12

    move/from16 v19, v14

    goto/16 :goto_11

    .line 2797
    .restart local v7    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_11
    :goto_6
    const/4 v0, 0x1

    :try_start_11
    new-array v5, v0, [I

    const/16 v0, 0x25

    const/4 v6, 0x0

    aput v0, v5, v6

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    .line 2799
    const/16 v0, 0x3e7

    move v5, v0

    .local v0, "userId":I
    goto :goto_7

    .line 2801
    .end local v0    # "userId":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v0

    move v5, v0

    .line 2805
    .local v5, "userId":I
    :goto_7
    invoke-static {v5}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2806
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110088

    .line 2807
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_13

    move v6, v0

    .line 2809
    .local v6, "ephemeralGuests":Z
    move-object/from16 v17, v4

    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .local v17, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :try_start_12
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 2811
    if-eqz v8, :cond_13

    if-nez v6, :cond_14

    :cond_13
    :try_start_13
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    if-nez v0, :cond_14

    if-eqz v7, :cond_15

    :try_start_14
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2812
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v0, :cond_15

    goto :goto_8

    .line 2828
    :catchall_4
    move-exception v0

    move/from16 v20, v2

    move/from16 p2, v6

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move-object/from16 v6, p1

    goto/16 :goto_10

    .line 2813
    :cond_14
    :goto_8
    or-int/lit16 v0, v2, 0x100

    .end local v2    # "flags":I
    .local v0, "flags":I
    move v2, v0

    .line 2816
    .end local v0    # "flags":I
    .restart local v2    # "flags":I
    :cond_15
    :try_start_15
    new-instance v0, Landroid/content/pm/UserInfo;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    move/from16 p2, v6

    move/from16 v19, v14

    const/4 v14, 0x0

    move-object/from16 v6, p1

    .end local v6    # "ephemeralGuests":Z
    .end local v14    # "isParallelUser":Z
    .local v19, "isParallelUser":Z
    .local p2, "ephemeralGuests":Z
    :try_start_16
    invoke-direct {v0, v5, v6, v14, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object v14, v0

    .line 2817
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    move/from16 v20, v2

    .end local v2    # "flags":I
    .local v20, "flags":I
    add-int/lit8 v2, v0, 0x1

    :try_start_17
    iput v2, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v0, v14, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 2819
    .local v21, "now":J
    const-wide v23, 0xdc46c32800L

    cmp-long v0, v21, v23

    if-lez v0, :cond_16

    move-wide/from16 v25, v12

    move-wide/from16 v12, v21

    goto :goto_9

    :cond_16
    const-wide/16 v23, 0x0

    move-wide/from16 v25, v12

    move-wide/from16 v12, v23

    .end local v12    # "ident":J
    .local v25, "ident":J
    :goto_9
    :try_start_18
    iput-wide v12, v14, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2820
    const/4 v0, 0x1

    iput-boolean v0, v14, Landroid/content/pm/UserInfo;->partial:Z

    .line 2821
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2822
    if-eqz v9, :cond_17

    const/16 v0, -0x2710

    if-eq v3, v0, :cond_17

    .line 2823
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(I)I

    move-result v0

    iput v0, v14, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2825
    :cond_17
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object v2, v0

    .line 2826
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v14, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2827
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2828
    .end local v21    # "now":J
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    .line 2829
    :try_start_19
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2830
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2831
    if-eqz v7, :cond_1b

    .line 2832
    if-eqz v9, :cond_19

    .line 2833
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v0, v4, :cond_18

    .line 2834
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    iput v4, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2835
    invoke-direct {v1, v7}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2837
    :cond_18
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_a

    .line 2838
    :cond_19
    if-eqz v10, :cond_1b

    .line 2839
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v4, -0x2710

    if-ne v0, v4, :cond_1a

    .line 2840
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    iput v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2841
    invoke-direct {v1, v7}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2843
    :cond_1a
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, v14, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2846
    .end local v7    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p2    # "ephemeralGuests":Z
    :cond_1b
    :goto_a
    monitor-exit v15
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    .line 2847
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v4, v0

    .line 2848
    .local v4, "storage":Landroid/os/storage/StorageManager;
    iget v0, v14, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v7

    invoke-virtual {v4, v5, v0, v7}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 2849
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v7, v14, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v12, 0x3

    invoke-virtual {v0, v5, v7, v12}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 2855
    if-eqz v8, :cond_1c

    .line 2856
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/OpShieldGuestInjector;->getDisallowedPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    move-object v7, v0

    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    .local v0, "disallowedPackages":[Ljava/lang/String;
    goto :goto_b

    .line 2855
    .end local v0    # "disallowedPackages":[Ljava/lang/String;
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :cond_1c
    move-object/from16 v7, p4

    .line 2859
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    .local v7, "disallowedPackages":[Ljava/lang/String;
    :goto_b
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5, v7}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I[Ljava/lang/String;)V

    .line 2860
    const/4 v0, 0x0

    iput-boolean v0, v14, Landroid/content/pm/UserInfo;->partial:Z

    .line 2861
    iget-object v12, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 2862
    :try_start_1c
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2863
    monitor-exit v12
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 2864
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2865
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 2866
    .local v12, "restrictions":Landroid/os/Bundle;
    if-eqz v8, :cond_1d

    .line 2867
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v13
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 2868
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2869
    monitor-exit v13

    goto :goto_c

    :catchall_5
    move-exception v0

    monitor-exit v13
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .end local v7    # "disallowedPackages":[Ljava/lang/String;
    .end local v8    # "isGuest":Z
    .end local v9    # "isManagedProfile":Z
    .end local v10    # "isRestricted":Z
    .end local v11    # "isDemo":Z
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19    # "isParallelUser":Z
    .end local v20    # "flags":I
    .end local v25    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "parentId":I
    :try_start_1f
    throw v0

    .line 2871
    .restart local v7    # "disallowedPackages":[Ljava/lang/String;
    .restart local v8    # "isGuest":Z
    .restart local v9    # "isManagedProfile":Z
    .restart local v10    # "isRestricted":Z
    .restart local v11    # "isDemo":Z
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "isParallelUser":Z
    .restart local v20    # "flags":I
    .restart local v25    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "parentId":I
    :cond_1d
    :goto_c
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 2872
    :try_start_20
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2873
    monitor-exit v13
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 2874
    :try_start_21
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 2875
    new-instance v0, Landroid/content/Intent;

    const-string v13, "android.intent.action.USER_ADDED"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2876
    .local v0, "addedIntent":Landroid/content/Intent;
    const-string v13, "android.intent.extra.user_handle"

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2877
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v16, v2

    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v16, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v13, v0, v15, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2879
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1e

    const-string/jumbo v13, "users_guest_created"

    goto :goto_d

    .line 2880
    :cond_1e
    if-eqz v11, :cond_1f

    const-string/jumbo v13, "users_demo_created"

    goto :goto_d

    :cond_1f
    const-string/jumbo v13, "users_user_created"

    :goto_d
    nop

    .line 2879
    const/4 v15, 0x1

    invoke-static {v2, v13, v15}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 2882
    .end local v0    # "addedIntent":Landroid/content/Intent;
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v12    # "restrictions":Landroid/os/Bundle;
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2883
    nop

    .line 2884
    return-object v14

    .line 2873
    .end local v16    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v12    # "restrictions":Landroid/os/Bundle;
    :catchall_6
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v16    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_e
    :try_start_22
    monitor-exit v13
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .end local v7    # "disallowedPackages":[Ljava/lang/String;
    .end local v8    # "isGuest":Z
    .end local v9    # "isManagedProfile":Z
    .end local v10    # "isRestricted":Z
    .end local v11    # "isDemo":Z
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19    # "isParallelUser":Z
    .end local v20    # "flags":I
    .end local v25    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "parentId":I
    :try_start_23
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .restart local v7    # "disallowedPackages":[Ljava/lang/String;
    .restart local v8    # "isGuest":Z
    .restart local v9    # "isManagedProfile":Z
    .restart local v10    # "isRestricted":Z
    .restart local v11    # "isDemo":Z
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "isParallelUser":Z
    .restart local v20    # "flags":I
    .restart local v25    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "parentId":I
    :catchall_7
    move-exception v0

    goto :goto_e

    .line 2863
    .end local v12    # "restrictions":Landroid/os/Bundle;
    .end local v16    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_8
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v16    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_f
    :try_start_24
    monitor-exit v12
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    .end local v7    # "disallowedPackages":[Ljava/lang/String;
    .end local v8    # "isGuest":Z
    .end local v9    # "isManagedProfile":Z
    .end local v10    # "isRestricted":Z
    .end local v11    # "isDemo":Z
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19    # "isParallelUser":Z
    .end local v20    # "flags":I
    .end local v25    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "parentId":I
    :try_start_25
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .restart local v7    # "disallowedPackages":[Ljava/lang/String;
    .restart local v8    # "isGuest":Z
    .restart local v9    # "isManagedProfile":Z
    .restart local v10    # "isRestricted":Z
    .restart local v11    # "isDemo":Z
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "isParallelUser":Z
    .restart local v20    # "flags":I
    .restart local v25    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "parentId":I
    :catchall_9
    move-exception v0

    goto :goto_f

    .line 2882
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v5    # "userId":I
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_a
    move-exception v0

    goto/16 :goto_12

    .end local v7    # "disallowedPackages":[Ljava/lang/String;
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v7, p4

    goto/16 :goto_12

    .line 2828
    .end local v25    # "ident":J
    .restart local v5    # "userId":I
    .local v7, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v12, "ident":J
    .restart local p2    # "ephemeralGuests":Z
    :catchall_c
    move-exception v0

    move-wide/from16 v25, v12

    .end local v12    # "ident":J
    .restart local v25    # "ident":J
    goto :goto_10

    .end local v20    # "flags":I
    .end local v25    # "ident":J
    .local v2, "flags":I
    .restart local v12    # "ident":J
    :catchall_d
    move-exception v0

    move/from16 v20, v2

    move-wide/from16 v25, v12

    .end local v2    # "flags":I
    .end local v12    # "ident":J
    .restart local v20    # "flags":I
    .restart local v25    # "ident":J
    goto :goto_10

    .end local v19    # "isParallelUser":Z
    .end local v20    # "flags":I
    .end local v25    # "ident":J
    .end local p2    # "ephemeralGuests":Z
    .restart local v2    # "flags":I
    .restart local v6    # "ephemeralGuests":Z
    .restart local v12    # "ident":J
    .local v14, "isParallelUser":Z
    :catchall_e
    move-exception v0

    move/from16 v20, v2

    move/from16 p2, v6

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move-object/from16 v6, p1

    .end local v2    # "flags":I
    .end local v6    # "ephemeralGuests":Z
    .end local v12    # "ident":J
    .end local v14    # "isParallelUser":Z
    .restart local v19    # "isParallelUser":Z
    .restart local v20    # "flags":I
    .restart local v25    # "ident":J
    .restart local p2    # "ephemeralGuests":Z
    goto :goto_10

    .end local v19    # "isParallelUser":Z
    .end local v20    # "flags":I
    .end local v25    # "ident":J
    .end local p2    # "ephemeralGuests":Z
    .restart local v2    # "flags":I
    .restart local v6    # "ephemeralGuests":Z
    .restart local v12    # "ident":J
    .restart local v14    # "isParallelUser":Z
    :catchall_f
    move-exception v0

    move/from16 p2, v6

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move-object/from16 v6, p1

    move/from16 v20, v2

    .end local v2    # "flags":I
    .end local v6    # "ephemeralGuests":Z
    .end local v12    # "ident":J
    .end local v14    # "isParallelUser":Z
    .restart local v19    # "isParallelUser":Z
    .restart local v20    # "flags":I
    .restart local v25    # "ident":J
    .restart local p2    # "ephemeralGuests":Z
    :goto_10
    :try_start_26
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    .end local v8    # "isGuest":Z
    .end local v9    # "isManagedProfile":Z
    .end local v10    # "isRestricted":Z
    .end local v11    # "isDemo":Z
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19    # "isParallelUser":Z
    .end local v20    # "flags":I
    .end local v25    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "parentId":I
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    :try_start_27
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 2846
    .end local v5    # "userId":I
    .end local v7    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p2    # "ephemeralGuests":Z
    .restart local v8    # "isGuest":Z
    .restart local v9    # "isManagedProfile":Z
    .restart local v10    # "isRestricted":Z
    .restart local v11    # "isDemo":Z
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "isParallelUser":Z
    .restart local v20    # "flags":I
    .restart local v25    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "parentId":I
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :catchall_10
    move-exception v0

    move/from16 v2, v20

    goto :goto_11

    .line 2828
    .restart local v5    # "userId":I
    .restart local v7    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local p2    # "ephemeralGuests":Z
    :catchall_11
    move-exception v0

    goto :goto_10

    .line 2846
    .end local v5    # "userId":I
    .end local v7    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v19    # "isParallelUser":Z
    .end local v20    # "flags":I
    .end local v25    # "ident":J
    .end local p2    # "ephemeralGuests":Z
    .restart local v2    # "flags":I
    .restart local v12    # "ident":J
    .restart local v14    # "isParallelUser":Z
    :catchall_12
    move-exception v0

    move-object/from16 v6, p1

    move-wide/from16 v25, v12

    move/from16 v19, v14

    .end local v12    # "ident":J
    .end local v14    # "isParallelUser":Z
    .restart local v19    # "isParallelUser":Z
    .restart local v25    # "ident":J
    goto :goto_11

    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19    # "isParallelUser":Z
    .end local v25    # "ident":J
    .local v4, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v12    # "ident":J
    .restart local v14    # "isParallelUser":Z
    :catchall_13
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v17, v4

    move-wide/from16 v25, v12

    move/from16 v19, v14

    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v12    # "ident":J
    .end local v14    # "isParallelUser":Z
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "isParallelUser":Z
    .restart local v25    # "ident":J
    goto :goto_11

    .end local v2    # "flags":I
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19    # "isParallelUser":Z
    .end local v25    # "ident":J
    .restart local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v12    # "ident":J
    .restart local v14    # "isParallelUser":Z
    .local p2, "flags":I
    :catchall_14
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v17, v4

    move-wide/from16 v25, v12

    move/from16 v19, v14

    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v12    # "ident":J
    .end local v14    # "isParallelUser":Z
    .end local p2    # "flags":I
    .restart local v2    # "flags":I
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "isParallelUser":Z
    .restart local v25    # "ident":J
    :goto_11
    :try_start_28
    monitor-exit v15
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    .end local v2    # "flags":I
    .end local v8    # "isGuest":Z
    .end local v9    # "isManagedProfile":Z
    .end local v10    # "isRestricted":Z
    .end local v11    # "isDemo":Z
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19    # "isParallelUser":Z
    .end local v25    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "parentId":I
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    :try_start_29
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    .line 2882
    .restart local v2    # "flags":I
    .restart local v8    # "isGuest":Z
    .restart local v9    # "isManagedProfile":Z
    .restart local v10    # "isRestricted":Z
    .restart local v11    # "isDemo":Z
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "isParallelUser":Z
    .restart local v25    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "parentId":I
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :catchall_15
    move-exception v0

    move-object/from16 v7, p4

    move/from16 v20, v2

    goto :goto_12

    .line 2846
    :catchall_16
    move-exception v0

    goto :goto_11

    .line 2882
    .end local v2    # "flags":I
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19    # "isParallelUser":Z
    .end local v25    # "ident":J
    .restart local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v12    # "ident":J
    .restart local v14    # "isParallelUser":Z
    .restart local p2    # "flags":I
    :catchall_17
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v17, v4

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move-object/from16 v7, p4

    move/from16 v20, v2

    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v12    # "ident":J
    .end local v14    # "isParallelUser":Z
    .end local p2    # "flags":I
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    .local v7, "disallowedPackages":[Ljava/lang/String;
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "isParallelUser":Z
    .restart local v20    # "flags":I
    .restart local v25    # "ident":J
    :goto_12
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 4216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    return-void
.end method

.method private static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nowTime"    # J
    .param p4, "time"    # J

    .line 3864
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 3865
    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3867
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3868
    sub-long v0, p2, p4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3869
    const-string v0, " ago"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3870
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3872
    :goto_0
    return-void
.end method

.method private ensureCanModifyQuietMode(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "startIntent"    # Z

    .line 894
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    if-nez p3, :cond_3

    .line 901
    const-string v0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    .line 903
    .local v0, "hasModifyQuietModePermission":Z
    if-eqz v0, :cond_1

    .line 904
    return-void

    .line 907
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 908
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 909
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 910
    .local v1, "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    if-eqz v1, :cond_2

    .line 911
    nop

    .line 912
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v2

    .line 913
    .local v2, "isForegroundLauncher":Z
    if-eqz v2, :cond_2

    .line 914
    return-void

    .line 917
    .end local v2    # "isForegroundLauncher":Z
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 898
    .end local v0    # "hasModifyQuietModePermission":Z
    .end local v1    # "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallbackToSingleUserLP()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagesLock",
            "mRestrictionsLock"
        }
    .end annotation

    .line 2246
    const/16 v0, 0x10

    .line 2249
    .local v0, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2250
    or-int/lit8 v0, v0, 0x3

    .line 2253
    :cond_0
    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v2, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2254
    .local v1, "system":Landroid/content/pm/UserInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2255
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2256
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2258
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2260
    .local v4, "restrictions":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2262
    .local v5, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 2263
    .local v8, "userRestriction":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2264
    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2262
    .end local v8    # "userRestriction":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2269
    .end local v5    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 2267
    :catch_0
    move-exception v5

    .line 2268
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UserManagerService"

    const-string v7, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2271
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2272
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2273
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2274
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2277
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2278
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2280
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2281
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2282
    return-void
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .locals 6

    .line 2935
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2936
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2937
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2938
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2939
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2940
    monitor-exit v0

    return-object v3

    .line 2937
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2943
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 2944
    const/4 v0, 0x0

    return-object v0

    .line 2943
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1885
    const/4 v0, 0x0

    .line 1886
    .local v0, "aliveUserCount":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1888
    .local v1, "totalUserCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1889
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1890
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1891
    add-int/lit8 v0, v0, 0x1

    .line 1888
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1894
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "userId"    # I

    .line 1560
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1561
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1562
    .local v1, "restrictions":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1563
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 1564
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1566
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1567
    .end local v1    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1660
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1661
    :cond_0
    const/4 v0, 0x4

    :goto_0
    nop

    .line 1662
    .local v0, "source":I
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {v1, p1, v0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 459
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 460
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getMaxManagedProfiles()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4224
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4225
    return v1

    .line 4227
    :cond_0
    const-string/jumbo v0, "persist.sys.max_profiles"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 2

    .line 2285
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10404a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 733
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 734
    .local v0, "user":Landroid/content/pm/UserInfo;
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 735
    .local v1, "result":Landroid/util/IntArray;
    if-nez v0, :cond_0

    .line 737
    return-object v1

    .line 739
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 740
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 741
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 742
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 743
    goto :goto_1

    .line 745
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 746
    goto :goto_1

    .line 748
    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 749
    goto :goto_1

    .line 751
    :cond_3
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_4

    .line 752
    goto :goto_1

    .line 754
    :cond_4
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 740
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 756
    .end local v3    # "i":I
    :cond_5
    return-object v1
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userHandle"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 813
    .local v0, "profile":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 814
    return-object v1

    .line 816
    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 817
    .local v2, "parentUserId":I
    if-eq v2, p1, :cond_2

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 820
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 818
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .param p3, "fullInfo"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 710
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v0

    .line 711
    .local v0, "profileIds":Landroid/util/IntArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 713
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 714
    .local v3, "profileId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 716
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p3, :cond_0

    .line 717
    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    move-object v4, v5

    .line 718
    const/4 v5, 0x0

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 719
    iput-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_1

    .line 721
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 723
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    .end local v3    # "profileId":I
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 725
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3264
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3264
    return v2

    .line 3269
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3266
    :catch_0
    move-exception v2

    .line 3267
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 3269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3267
    return v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1288
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1289
    const/4 v1, 0x0

    return-object v1

    .line 1291
    :cond_0
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2
    .param p1, "userId"    # I

    .line 1310
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object v1

    .line 1312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1277
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-object v1

    .line 1281
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_1
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 1299
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1301
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 1302
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .locals 1

    .line 2009
    const-string v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .locals 2
    .param p0, "alternativePermission"    # Ljava/lang/String;

    .line 1996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1997
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1999
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2000
    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1997
    :goto_1
    return v1
.end method

.method private static final hasManageUsersPermission()Z
    .locals 2

    .line 1985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1986
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1988
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1986
    :goto_1
    return v1
.end method

.method private static hasPermissionGranted(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 1925
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v1, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initDefaultGuestRestrictions()V
    .locals 4

    .line 1428
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1429
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1430
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1431
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1432
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1433
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1435
    :cond_0
    monitor-exit v0

    .line 1436
    return-void

    .line 1435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1556
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1557
    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    .line 825
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 782
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 784
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v3, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 787
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 788
    .local v3, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_3

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, v4, :cond_1

    goto :goto_0

    .line 792
    :cond_1
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    .line 790
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    .line 785
    .end local v3    # "otherUserInfo":Landroid/content/pm/UserInfo;
    :cond_4
    :goto_1
    monitor-exit v0

    return v2

    .line 793
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isUserLimitReached()Z
    .locals 2

    .line 1842
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1843
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    .line 1844
    .local v1, "count":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1844
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private logQuietModeEnabled(IZLjava/lang/String;)V
    .locals 8
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 975
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 977
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    if-nez v1, :cond_0

    .line 979
    return-void

    .line 981
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 982
    .local v2, "now":J
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 983
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    goto :goto_0

    .line 984
    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v4, v2, v4

    :goto_0
    nop

    .line 985
    .local v4, "period":J
    const/16 v0, 0x37

    .line 986
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    .line 987
    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 988
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 989
    invoke-virtual {v0, v4, v5}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 991
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 992
    return-void

    .line 977
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v2    # "now":J
    .end local v4    # "period":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 1765
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    return-void

    .line 1769
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1770
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1772
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1793
    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 7
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3284
    const-string v0, "UserManagerService"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3285
    .local v1, "restrictions":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3286
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3287
    return-object v1

    .line 3290
    :cond_0
    const/4 v3, 0x0

    .line 3292
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v3, v4

    .line 3293
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3294
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3295
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3296
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 3297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read restrictions file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3298
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3297
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3299
    nop

    .line 3307
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3299
    return-object v1

    .line 3301
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 3302
    invoke-static {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3307
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    nop

    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3308
    goto :goto_2

    .line 3307
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 3304
    :catch_0
    move-exception v4

    .line 3305
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3307
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 3309
    :goto_2
    return-object v1

    .line 3307
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 3275
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3276
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3277
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3278
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3358
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3359
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3360
    .local v1, "outerDepth":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3361
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3363
    :cond_0
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3314
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 3315
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3316
    const/4 v2, 0x0

    const-string/jumbo v3, "key"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3317
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-interface {p2, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3318
    .local v4, "valType":Ljava/lang/String;
    const-string/jumbo v5, "m"

    invoke-interface {p2, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3319
    .local v2, "multiple":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 3320
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3321
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3322
    .local v5, "count":I
    :cond_0
    :goto_0
    if-lez v5, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 3323
    if-ne v0, v1, :cond_0

    .line 3324
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3325
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3326
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3329
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3330
    .local v1, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3331
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3332
    .end local v1    # "valueStrings":[Ljava/lang/String;
    .end local v5    # "count":I
    goto :goto_2

    :cond_2
    const-string v1, "B"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3333
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3334
    :cond_3
    const-string v1, "BA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3335
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3336
    .local v1, "outerDepth":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3337
    .local v5, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_1
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3338
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    .line 3339
    .local v6, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3340
    .end local v6    # "childBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 3341
    :cond_4
    nop

    .line 3342
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    .line 3341
    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3343
    .end local v1    # "outerDepth":I
    .end local v5    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto :goto_2

    .line 3344
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3345
    .local v1, "value":Ljava/lang/String;
    const-string v5, "b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3346
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 3347
    :cond_6
    const-string v5, "i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3348
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 3350
    :cond_7
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "multiple":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "valType":Ljava/lang/String;
    :cond_8
    :goto_2
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 2634
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2635
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    return p3

    .line 2637
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2638
    :catch_0
    move-exception v1

    .line 2639
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 2644
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2645
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    return-wide p3

    .line 2647
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 2648
    :catch_0
    move-exception v1

    .line 2649
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 8
    .param p1, "id"    # I

    .line 2475
    const-string v0, "Error reading user list"

    const-string v1, "UserManagerService"

    const/4 v2, 0x0

    .line 2477
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2478
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2479
    .local v3, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v2, v4

    .line 2480
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2486
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2480
    return-object v0

    .line 2486
    .end local v3    # "userFile":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2483
    :catch_0
    move-exception v3

    .line 2484
    .local v3, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    nop

    .end local v3    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0

    .line 2481
    :catch_1
    move-exception v3

    .line 2482
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2486
    nop

    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2487
    nop

    .line 2488
    const/4 v0, 0x0

    return-object v0

    .line 2486
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private readUserListLP()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2067
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 2069
    return-void

    .line 2071
    :cond_0
    const/4 v0, 0x0

    .line 2072
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2074
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 2075
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2076
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2078
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 2083
    :cond_1
    if-eq v4, v6, :cond_2

    .line 2084
    const-string v3, "UserManagerService"

    const-string v5, "Unable to read user list"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2155
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2086
    return-void

    .line 2089
    :cond_2
    const/4 v3, -0x1

    :try_start_1
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2090
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "users"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    .line 2091
    const-string/jumbo v3, "nextSerialNumber"

    invoke-interface {v2, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2092
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2093
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2095
    :cond_3
    const-string/jumbo v8, "version"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2096
    .local v8, "versionNumber":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 2097
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2103
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v8    # "versionNumber":Ljava/lang/String;
    :cond_4
    move-object v3, v7

    .line 2105
    .local v3, "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_5
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-eq v8, v5, :cond_10

    .line 2106
    if-ne v4, v6, :cond_5

    .line 2107
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2108
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2109
    const-string v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2111
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v10

    .line 2113
    .local v10, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v10, :cond_8

    .line 2114
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2115
    :try_start_2
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2116
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_6

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v13, :cond_7

    .line 2118
    :cond_6
    iget-object v12, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2120
    :cond_7
    monitor-exit v11

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_3
    throw v5

    .line 2122
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :cond_8
    :goto_2
    goto :goto_4

    :cond_9
    const-string v9, "guestRestrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2123
    :cond_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v4, v9

    if-eq v9, v5, :cond_f

    const/4 v9, 0x3

    if-eq v4, v9, :cond_f

    .line 2125
    if-ne v4, v6, :cond_a

    .line 2126
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "restrictions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2127
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2128
    :try_start_4
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 2129
    invoke-static {v2, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 2130
    monitor-exit v9

    goto :goto_4

    :catchall_1
    move-exception v5

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_5
    throw v5

    .line 2135
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :cond_b
    const-string v9, "deviceOwnerUserId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "globalRestrictionOwnerUserId"

    .line 2137
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_3

    .line 2142
    :cond_c
    const-string v9, "device_policy_restrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2144
    nop

    .line 2145
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v9

    move-object v3, v9

    goto :goto_4

    .line 2138
    :cond_d
    :goto_3
    const-string v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2139
    .local v9, "ownerUserId":Ljava/lang/String;
    if-eqz v9, :cond_e

    .line 2140
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2142
    .end local v9    # "ownerUserId":Ljava/lang/String;
    :cond_e
    nop

    .line 2147
    .end local v8    # "name":Ljava/lang/String;
    :cond_f
    :goto_4
    goto/16 :goto_1

    .line 2150
    :cond_10
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2151
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v4    # "type":I
    goto :goto_5

    .line 2155
    :catchall_2
    move-exception v2

    goto :goto_6

    .line 2152
    :catch_0
    move-exception v2

    .line 2153
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2155
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2156
    nop

    .line 2157
    return-void

    .line 2155
    :goto_6
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private removeNonSystemUsers()V
    .locals 6

    .line 4182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4183
    .local v0, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4184
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4185
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4186
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4187
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_0

    .line 4188
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4185
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4191
    .end local v2    # "userSize":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4192
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 4193
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 4194
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 4195
    :cond_2
    return-void

    .line 4191
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private removeUserState(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 3146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3151
    goto :goto_0

    .line 3147
    :catch_0
    move-exception v0

    .line 3149
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying key for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed, continuing anyway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3155
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 3156
    .local v0, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v0, :cond_0

    .line 3157
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3161
    .end local v0    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    goto :goto_1

    .line 3159
    :catch_1
    move-exception v0

    .line 3160
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UserManagerService"

    const-string/jumbo v2, "unable to clear GK secure user id"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 3167
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 3171
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3172
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3173
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3174
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 3175
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 3176
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3177
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3178
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3179
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3180
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3181
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3182
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3183
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3184
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3185
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 3187
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3189
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3190
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3191
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3193
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3194
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 3195
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3198
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x25

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_2

    .line 3200
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3201
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3202
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 3210
    :cond_2
    :goto_2
    return-void

    .line 3191
    .end local v0    # "userFile":Landroid/util/AtomicFile;
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 3187
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    .line 3177
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 3174
    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1
.end method

.method private removeUserUnchecked(I)Z
    .locals 11
    .param p1, "userHandle"    # I

    .line 3017
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3020
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 3021
    .local v2, "currentUser":I
    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    .line 3022
    const-string v4, "UserManagerService"

    const-string v5, "Current user cannot be removed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3023
    nop

    .line 3089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    return v3

    .line 3025
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3026
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3027
    :try_start_3
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3028
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez p1, :cond_1

    .line 3029
    const-string v7, "UserManagerService"

    const-string v8, "System user cannot be removed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3030
    return v3

    .line 3033
    :cond_1
    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 3034
    :try_start_5
    const-string v8, "UserManagerService"

    const-string v9, "Cannot remove user %d, invalid user id provided."

    new-array v7, v7, [Ljava/lang/Object;

    .line 3035
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 3034
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3036
    return v3

    .line 3039
    :cond_2
    :try_start_7
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3040
    const-string v8, "UserManagerService"

    const-string v9, "User %d is already scheduled for removal."

    new-array v7, v7, [Ljava/lang/Object;

    .line 3041
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 3040
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3042
    return v3

    .line 3045
    :cond_3
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 3046
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3051
    :try_start_a
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v7, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 3054
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 3055
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3056
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3058
    :try_start_b
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3061
    goto :goto_0

    .line 3059
    :catch_0
    move-exception v4

    .line 3060
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v5, "UserManagerService"

    const-string v8, "Unable to notify AppOpsService of removing user."

    invoke-static {v5, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3063
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_4

    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3064
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3067
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3073
    :cond_4
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v5, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v4, p1, v7, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v4
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3086
    .local v4, "res":I
    nop

    .line 3087
    if-nez v4, :cond_5

    move v3, v7

    .line 3089
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3087
    return v3

    .line 3083
    .end local v4    # "res":I
    :catch_1
    move-exception v4

    .line 3084
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v5, "UserManagerService"

    const-string v7, "Failed to stop user during removal."

    invoke-static {v5, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3085
    nop

    .line 3089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3085
    return v3

    .line 3046
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .end local v0    # "ident":J
    .end local v2    # "currentUser":I
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userHandle":I
    :try_start_10
    throw v3

    .line 3056
    .restart local v0    # "ident":J
    .restart local v2    # "currentUser":I
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userHandle":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userHandle":I
    :try_start_11
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 3089
    .end local v2    # "currentUser":I
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userHandle":I
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3738
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3739
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 3740
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_0

    .line 3741
    const-string v1, "Error: couldn\'t get users"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3742
    const/4 v1, 0x1

    return v1

    .line 3744
    :cond_0
    const-string v3, "Users:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3745
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3746
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " running"

    goto :goto_1

    :cond_1
    const-string v4, ""

    .line 3747
    .local v4, "running":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3745
    .end local v4    # "running":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3749
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method private scanNextAvailableIdLocked()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 3614
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_1

    .line 3615
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3616
    return v0

    .line 3614
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3619
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 4
    .param p1, "UserData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2294
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2296
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2298
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .line 3213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3214
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3216
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3217
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3218
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3219
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1362
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1363
    return-void
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "isDeviceOwner"    # Z
    .param p4, "cameraRestrictionScope"    # I

    .line 1463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1464
    .local v0, "global":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1467
    .local v1, "local":Landroid/os/Bundle;
    invoke-static {p2, p3, p4, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1471
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1473
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v3

    .line 1475
    .local v3, "globalChanged":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v4

    .line 1478
    .local v4, "localChanged":Z
    if-eqz p3, :cond_0

    .line 1481
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_0

    .line 1483
    :cond_0
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v5, p1, :cond_1

    .line 1488
    const/16 v5, -0x2710

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 1491
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1499
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1500
    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    .line 1501
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1503
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1505
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1506
    if-eqz v3, :cond_4

    .line 1507
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_1

    .line 1511
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 1508
    :cond_4
    if-eqz v4, :cond_5

    .line 1509
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1511
    :cond_5
    :goto_1
    monitor-exit v2

    .line 1512
    return-void

    .line 1511
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1503
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1491
    .end local v3    # "globalChanged":Z
    .end local v4    # "localChanged":Z
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method private setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 7
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z
    .param p3, "target"    # Landroid/content/IntentSender;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 927
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 929
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 934
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/16 v6, 0x25

    aput v6, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 935
    invoke-static {v4}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p2, v3, :cond_0

    .line 937
    const-string v3, "UserManagerService"

    const-string/jumbo v4, "skipping to set quiet mode to the parallel user"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    monitor-exit v0

    return-void

    .line 941
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    if-ne v4, p2, :cond_1

    .line 942
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quiet mode is already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    monitor-exit v0

    return-void

    .line 945
    :cond_1
    iget v4, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v4, v4, 0x80

    iput v4, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 946
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v4

    .line 947
    .local v4, "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 948
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 949
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 950
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 953
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1, v3, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 954
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 955
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_1

    .line 964
    :catch_0
    move-exception v0

    goto :goto_2

    .line 957
    :cond_2
    if-eqz p3, :cond_3

    .line 958
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_0

    .line 959
    :cond_3
    nop

    :goto_0
    nop

    .line 960
    .local v0, "callback":Landroid/os/IProgressListener;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    .line 963
    .end local v0    # "callback":Landroid/os/IProgressListener;
    :goto_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->logQuietModeEnabled(IZLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 967
    goto :goto_3

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 968
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 970
    return-void

    .line 950
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 930
    .end local v4    # "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_4
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not a profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userHandle":I
    .end local p2    # "enableQuietMode":Z
    .end local p3    # "target":Landroid/content/IntentSender;
    .end local p4    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 947
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userHandle":I
    .restart local p2    # "enableQuietMode":Z
    .restart local p3    # "target":Landroid/content/IntentSender;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .locals 7
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 1014
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1019
    .local v0, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 1021
    .local v1, "unlockIntent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 1022
    return-void

    .line 1024
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v2, "callBackIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.INTENT"

    if-eqz p2, :cond_1

    .line 1027
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1029
    :cond_1
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1032
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x54000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1041
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1042
    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1043
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1044
    return-void
.end method

.method private updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1521
    .local p3, "restrictionsArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    nop

    .line 1522
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1523
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 1524
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1525
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1527
    :cond_0
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1530
    :cond_1
    :goto_0
    return v0
.end method

.method private updateUserIds()V
    .locals 8

    .line 3498
    const/4 v0, 0x0

    .line 3499
    .local v0, "num":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3500
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3501
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3502
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_0

    .line 3503
    add-int/lit8 v0, v0, 0x1

    .line 3501
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3506
    .end local v3    # "i":I
    :cond_1
    new-array v3, v0, [I

    .line 3507
    .local v3, "newUsers":[I
    const/4 v4, 0x0

    .line 3508
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 3509
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_2

    .line 3510
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "n":I
    .local v6, "n":I
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v3, v4

    move v4, v6

    .line 3508
    .end local v6    # "n":I
    .restart local v4    # "n":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3513
    .end local v5    # "i":I
    :cond_3
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 3514
    .end local v2    # "userSize":I
    .end local v3    # "newUsers":[I
    .end local v4    # "n":I
    monitor-exit v1

    .line 3515
    return-void

    .line 3514
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "newBaseRestrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 1715
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1714
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1718
    .local v0, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_2

    .line 1720
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1722
    .local v1, "prevBaseRestrictions":Landroid/os/Bundle;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1723
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1726
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1727
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1731
    .end local v1    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1733
    .local v1, "effective":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1741
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_3

    .line 1742
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1754
    :cond_3
    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1756
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1757
    return-void
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "oldGlobalUserRestrictions"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2165
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2166
    .local v0, "originalVersion":I
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2167
    .local v1, "userVersion":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 2169
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2170
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v5, "Primary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2171
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2172
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10404a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2173
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2175
    :cond_0
    const/4 v1, 0x1

    .line 2178
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 2180
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2181
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_2

    .line 2182
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 2183
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2185
    :cond_2
    const/4 v1, 0x2

    .line 2189
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    .line 2190
    const/4 v1, 0x4

    .line 2193
    :cond_4
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 2194
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2195
    const/4 v1, 0x5

    .line 2198
    :cond_5
    const/4 v2, 0x6

    const/16 v4, -0x2710

    if-ge v1, v2, :cond_8

    .line 2199
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    .line 2200
    .local v2, "splitSystemUser":Z
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2201
    move v6, v3

    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 2202
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2204
    .local v7, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_6

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v8, v4, :cond_6

    .line 2207
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v3, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2208
    invoke-direct {p0, v7}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2201
    .end local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2211
    .end local v6    # "i":I
    :cond_7
    monitor-exit v5

    .line 2212
    const/4 v1, 0x6

    goto :goto_1

    .line 2211
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2215
    .end local v2    # "splitSystemUser":Z
    :cond_8
    :goto_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_a

    .line 2217
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2218
    :try_start_1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_9

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v5, v4, :cond_9

    .line 2220
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2225
    :cond_9
    const-string v4, "ensure_verify_apps"

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 2228
    monitor-exit v3

    .line 2229
    const/4 v1, 0x7

    goto :goto_2

    .line 2228
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 2232
    :cond_a
    :goto_2
    if-ge v1, v2, :cond_b

    .line 2233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2236
    :cond_b
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2238
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v0, v2, :cond_c

    .line 2239
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2242
    :cond_c
    :goto_3
    return-void
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .line 1117
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1119
    .local v0, "withName":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1120
    return-object v0

    .line 1122
    .end local v0    # "withName":Landroid/content/pm/UserInfo;
    :cond_0
    return-object p1
.end method

.method private verifyCallingPackage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 4280
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 4281
    .local v0, "packageUid":I
    if-ne v0, p2, :cond_0

    .line 4285
    return-void

    .line 4282
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 7
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3378
    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    .line 3380
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 3381
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3383
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3384
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3385
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3386
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3388
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3389
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3390
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3392
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3393
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3397
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 3394
    :catch_0
    move-exception v0

    .line 3395
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3396
    const-string v2, "UserManagerService"

    const-string v3, "Error writing application restrictions list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3398
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 3369
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3370
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3371
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3372
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 3373
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 2028
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2029
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2030
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "photo.png.tmp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2031
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2032
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2033
    nop

    .line 2034
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    .line 2033
    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2039
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v5

    .local v6, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2040
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2041
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2044
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2047
    goto :goto_0

    .line 2045
    :catch_0
    move-exception v3

    .line 2048
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2051
    nop

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "tmp":Ljava/io/File;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 2049
    :catch_1
    move-exception v0

    .line 2050
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UserManagerService"

    const-string v2, "Error setting photo for user "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2052
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 12
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3402
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3403
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3404
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "entry"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3405
    const-string/jumbo v5, "key"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3407
    instance-of v5, v2, Ljava/lang/Boolean;

    const-string/jumbo v6, "type"

    if-eqz v5, :cond_0

    .line 3408
    const-string v5, "b"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3409
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 3410
    :cond_0
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 3411
    const-string v5, "i"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3412
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 3413
    :cond_1
    const-string v5, ""

    if-eqz v2, :cond_8

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_2

    goto/16 :goto_4

    .line 3416
    :cond_2
    instance-of v7, v2, Landroid/os/Bundle;

    const-string v8, "B"

    if-eqz v7, :cond_3

    .line 3417
    invoke-interface {p1, v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3418
    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_5

    .line 3419
    :cond_3
    instance-of v7, v2, [Landroid/os/Parcelable;

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    .line 3420
    const-string v5, "BA"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3421
    move-object v5, v2

    check-cast v5, [Landroid/os/Parcelable;

    .line 3422
    .local v5, "array":[Landroid/os/Parcelable;
    array-length v7, v5

    :goto_1
    if-ge v9, v7, :cond_5

    aget-object v10, v5, v9

    .line 3423
    .local v10, "parcelable":Landroid/os/Parcelable;
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_4

    .line 3426
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3427
    invoke-interface {p1, v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3428
    move-object v11, v10

    check-cast v11, Landroid/os/Bundle;

    invoke-static {v11, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3429
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3422
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3424
    .restart local v10    # "parcelable":Landroid/os/Parcelable;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "bundle-array can only hold Bundles"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3431
    .end local v5    # "array":[Landroid/os/Parcelable;
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    :cond_5
    goto :goto_5

    .line 3432
    :cond_6
    const-string/jumbo v7, "sa"

    invoke-interface {p1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3433
    move-object v6, v2

    check-cast v6, [Ljava/lang/String;

    .line 3434
    .local v6, "values":[Ljava/lang/String;
    array-length v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "m"

    invoke-interface {p1, v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3435
    array-length v7, v6

    :goto_2
    if-ge v9, v7, :cond_a

    aget-object v8, v6, v9

    .line 3436
    .local v8, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p1, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3437
    if-eqz v8, :cond_7

    move-object v11, v8

    goto :goto_3

    :cond_7
    move-object v11, v5

    :goto_3
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3438
    invoke-interface {p1, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3435
    .end local v8    # "choice":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3414
    .end local v6    # "values":[Ljava/lang/String;
    :cond_8
    :goto_4
    const-string/jumbo v7, "s"

    invoke-interface {p1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3415
    if-eqz v2, :cond_9

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    :cond_9
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3441
    :cond_a
    :goto_5
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3442
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3443
    :cond_b
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 6
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2304
    const/4 v0, 0x0

    .line 2305
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2307
    .local v1, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2308
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2309
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 2310
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2314
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 2311
    :catch_0
    move-exception v2

    .line 2312
    .local v2, "ioe":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2313
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2315
    .end local v2    # "ioe":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private writeUserListLP()V
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2425
    const/4 v0, 0x0

    .line 2426
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2428
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2429
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2432
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2433
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2434
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2435
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2437
    const-string/jumbo v4, "users"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2438
    const-string/jumbo v4, "nextSerialNumber"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2439
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2441
    const-string v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2442
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2443
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v7, "restrictions"

    .line 2444
    invoke-static {v3, v5, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2445
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2446
    :try_start_2
    const-string v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2447
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2448
    const-string v4, "id"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2449
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2451
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2452
    :try_start_3
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2453
    .local v5, "userIdsToWrite":[I
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_0
    array-length v9, v5

    if-ge v8, v9, :cond_0

    .line 2454
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2455
    .local v9, "user":Landroid/content/pm/UserInfo;
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    aput v10, v5, v8

    .line 2453
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2457
    .end local v8    # "i":I
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2458
    :try_start_4
    array-length v4, v5

    :goto_1
    if-ge v7, v4, :cond_1

    aget v8, v5, v7

    .line 2459
    .local v8, "id":I
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2460
    const-string v9, "id"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2461
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2458
    nop

    .end local v8    # "id":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2464
    :cond_1
    const-string/jumbo v4, "users"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2466
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2467
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2471
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "userIdsToWrite":[I
    goto :goto_2

    .line 2457
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 2445
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 2468
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :catch_0
    move-exception v2

    .line 2469
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2470
    const-string v3, "UserManagerService"

    const-string v4, "Error writing user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3099
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3100
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3102
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 3103
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3105
    :cond_0
    return-void
.end method

.method applyUserRestrictionsForAllUsersLR()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1808
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1812
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1834
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1835
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1798
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1799
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .line 1850
    const-string v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1851
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1852
    return v1

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1856
    return v1

    .line 1859
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 1860
    .local v0, "managedProfilesCount":I
    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 1863
    .local v3, "profilesRemovedCount":I
    :goto_0
    const/16 v4, 0x3e7

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->isUserRunning(I)Z

    move-result v4

    .line 1864
    .local v4, "parallelUserCount":I
    sub-int v5, v0, v3

    sub-int/2addr v5, v4

    .line 1865
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 1866
    return v1

    .line 1870
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1871
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1872
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 1875
    :cond_4
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v7

    sub-int/2addr v7, v3

    .line 1878
    .local v7, "usersCountAfterRemoving":I
    if-eq v7, v2, :cond_5

    .line 1879
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v8

    if-ge v7, v8, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    monitor-exit v5

    .line 1878
    return v1

    .line 1873
    .end local v7    # "usersCountAfterRemoving":I
    :cond_7
    :goto_1
    monitor-exit v5

    return v1

    .line 1880
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1239
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1241
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1242
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1246
    monitor-exit v0

    return v2

    .line 1249
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    .line 1243
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    .line 1250
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cleanupPartialUsers()V
    .locals 6

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v0, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 590
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 591
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 592
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    .line 593
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 595
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 590
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    .end local v2    # "userSize":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 600
    .local v1, "partialsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 601
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 602
    .local v3, "ui":Landroid/content/pm/UserInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing partially created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 600
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 606
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 598
    .end local v1    # "partialsSize":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public clearSeedAccountData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3678
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3679
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3681
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3682
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3683
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 3684
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 3685
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3686
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3687
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3688
    return-void

    .line 3685
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_6
    throw v2

    .line 3687
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2667
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2668
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2674
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2675
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserId"    # I

    .line 2909
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2910
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2912
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 2913
    return-object v0

    .line 2915
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2917
    .local v2, "identity":J
    :try_start_0
    const-string/jumbo v0, "no_modify_accounts"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2920
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "location_mode"

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v4, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2923
    const-string/jumbo v0, "no_share_location"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2925
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2926
    nop

    .line 2927
    return-object v1

    .line 2925
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 2686
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2687
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3755
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v2, "UserManagerService"

    invoke-static {v0, v2, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3757
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3758
    .local v11, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 3759
    .local v13, "nowRealtime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3760
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3761
    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 3762
    :try_start_1
    const-string v0, "Users:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 3764
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    move-object v6, v0

    .line 3765
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v6, :cond_1

    .line 3766
    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    goto/16 :goto_2

    .line 3768
    :cond_1
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object v7, v0

    .line 3769
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    move v4, v0

    .line 3770
    .local v4, "userId":I
    const-string v0, "  "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3771
    const-string v0, " serialNo="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3772
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v0, :cond_2

    .line 3773
    :try_start_2
    const-string v0, " <removing> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3835
    .end local v4    # "userId":I
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    goto/16 :goto_5

    .line 3775
    .restart local v4    # "userId":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "i":I
    :cond_2
    :goto_1
    :try_start_3
    iget-boolean v0, v7, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_3

    .line 3776
    :try_start_4
    const-string v0, " <partial>"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3778
    :cond_3
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3779
    const-string v0, "    State: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3781
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 3782
    :try_start_6
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    move/from16 v16, v0

    .line 3783
    .local v16, "state":I
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 3784
    :try_start_7
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    const-string v0, "    Created: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    .line 3786
    :try_start_8
    iget-wide v0, v7, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v2, p2

    move/from16 v17, v4

    .end local v4    # "userId":I
    .local v17, "userId":I
    move-wide v4, v11

    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .local v13, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    .local v18, "nowRealtime":J
    move-wide v6, v0

    :try_start_9
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3788
    const-string v0, "    Last logged in: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3789
    iget-wide v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInTime:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide v6, v11

    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v9    # "i":I
    .local v21, "i":I
    move-wide v8, v0

    :try_start_a
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3791
    const-string v0, "    Last logged in fingerprint: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3792
    iget-object v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3794
    const-string v0, "    Start time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3795
    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3797
    const-string v0, "    Unlock time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3798
    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3800
    const-string v0, "    Has profile owner: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3801
    move-object/from16 v1, p0

    :try_start_b
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    move/from16 v4, v17

    .end local v17    # "userId":I
    .restart local v4    # "userId":I
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3802
    const-string v0, "    Restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3803
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 3804
    :try_start_c
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3805
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3804
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3806
    const-string v0, "    Device policy global restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3807
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3808
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3807
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3809
    const-string v0, "    Device policy local restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3810
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3811
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3810
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3812
    const-string v0, "    Effective restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3813
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3814
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3813
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3815
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3817
    :try_start_d
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3819
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3822
    :cond_4
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3824
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3825
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3827
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3829
    :cond_5
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_6

    .line 3830
    const-string v0, "         account options exist"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3831
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 3763
    .end local v4    # "userId":I
    .end local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "state":I
    :cond_6
    :goto_2
    add-int/lit8 v9, v21, 0x1

    move-wide/from16 v13, v18

    move-object/from16 v8, v20

    .end local v21    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_0

    .line 3815
    .end local v9    # "i":I
    .restart local v4    # "userId":I
    .restart local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "state":I
    .restart local v21    # "i":I
    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 3835
    .end local v4    # "userId":I
    .end local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "state":I
    .end local v21    # "i":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v20, v8

    goto/16 :goto_5

    .end local v18    # "nowRealtime":J
    .local v13, "nowRealtime":J
    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_4

    .line 3783
    .restart local v4    # "userId":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "i":I
    :catchall_5
    move-exception v0

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "i":I
    .local v13, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v18    # "nowRealtime":J
    .restart local v21    # "i":I
    :goto_3
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_11
    throw v0

    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_3

    .line 3763
    .end local v4    # "userId":I
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v18    # "nowRealtime":J
    .end local v21    # "i":I
    .restart local v9    # "i":I
    .local v13, "nowRealtime":J
    :cond_7
    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    .line 3835
    .end local v9    # "i":I
    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    monitor-exit v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 3836
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Device owner id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3838
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3839
    const-string v0, "  Guest restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3840
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 3841
    :try_start_13
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v10, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3842
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 3843
    :try_start_14
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 3844
    :try_start_15
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Device managed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3846
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 3847
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Recently removed userIds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3850
    :cond_8
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 3851
    :try_start_16
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 3852
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Started users state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3853
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 3855
    :try_start_18
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Supports switchable users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  All guests ephemeral: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110088

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3860
    monitor-exit v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 3861
    return-void

    .line 3853
    :catchall_7
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 3850
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_8
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    .line 3842
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_9
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    .line 3835
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v13    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_a
    move-exception v0

    :goto_4
    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    :goto_5
    :try_start_1f
    monitor-exit v20
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_20
    throw v0

    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_b
    move-exception v0

    goto :goto_5

    .line 3860
    .end local v18    # "nowRealtime":J
    .restart local v13    # "nowRealtime":J
    :catchall_c
    move-exception v0

    move-wide/from16 v18, v13

    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    :goto_6
    monitor-exit v15
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_6
.end method

.method public evictCredentialEncryptionKey(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1092
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1093
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1094
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1096
    .local v1, "identity":J
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1101
    nop

    .line 1102
    return-void

    .line 1100
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1097
    :catch_0
    move-exception v3

    .line 1098
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1317
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishRemoveUser(I)V
    .locals 13
    .param p1, "userHandle"    # I

    .line 3111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3113
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3114
    .local v2, "addedIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3115
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3140
    .end local v2    # "addedIntent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3141
    nop

    .line 3142
    return-void

    .line 3140
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3223
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3228
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 3229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3232
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3234
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .line 761
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 765
    .local v1, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 766
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

    .line 768
    .end local v1    # "profileParent":Landroid/content/pm/UserInfo;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 771
    :cond_1
    :goto_0
    return p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 1440
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1442
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    .line 1443
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getFreeProfileBadgeLU(I)I
    .locals 7
    .param p1, "parentUserId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4235
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v0

    .line 4236
    .local v0, "maxManagedProfiles":I
    new-array v1, v0, [Z

    .line 4237
    .local v1, "usedBadges":[Z
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4238
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4239
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4241
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 4243
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    if-ge v5, v0, :cond_0

    .line 4245
    iget v5, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 4238
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4248
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 4249
    aget-boolean v4, v1, v3

    if-nez v4, :cond_2

    .line 4250
    return v3

    .line 4248
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4253
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public getManagedProfileBadge(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1128
    const-string v0, "getManagedProfileBadge"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1131
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1132
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNextAvailableId()I
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3590
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3591
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 3592
    .local v1, "nextId":I
    if-ltz v1, :cond_0

    .line 3593
    monitor-exit v0

    return v1

    .line 3597
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3598
    const-string v2, "UserManagerService"

    const-string v3, "All available IDs are used. Recycling LRU ids."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3600
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3601
    .local v3, "recentlyRemovedId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3602
    .end local v3    # "recentlyRemovedId":Ljava/lang/Integer;
    goto :goto_0

    .line 3603
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v2

    move v1, v2

    .line 3605
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3606
    if-ltz v1, :cond_3

    .line 3609
    return v1

    .line 3607
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No user id available!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3605
    .end local v1    # "nextId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 6

    .line 642
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 645
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 646
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 647
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 648
    monitor-exit v0

    return-object v3

    .line 645
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 652
    const/4 v0, 0x0

    return-object v0

    .line 651
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileIds(IZ)[I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .line 694
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 697
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 699
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 700
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    return-object v3

    .line 701
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "enabledOnly":Z
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 703
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "enabledOnly":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .line 798
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 801
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileParentId(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .line 806
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 676
    const/4 v0, 0x1

    .line 677
    .local v0, "returnFullInfo":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting profiles related to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    .line 682
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 684
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 685
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    return-object v4

    .line 686
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "returnFullInfo":Z
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "enabledOnly":Z
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 688
    .restart local v0    # "returnFullInfo":Z
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "enabledOnly":Z
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3651
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3652
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3653
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3654
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 3655
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3669
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3670
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3671
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3672
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    monitor-exit v0

    return-object v2

    .line 3673
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3660
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3661
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3662
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3663
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 3664
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 610
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 613
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserCreationTime(I)J
    .locals 5
    .param p1, "userHandle"    # I

    .line 3475
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3476
    .local v0, "callingUserId":I
    const/4 v1, 0x0

    .line 3477
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3478
    if-ne v0, p1, :cond_0

    .line 3479
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 3481
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 3482
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_1

    .line 3483
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v1, v4

    .line 3486
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3487
    if-eqz v1, :cond_2

    .line 3491
    iget-wide v2, v1, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v2

    .line 3488
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3486
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getUserHandle(I)I
    .locals 7
    .param p1, "userSerialNumber"    # I

    .line 3463
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 3465
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3466
    .local v5, "info":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v6, p1, :cond_0

    monitor-exit v0

    return v4

    .line 3464
    .end local v4    # "userId":I
    .end local v5    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3469
    :cond_1
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 3470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "targetUserId"    # I

    .line 1367
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1372
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1374
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1379
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1380
    .local v3, "callingUserId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1381
    .local v4, "callingGroupId":I
    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1382
    .local v5, "targetGroupId":I
    const/16 v6, -0x2710

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1384
    .local v6, "sameGroup":Z
    :goto_0
    if-eq v3, p1, :cond_2

    if-nez v6, :cond_2

    .line 1385
    const-string v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1388
    :cond_2
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 1389
    monitor-exit v0

    return-object v2

    .line 1391
    :cond_3
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v1, v7

    .line 1392
    .end local v3    # "callingUserId":I
    .end local v4    # "callingGroupId":I
    .end local v5    # "targetGroupId":I
    .end local v6    # "sameGroup":Z
    .local v1, "iconPath":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "UserManagerService"

    const-string v4, "Couldn\'t find icon file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1400
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    return-object v2

    .line 1375
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_4
    :goto_1
    :try_start_2
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    monitor-exit v0

    return-object v2

    .line 1392
    .end local v1    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1368
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserIds()[I
    .locals 2

    .line 2060
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2061
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    .line 2062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 1106
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .line 1164
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1169
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1171
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_0
    monitor-exit v1

    return-object v3

    .line 1172
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1165
    .end local v0    # "userId":I
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1612
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1614
    .local v0, "enforcingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    const/4 v1, 0x0

    .line 1615
    .local v1, "result":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1616
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v3}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v3

    or-int/2addr v1, v3

    .line 1615
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1618
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 1624
    const-string v0, "getUserRestrictionSource"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1628
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1631
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1635
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v3, -0x2710

    invoke-direct {v1, v3, v2}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1641
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1642
    .local v3, "profileOwnerRestrictions":Landroid/os/Bundle;
    invoke-static {v3, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1643
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 1648
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1649
    .local v2, "globalRestrictions":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1650
    .local v5, "profileUserId":I
    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1651
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    .end local v2    # "globalRestrictions":Landroid/os/Bundle;
    .end local v5    # "profileUserId":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1654
    .end local v3    # "profileOwnerRestrictions":Landroid/os/Bundle;
    .end local v4    # "i":I
    :cond_4
    monitor-exit v1

    .line 1655
    return-object v0

    .line 1654
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "userId"    # I

    .line 1671
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .line 3447
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3448
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3449
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    monitor-exit v0

    return v2

    .line 3450
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserStartRealtime()J
    .locals 5

    .line 1177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1178
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1179
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1180
    .local v2, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_0

    .line 1181
    iget-wide v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v3

    .line 1183
    :cond_0
    const-wide/16 v3, 0x0

    monitor-exit v1

    return-wide v3

    .line 1184
    .end local v2    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUserUnlockRealtime()J
    .locals 4

    .line 1189
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1191
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    .line 1192
    iget-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v2

    .line 1194
    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 1195
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 7
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 657
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 660
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 661
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 662
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 663
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_0

    .line 664
    goto :goto_1

    .line 666
    :cond_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 667
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 670
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return-object v1

    .line 671
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1676
    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1677
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1678
    return v1

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1681
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1682
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    .line 1683
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasManagedProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 4262
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4263
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4264
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4265
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4266
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4267
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_0

    invoke-static {v1, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4268
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 4265
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4271
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 4272
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRestrictedProfiles()Z
    .locals 6

    .line 1255
    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1256
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1257
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1258
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1259
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1260
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1261
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v5, :cond_0

    iget v5, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v5, v0, :cond_0

    .line 1263
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 1259
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1266
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 1267
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1573
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1574
    return v1

    .line 1576
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1577
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .locals 7
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 1583
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1584
    return v1

    .line 1586
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 1587
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1588
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1589
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 1590
    .local v5, "restrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1591
    return v0

    .line 1587
    .end local v4    # "userId":I
    .end local v5    # "restrictions":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1594
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method public isDemoUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1219
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1220
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1221
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is a demo user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1224
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1225
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1226
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    monitor-exit v1

    return v3

    .line 1227
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isManagedProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1137
    const-string/jumbo v0, "isManagedProfile"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1140
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1141
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isQuietModeEnabled(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .line 996
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 999
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1000
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1002
    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 1000
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userHandle":I
    :try_start_4
    throw v2

    .line 1005
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userHandle":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public isRestricted()Z
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1233
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 776
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 777
    :cond_0
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method isUserInitialized(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 3897
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result v0

    return v0
.end method

.method public isUserNameSet(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .line 3455
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3456
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3457
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 3458
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserRunning(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1158
    const-string/jumbo v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1152
    const-string/jumbo v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1146
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public makeInitialized(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 1404
    const-string/jumbo v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1405
    const/4 v0, 0x0

    .line 1407
    .local v0, "scheduleWriteUser":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1408
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1409
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1413
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_1

    .line 1414
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 1415
    const/4 v0, 0x1

    .line 1417
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    if-eqz v0, :cond_2

    .line 1419
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1421
    :cond_2
    return-void

    .line 1410
    :cond_3
    :goto_0
    :try_start_1
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    monitor-exit v1

    return-void

    .line 1417
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .line 2955
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2956
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "no_remove_user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2958
    const-string v0, "UserManagerService"

    const-string v2, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    return v1

    .line 2962
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2965
    .local v2, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2966
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2967
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2968
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 2971
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2972
    :try_start_3
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2973
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2987
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2973
    return v1

    .line 2980
    :cond_2
    :try_start_4
    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2983
    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 2984
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2985
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2987
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2988
    nop

    .line 2989
    return v4

    .line 2969
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2987
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2969
    return v1

    .line 2971
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userHandle":I
    :try_start_8
    throw v1

    .line 2985
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userHandle":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userHandle":I
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2987
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userHandle":I
    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onBeforeStartUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 3522
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3523
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 3524
    return-void

    .line 3526
    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3528
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 3529
    .local v2, "migrateAppsData":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3530
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3532
    if-eqz p1, :cond_1

    .line 3533
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3534
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 3535
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3537
    :cond_1
    :goto_0
    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 3544
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3545
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 3546
    return-void

    .line 3548
    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3550
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3551
    .local v2, "migrateAppsData":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3552
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3553
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .locals 5
    .param p1, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 3719
    if-nez p2, :cond_0

    .line 3720
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3723
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3725
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 3729
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3727
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3731
    :catch_0
    move-exception v2

    .line 3732
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3734
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3715
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3716
    return-void
.end method

.method public onUserLoggedIn(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 3570
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3571
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3576
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3577
    .local v1, "now":J
    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 3578
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 3580
    :cond_1
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3581
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3582
    return-void

    .line 3572
    .end local v1    # "now":J
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userForeground: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    return-void
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2889
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2890
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2891
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2892
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2893
    monitor-exit v1

    .line 2894
    return-object v0

    .line 2893
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 47
    .param p1, "id"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2494
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 2495
    .local v0, "flags":I
    move/from16 v3, p1

    .line 2496
    .local v3, "serialNumber":I
    const/4 v4, 0x0

    .line 2497
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2498
    .local v5, "account":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2499
    .local v6, "iconPath":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 2500
    .local v7, "creationTime":J
    const-wide/16 v9, 0x0

    .line 2501
    .local v9, "lastLoggedInTime":J
    const-wide/16 v11, 0x0

    .line 2502
    .local v11, "lastRequestQuietModeEnabledTimestamp":J
    const/4 v13, 0x0

    .line 2503
    .local v13, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v14, -0x2710

    .line 2504
    .local v14, "profileGroupId":I
    const/4 v15, 0x0

    .line 2505
    .local v15, "profileBadge":I
    const/16 v16, -0x2710

    .line 2506
    .local v16, "restrictedProfileParentId":I
    const/16 v17, 0x0

    .line 2507
    .local v17, "partial":Z
    const/16 v18, 0x0

    .line 2508
    .local v18, "guestToRemove":Z
    const/16 v19, 0x0

    .line 2509
    .local v19, "persistSeedData":Z
    const/16 v20, 0x0

    .line 2510
    .local v20, "seedAccountName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2511
    .local v21, "seedAccountType":Ljava/lang/String;
    const/16 v22, 0x0

    .line 2512
    .local v22, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v23, 0x0

    .line 2513
    .local v23, "baseRestrictions":Landroid/os/Bundle;
    const/16 v24, 0x0

    .line 2514
    .local v24, "localRestrictions":Landroid/os/Bundle;
    const/16 v25, 0x0

    .line 2516
    .local v25, "globalRestrictions":Landroid/os/Bundle;
    move/from16 v26, v3

    .end local v3    # "serialNumber":I
    .local v26, "serialNumber":I
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2517
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v27, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v28, v0

    .end local v0    # "flags":I
    .local v28, "flags":I
    invoke-virtual/range {v27 .. v27}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v4

    move-object/from16 v4, p2

    .end local v4    # "name":Ljava/lang/String;
    .local v27, "name":Ljava/lang/String;
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2519
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move/from16 v29, v0

    .local v29, "type":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    move/from16 v0, v29

    const/4 v4, 0x1

    .end local v29    # "type":I
    .local v0, "type":I
    if-eq v0, v4, :cond_1

    move-object/from16 v4, p2

    goto :goto_0

    .end local v0    # "type":I
    .restart local v29    # "type":I
    :cond_0
    move/from16 v0, v29

    .line 2524
    .end local v29    # "type":I
    .restart local v0    # "type":I
    :cond_1
    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    .line 2525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v5

    .end local v5    # "account":Ljava/lang/String;
    .local v32, "account":Ljava/lang/String;
    const-string v5, "Unable to read user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const/4 v4, 0x0

    return-object v4

    .line 2529
    .end local v32    # "account":Ljava/lang/String;
    .restart local v5    # "account":Ljava/lang/String;
    :cond_2
    move-object/from16 v32, v5

    .end local v5    # "account":Ljava/lang/String;
    .restart local v32    # "account":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v0, v4, :cond_17

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2530
    const/4 v4, -0x1

    const-string v5, "id"

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 2531
    .local v4, "storedId":I
    if-eq v4, v2, :cond_3

    .line 2532
    const-string v5, "UserManagerService"

    move/from16 v29, v0

    .end local v0    # "type":I
    .restart local v29    # "type":I
    const-string v0, "User id does not match the file name"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    const/4 v0, 0x0

    return-object v0

    .line 2535
    .end local v29    # "type":I
    .restart local v0    # "type":I
    :cond_3
    move/from16 v29, v0

    const/4 v0, 0x0

    .end local v0    # "type":I
    .restart local v29    # "type":I
    const-string/jumbo v5, "serialNumber"

    invoke-direct {v1, v3, v5, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 2536
    .end local v26    # "serialNumber":I
    .local v5, "serialNumber":I
    const/4 v0, 0x0

    move/from16 v33, v4

    .end local v4    # "storedId":I
    .local v33, "storedId":I
    const-string v4, "flags"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 2537
    .end local v28    # "flags":I
    .local v4, "flags":I
    const-string v0, "icon"

    move/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "flags":I
    .restart local v28    # "flags":I
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2538
    move v0, v5

    .end local v5    # "serialNumber":I
    .local v0, "serialNumber":I
    const-wide/16 v4, 0x0

    move/from16 v34, v0

    .end local v0    # "serialNumber":I
    .local v34, "serialNumber":I
    const-string v0, "created"

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 2539
    const-string/jumbo v0, "lastLoggedIn"

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 2540
    const-string/jumbo v0, "lastLoggedInFingerprint"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2542
    const/16 v0, -0x2710

    const-string/jumbo v4, "profileGroupId"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 2544
    const-string/jumbo v4, "profileBadge"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 2545
    const-string/jumbo v4, "restrictedProfileParentId"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 2547
    const-string/jumbo v0, "partial"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2548
    .local v0, "valueString":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2549
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 2551
    :cond_4
    const-string v4, "guestToRemove"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2552
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2553
    const/4 v4, 0x1

    move/from16 v18, v4

    .line 2556
    :cond_5
    const-string/jumbo v4, "seedAccountName"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2557
    const-string/jumbo v4, "seedAccountType"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2558
    if-nez v20, :cond_6

    if-eqz v21, :cond_7

    .line 2559
    :cond_6
    const/16 v19, 0x1

    .line 2562
    :cond_7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move-object/from16 v5, v32

    .line 2563
    .end local v32    # "account":Ljava/lang/String;
    .local v4, "outerDepth":I
    .local v5, "account":Ljava/lang/String;
    :goto_1
    move-object/from16 v26, v0

    .end local v0    # "valueString":Ljava/lang/String;
    .local v26, "valueString":Ljava/lang/String;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move/from16 v31, v0

    move-object/from16 v29, v5

    const/4 v5, 0x1

    .end local v5    # "account":Ljava/lang/String;
    .local v29, "account":Ljava/lang/String;
    .local v31, "type":I
    if-eq v0, v5, :cond_15

    const/4 v0, 0x3

    move/from16 v5, v31

    .end local v31    # "type":I
    .local v5, "type":I
    if-ne v5, v0, :cond_8

    .line 2564
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v4, :cond_16

    .line 2565
    :cond_8
    const/4 v0, 0x3

    if-eq v5, v0, :cond_14

    const/4 v0, 0x4

    if-ne v5, v0, :cond_9

    .line 2566
    move/from16 v35, v4

    goto/16 :goto_3

    .line 2568
    :cond_9
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2569
    .local v0, "tag":Ljava/lang/String;
    move/from16 v35, v4

    .end local v4    # "outerDepth":I
    .local v35, "outerDepth":I
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2570
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2571
    .end local v5    # "type":I
    .local v4, "type":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 2572
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v5, v29

    move/from16 v29, v4

    goto/16 :goto_2

    .line 2571
    :cond_a
    move-object/from16 v5, v29

    move/from16 v29, v4

    goto/16 :goto_2

    .line 2574
    .end local v4    # "type":I
    .restart local v5    # "type":I
    :cond_b
    const-string/jumbo v4, "restrictions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2575
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v23

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto/16 :goto_2

    .line 2576
    :cond_c
    const-string v4, "device_policy_restrictions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2577
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto/16 :goto_2

    .line 2578
    :cond_d
    const-string v4, "device_policy_global_restrictions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2579
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v25

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto :goto_2

    .line 2580
    :cond_e
    const-string v4, "account"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2581
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2582
    .end local v5    # "type":I
    .restart local v4    # "type":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_f

    .line 2583
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    move/from16 v29, v4

    .end local v29    # "account":Ljava/lang/String;
    .local v5, "account":Ljava/lang/String;
    goto :goto_2

    .line 2582
    .end local v5    # "account":Ljava/lang/String;
    .restart local v29    # "account":Ljava/lang/String;
    :cond_f
    move-object/from16 v5, v29

    move/from16 v29, v4

    goto :goto_2

    .line 2585
    .end local v4    # "type":I
    .local v5, "type":I
    :cond_10
    const-string/jumbo v4, "seedAccountOptions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2586
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v22

    .line 2587
    const/16 v19, 0x1

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto :goto_2

    .line 2588
    :cond_11
    const-string/jumbo v4, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2589
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2590
    .end local v5    # "type":I
    .restart local v4    # "type":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_12

    .line 2591
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v5, v29

    move/from16 v29, v4

    goto :goto_2

    .line 2590
    :cond_12
    move-object/from16 v5, v29

    move/from16 v29, v4

    goto :goto_2

    .line 2588
    .end local v4    # "type":I
    .restart local v5    # "type":I
    :cond_13
    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    .line 2594
    .end local v0    # "tag":Ljava/lang/String;
    .local v5, "account":Ljava/lang/String;
    .local v29, "type":I
    :goto_2
    move-object/from16 v0, v26

    move/from16 v4, v35

    goto/16 :goto_1

    .line 2565
    .end local v35    # "outerDepth":I
    .local v4, "outerDepth":I
    .local v5, "type":I
    .local v29, "account":Ljava/lang/String;
    :cond_14
    move/from16 v35, v4

    .line 2563
    .end local v4    # "outerDepth":I
    .restart local v35    # "outerDepth":I
    :goto_3
    move-object/from16 v0, v26

    move/from16 v4, v35

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto/16 :goto_1

    .end local v5    # "type":I
    .end local v35    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    .restart local v31    # "type":I
    :cond_15
    move/from16 v35, v4

    move/from16 v5, v31

    .line 2598
    .end local v4    # "outerDepth":I
    .end local v26    # "valueString":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "storedId":I
    .restart local v5    # "type":I
    :cond_16
    move-wide/from16 v41, v11

    move/from16 v1, v16

    move/from16 v12, v17

    move/from16 v39, v19

    move-object/from16 v37, v20

    move-object/from16 v38, v21

    move-object/from16 v40, v22

    move-object/from16 v43, v23

    move-object/from16 v44, v24

    move-object/from16 v45, v25

    move-object/from16 v4, v27

    move-object/from16 v36, v29

    move-object/from16 v16, v3

    move/from16 v29, v5

    move-wide v10, v9

    move v3, v15

    move/from16 v5, v28

    move-wide v8, v7

    move v15, v14

    move/from16 v14, v18

    move/from16 v7, v34

    goto :goto_4

    .line 2529
    .end local v5    # "type":I
    .end local v29    # "account":Ljava/lang/String;
    .end local v34    # "serialNumber":I
    .local v0, "type":I
    .local v26, "serialNumber":I
    .restart local v32    # "account":Ljava/lang/String;
    :cond_17
    move/from16 v29, v0

    .line 2598
    .end local v0    # "type":I
    .local v29, "type":I
    move-wide/from16 v41, v11

    move/from16 v1, v16

    move/from16 v12, v17

    move/from16 v39, v19

    move-object/from16 v37, v20

    move-object/from16 v38, v21

    move-object/from16 v40, v22

    move-object/from16 v43, v23

    move-object/from16 v44, v24

    move-object/from16 v45, v25

    move-object/from16 v4, v27

    move/from16 v5, v28

    move-object/from16 v36, v32

    move-object/from16 v16, v3

    move-wide v10, v9

    move v3, v15

    move-wide v8, v7

    move v15, v14

    move/from16 v14, v18

    move/from16 v7, v26

    .end local v9    # "lastLoggedInTime":J
    .end local v11    # "lastRequestQuietModeEnabledTimestamp":J
    .end local v17    # "partial":Z
    .end local v18    # "guestToRemove":Z
    .end local v19    # "persistSeedData":Z
    .end local v20    # "seedAccountName":Ljava/lang/String;
    .end local v21    # "seedAccountType":Ljava/lang/String;
    .end local v22    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v23    # "baseRestrictions":Landroid/os/Bundle;
    .end local v24    # "localRestrictions":Landroid/os/Bundle;
    .end local v25    # "globalRestrictions":Landroid/os/Bundle;
    .end local v26    # "serialNumber":I
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "flags":I
    .end local v32    # "account":Ljava/lang/String;
    .local v1, "restrictedProfileParentId":I
    .local v3, "profileBadge":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "flags":I
    .local v7, "serialNumber":I
    .local v8, "creationTime":J
    .local v10, "lastLoggedInTime":J
    .local v12, "partial":Z
    .local v14, "guestToRemove":Z
    .local v15, "profileGroupId":I
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v36, "account":Ljava/lang/String;
    .local v37, "seedAccountName":Ljava/lang/String;
    .local v38, "seedAccountType":Ljava/lang/String;
    .local v39, "persistSeedData":Z
    .local v40, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v41, "lastRequestQuietModeEnabledTimestamp":J
    .local v43, "baseRestrictions":Landroid/os/Bundle;
    .local v44, "localRestrictions":Landroid/os/Bundle;
    .local v45, "globalRestrictions":Landroid/os/Bundle;
    :goto_4
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, v2, v4, v6, v5}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v17, v0

    .line 2599
    .local v17, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v18, v4

    move-object/from16 v4, v17

    .end local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    .local v18, "name":Ljava/lang/String;
    iput v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2600
    iput-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2601
    iput-wide v10, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2602
    iput-object v13, v4, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2603
    iput-boolean v12, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 2604
    iput-boolean v14, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2605
    iput v15, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2606
    iput v3, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2607
    iput v1, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2610
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object/from16 v17, v0

    .line 2611
    .local v17, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move/from16 v19, v1

    move-object/from16 v1, v17

    .end local v17    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v19, "restrictedProfileParentId":I
    iput-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2612
    move/from16 v17, v3

    move-object/from16 v3, v36

    .end local v36    # "account":Ljava/lang/String;
    .local v3, "account":Ljava/lang/String;
    .local v17, "profileBadge":I
    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 2613
    move-object/from16 v20, v3

    move-object/from16 v3, v37

    .end local v37    # "seedAccountName":Ljava/lang/String;
    .local v3, "seedAccountName":Ljava/lang/String;
    .local v20, "account":Ljava/lang/String;
    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 2614
    move-object/from16 v21, v3

    move-object/from16 v3, v38

    .end local v38    # "seedAccountType":Ljava/lang/String;
    .local v3, "seedAccountType":Ljava/lang/String;
    .local v21, "seedAccountName":Ljava/lang/String;
    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 2615
    move-object/from16 v22, v3

    move/from16 v3, v39

    .end local v39    # "persistSeedData":Z
    .local v3, "persistSeedData":Z
    .local v22, "seedAccountType":Ljava/lang/String;
    iput-boolean v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 2616
    move/from16 v23, v3

    move-object/from16 v3, v40

    .end local v40    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v3, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v23, "persistSeedData":Z
    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 2617
    move-object/from16 v25, v3

    move-object/from16 v24, v4

    move-wide/from16 v3, v41

    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v41    # "lastRequestQuietModeEnabledTimestamp":J
    .local v3, "lastRequestQuietModeEnabledTimestamp":J
    .local v24, "userInfo":Landroid/content/pm/UserInfo;
    .local v25, "seedAccountOptions":Landroid/os/PersistableBundle;
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 2619
    move-wide/from16 v26, v3

    move-object/from16 v3, p0

    .end local v3    # "lastRequestQuietModeEnabledTimestamp":J
    .local v26, "lastRequestQuietModeEnabledTimestamp":J
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2620
    move/from16 v28, v5

    move-object/from16 v5, v43

    .end local v43    # "baseRestrictions":Landroid/os/Bundle;
    .local v5, "baseRestrictions":Landroid/os/Bundle;
    .restart local v28    # "flags":I
    if-eqz v5, :cond_18

    .line 2621
    :try_start_0
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 2629
    :catchall_0
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v31, v44

    move-object/from16 v5, v45

    goto :goto_7

    .line 2623
    :cond_18
    :goto_5
    move-object/from16 v30, v5

    move-object/from16 v5, v44

    .end local v44    # "localRestrictions":Landroid/os/Bundle;
    .local v5, "localRestrictions":Landroid/os/Bundle;
    .local v30, "baseRestrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_19

    .line 2624
    :try_start_1
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    .line 2629
    :catchall_1
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v5, v45

    goto :goto_7

    .line 2626
    :cond_19
    :goto_6
    move-object/from16 v31, v5

    move-object/from16 v5, v45

    .end local v45    # "globalRestrictions":Landroid/os/Bundle;
    .local v5, "globalRestrictions":Landroid/os/Bundle;
    .local v31, "localRestrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_1a

    .line 2627
    :try_start_2
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2629
    :cond_1a
    monitor-exit v4

    .line 2630
    return-object v1

    .line 2629
    :catchall_2
    move-exception v0

    :goto_7
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 3561
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    .line 3562
    return-void
.end method

.method public removeUser(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    .line 2999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUser u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3003
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3004
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3005
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v1, v3

    .line 3006
    .local v1, "isManagedProfile":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3007
    if-eqz v1, :cond_1

    .line 3008
    const-string/jumbo v0, "no_remove_managed_profile"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "no_remove_user"

    .line 3009
    .local v0, "restriction":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove user. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is enabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    return v2

    .line 3013
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v2

    return v2

    .line 3006
    .end local v0    # "restriction":Ljava/lang/String;
    .end local v1    # "isManagedProfile":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .line 2680
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2681
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method removeUserInfo(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2899
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2900
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2901
    monitor-exit v0

    .line 2902
    return-void

    .line 2901
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enableQuietMode"    # Z
    .param p3, "userHandle"    # I
    .param p4, "target"    # Landroid/content/IntentSender;

    .line 848
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IZ)V

    .line 856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 858
    .local v3, "identity":J
    const/4 v0, 0x0

    .line 859
    .local v0, "result":Z
    if-eqz p2, :cond_3

    .line 860
    :try_start_0
    invoke-direct {p0, p3, v1, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x1

    goto :goto_3

    .line 864
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 865
    invoke-virtual {v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 866
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 867
    .local v1, "needToShowConfirmCredential":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 868
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V

    goto :goto_3

    .line 870
    :cond_5
    invoke-direct {p0, p3, v2, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    const/4 v0, 0x1

    .line 875
    .end local v1    # "needToShowConfirmCredential":Z
    :goto_3
    nop

    .line 877
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 875
    return v0

    .line 877
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 3241
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3242
    if-eqz p2, :cond_0

    .line 3243
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 3245
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3246
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3250
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1

    .line 3247
    :cond_2
    :goto_0
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V

    .line 3252
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3256
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3257
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3258
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3259
    return-void

    .line 3252
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 1448
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1450
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1451
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1453
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1454
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 1455
    monitor-exit v1

    .line 1456
    return-void

    .line 1455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1452
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    .line 3629
    const-string v0, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3630
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3632
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3633
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3634
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_0

    .line 3635
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 3638
    :cond_0
    :try_start_3
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3639
    iput-object p3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3640
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3641
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 3642
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3643
    if-eqz p5, :cond_1

    .line 3644
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3646
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3647
    return-void

    .line 3642
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "accountName":Ljava/lang/String;
    .end local p3    # "accountType":Ljava/lang/String;
    .end local p4    # "accountOptions":Landroid/os/PersistableBundle;
    .end local p5    # "persist":Z
    :try_start_6
    throw v2

    .line 3646
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "accountName":Ljava/lang/String;
    .restart local p3    # "accountType":Ljava/lang/String;
    .restart local p4    # "accountOptions":Landroid/os/PersistableBundle;
    .restart local p5    # "persist":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .line 618
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 622
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 623
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v3, :cond_0

    .line 624
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User not found for setting user account: u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 627
    :cond_0
    :try_start_3
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 628
    .local v4, "currentAccount":Ljava/lang/String;
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 629
    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 630
    move-object v0, v3

    .line 632
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v4    # "currentAccount":Ljava/lang/String;
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 634
    if-eqz v0, :cond_2

    .line 635
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 637
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 638
    return-void

    .line 632
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "accountName":Ljava/lang/String;
    :try_start_6
    throw v3

    .line 637
    .restart local v0    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "accountName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public setUserAdmin(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1063
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1068
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1069
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1075
    :cond_0
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1076
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1077
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1081
    const/4 v0, 0x0

    const-string/jumbo v1, "no_sms"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1082
    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1083
    return-void

    .line 1072
    .restart local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 1069
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_5
    throw v2

    .line 1077
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1048
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1052
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1053
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1056
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1058
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1059
    return-void

    .line 1053
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_4
    throw v2

    .line 1058
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1348
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1349
    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    const-string v0, "UserManagerService"

    const-string v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    return-void

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1354
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1322
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1323
    const/4 v0, 0x0

    .line 1324
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1325
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1326
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1330
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1331
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1332
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1333
    const/4 v0, 0x1

    .line 1335
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1336
    if-eqz v0, :cond_2

    .line 1337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1339
    .local v1, "ident":J
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1342
    goto :goto_0

    .line 1341
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1344
    .end local v1    # "ident":J
    :cond_2
    :goto_0
    return-void

    .line 1327
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :goto_1
    :try_start_2
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    monitor-exit v1

    return-void

    .line 1335
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 1688
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1689
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1690
    return-void

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1696
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1695
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1697
    .local v1, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1699
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1700
    .end local v1    # "newRestrictions":Landroid/os/Bundle;
    monitor-exit v0

    .line 1701
    return-void

    .line 1700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3693
    const-string v0, "Cannot check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3694
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3696
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 3697
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3698
    .local v3, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 3699
    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3700
    goto :goto_1

    .line 3702
    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3703
    goto :goto_1

    .line 3705
    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 3696
    .end local v3    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3707
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 3708
    const/4 v0, 0x0

    return v0

    .line 3707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method systemReady()V
    .locals 6

    .line 564
    nop

    .line 565
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 564
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 567
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 572
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "no_config_wifi"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    const/4 v1, 0x1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v3, "no_config_wifi"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 583
    return-void

    .line 569
    .end local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2328
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2329
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2330
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2331
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2333
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2334
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2335
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "id"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2336
    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "serialNumber"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2337
    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "flags"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2338
    iget-wide v4, v1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "created"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2339
    iget-wide v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2340
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2339
    const-string/jumbo v4, "lastLoggedIn"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2341
    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2342
    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    const-string/jumbo v4, "lastLoggedInFingerprint"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2345
    :cond_0
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2346
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v4, "icon"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2348
    :cond_1
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_2

    .line 2349
    const-string/jumbo v2, "partial"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2351
    :cond_2
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v2, :cond_3

    .line 2352
    const-string v2, "guestToRemove"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2354
    :cond_3
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_4

    .line 2355
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2356
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2355
    const-string/jumbo v5, "profileGroupId"

    invoke-interface {v0, v3, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2358
    :cond_4
    iget v2, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2359
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2358
    const-string/jumbo v5, "profileBadge"

    invoke-interface {v0, v3, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2360
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v4, :cond_5

    .line 2361
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2362
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2361
    const-string/jumbo v4, "restrictedProfileParentId"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2365
    :cond_5
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_7

    .line 2366
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2367
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const-string/jumbo v4, "seedAccountName"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2369
    :cond_6
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 2370
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    const-string/jumbo v4, "seedAccountType"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2373
    :cond_7
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2374
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2375
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2376
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2378
    :cond_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2379
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2380
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    .line 2379
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2381
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2382
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_restrictions"

    .line 2381
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2384
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2385
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_global_restrictions"

    .line 2384
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2387
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2389
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 2390
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2391
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2392
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2395
    :cond_9
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_a

    .line 2396
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2397
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2398
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2401
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_b

    .line 2402
    const-string/jumbo v2, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2403
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2404
    const-string/jumbo v2, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2407
    :cond_b
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2409
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2410
    return-void

    .line 2387
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
