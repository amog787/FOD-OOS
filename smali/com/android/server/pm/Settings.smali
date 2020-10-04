.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DISTRACTION_FLAGS:Ljava/lang/String; = "distraction_flags"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field private static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field private static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field private static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field private static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field private static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"

.field private static final TAG_SUSPENDED_DIALOG_INFO:Ljava/lang/String; = "suspended-dialog-info"

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"

.field private static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static mFirstAvailableUid:I


# instance fields
.field private final mAppIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mBlockUninstallPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mInstallerPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherAppIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field private final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 289
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3647
    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3648
    const/high16 v2, 0x10000000

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3649
    const/high16 v2, 0x40000000    # 2.0f

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4471
    const/16 v3, 0x1e

    new-array v4, v3, [Ljava/lang/Object;

    .line 4472
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "SYSTEM"

    aput-object v7, v4, v5

    .line 4473
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v9, 0x3

    const-string v10, "DEBUGGABLE"

    aput-object v10, v4, v9

    .line 4474
    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v11, 0x5

    const-string v12, "HAS_CODE"

    aput-object v12, v4, v11

    .line 4475
    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v4, v14

    const/4 v15, 0x7

    const-string v16, "PERSISTENT"

    aput-object v16, v4, v15

    .line 4476
    const/16 v16, 0x10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v12

    const/16 v18, 0x9

    const-string v19, "FACTORY_TEST"

    aput-object v19, v4, v18

    .line 4477
    const/16 v19, 0x20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0xa

    aput-object v20, v4, v21

    const/16 v21, 0xb

    const-string v22, "ALLOW_TASK_REPARENTING"

    aput-object v22, v4, v21

    .line 4478
    const/16 v21, 0x40

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0xc

    aput-object v21, v4, v22

    const/16 v21, 0xd

    const-string v22, "ALLOW_CLEAR_USER_DATA"

    aput-object v22, v4, v21

    .line 4479
    const/16 v21, 0x80

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0xe

    aput-object v21, v4, v22

    const/16 v21, 0xf

    const-string v22, "UPDATED_SYSTEM_APP"

    aput-object v22, v4, v21

    .line 4480
    const/16 v21, 0x100

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v16

    const/16 v21, 0x11

    const-string v22, "TEST_ONLY"

    aput-object v22, v4, v21

    .line 4481
    const/16 v21, 0x4000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x12

    aput-object v21, v4, v22

    const/16 v21, 0x13

    const-string v22, "VM_SAFE_MODE"

    aput-object v22, v4, v21

    .line 4482
    const v21, 0x8000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x14

    aput-object v21, v4, v22

    const/16 v21, 0x15

    const-string v22, "ALLOW_BACKUP"

    aput-object v22, v4, v21

    .line 4483
    const/high16 v21, 0x10000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x16

    aput-object v21, v4, v22

    const/16 v21, 0x17

    const-string v22, "KILL_AFTER_RESTORE"

    aput-object v22, v4, v21

    .line 4484
    const/high16 v21, 0x20000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x18

    aput-object v21, v4, v22

    const/16 v21, 0x19

    const-string v22, "RESTORE_ANY_VERSION"

    aput-object v22, v4, v21

    .line 4485
    const/high16 v21, 0x40000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1a

    aput-object v21, v4, v22

    const/16 v21, 0x1b

    const-string v22, "EXTERNAL_STORAGE"

    aput-object v22, v4, v21

    .line 4486
    const/high16 v21, 0x100000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1c

    aput-object v21, v4, v22

    const/16 v21, 0x1d

    const-string v22, "LARGE_HEAP"

    aput-object v22, v4, v21

    sput-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4489
    const/16 v4, 0x2e

    new-array v4, v4, [Ljava/lang/Object;

    .line 4490
    const/16 v21, 0x400

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v4, v5

    .line 4491
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v4, v9

    .line 4492
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v4, v11

    .line 4493
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v14

    const-string v0, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    aput-object v0, v4, v15

    .line 4494
    const/high16 v0, 0x20000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v12

    const-string v0, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    aput-object v0, v4, v18

    .line 4495
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v4, v1

    const/16 v0, 0xb

    const-string v1, "BACKUP_IN_FOREGROUND"

    aput-object v1, v4, v0

    .line 4496
    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    const-string v1, "CANT_SAVE_STATE"

    aput-object v1, v4, v0

    .line 4497
    const/16 v0, 0xe

    aput-object v20, v4, v0

    const/16 v0, 0xf

    const-string v1, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v1, v4, v0

    .line 4498
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v16

    const/16 v0, 0x11

    const-string v1, "DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4499
    const/16 v0, 0x12

    aput-object v17, v4, v0

    const/16 v0, 0x13

    const-string v1, "HAS_DOMAIN_URLS"

    aput-object v1, v4, v0

    .line 4500
    const/16 v0, 0x14

    aput-object v6, v4, v0

    const/16 v0, 0x15

    const-string v1, "HIDDEN"

    aput-object v1, v4, v0

    .line 4501
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, v4, v1

    const/16 v0, 0x17

    const-string v1, "EPHEMERAL"

    aput-object v1, v4, v0

    .line 4502
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v4, v1

    const/16 v0, 0x19

    const-string v1, "ISOLATED_SPLIT_LOADING"

    aput-object v1, v4, v0

    .line 4503
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v4, v1

    const/16 v0, 0x1b

    const-string v1, "OEM"

    aput-object v1, v4, v0

    .line 4504
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, v4, v1

    const/16 v0, 0x1d

    const-string v1, "PARTIALLY_DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4505
    aput-object v13, v4, v3

    const/16 v0, 0x1f

    const-string v1, "PRIVILEGED"

    aput-object v1, v4, v0

    .line 4506
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v19

    const/16 v0, 0x21

    const-string v1, "REQUIRED_FOR_SYSTEM_USER"

    aput-object v1, v4, v0

    .line 4507
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v4, v1

    const/16 v0, 0x23

    const-string v1, "STATIC_SHARED_LIBRARY"

    aput-object v1, v4, v0

    .line 4508
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v4, v1

    const/16 v0, 0x25

    const-string v1, "VENDOR"

    aput-object v1, v4, v0

    .line 4509
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v4, v1

    const/16 v0, 0x27

    const-string v1, "PRODUCT"

    aput-object v1, v4, v0

    .line 4510
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, v4, v1

    const/16 v0, 0x29

    const-string v1, "PRODUCT_SERVICES"

    aput-object v1, v4, v0

    .line 4511
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v4, v1

    const/16 v0, 0x2b

    const-string v1, "VIRTUAL_PRELOAD"

    aput-object v1, v4, v0

    .line 4512
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, v4, v1

    const/16 v0, 0x2d

    const-string v1, "ODM"

    aput-object v1, v4, v0

    sput-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4489
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .locals 4
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "permission"    # Lcom/android/server/pm/permission/PermissionSettings;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 268
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    .line 271
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    .line 274
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 278
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    .line 281
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 292
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 336
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 341
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 345
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 348
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    .line 350
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 355
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 362
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 365
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 389
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 390
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 391
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 393
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 394
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1fd

    invoke-static {v0, v2, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 399
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 400
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 401
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 404
    new-instance v0, Ljava/io/File;

    const-string v1, "/config/sdcardfs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "kernelDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 408
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 409
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped-backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 413
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/server/pm/OpSettingsInjector;->setShareUsers(Landroid/util/ArrayMap;)V

    .line 415
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Settings;
    .param p1, "x1"    # I

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I
    .locals 3
    .param p1, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 4225
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4226
    .local v0, "size":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4227
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4228
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4229
    add-int/lit16 v2, v1, 0x2710

    return v2

    .line 4226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4234
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x270f

    if-le v0, v1, :cond_2

    .line 4235
    const/4 v1, -0x1

    return v1

    .line 4238
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4239
    add-int/lit16 v1, v0, 0x2710

    return v1
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 944
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    if-eqz p2, :cond_2

    .line 946
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_0

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 951
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_0

    .line 952
    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v4, :cond_1

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 960
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 961
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 962
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 967
    :cond_2
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 968
    .local v0, "userIdPs":Ljava/lang/Object;
    if-nez p2, :cond_3

    .line 969
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 970
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    goto :goto_1

    .line 973
    :cond_3
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 974
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    .line 978
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 979
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v1, :cond_6

    .line 980
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_5

    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying restored IVI for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageSettings"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 986
    :cond_6
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 23
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    .line 3405
    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 3406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-virtual {v7, v1, v2, v0, v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v8

    .line 3407
    .local v8, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v9, "PackageSettings"

    if-eqz v0, :cond_0

    .line 3408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Queried "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " results: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :cond_0
    const/4 v0, 0x0

    .line 3411
    .local v0, "systemMatch":I
    const/4 v10, 0x0

    .line 3412
    .local v10, "thirdPartyMatch":I
    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 3413
    .local v6, "numMatches":I
    :goto_0
    const/4 v11, 0x1

    if-gt v6, v11, :cond_2

    .line 3414
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No potential matches found for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " while setting preferred "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3415
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3414
    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    return-void

    .line 3418
    :cond_2
    const/4 v12, 0x0

    .line 3419
    .local v12, "haveAct":Z
    const/4 v13, 0x0

    .line 3420
    .local v13, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/ComponentName;

    .line 3421
    .local v14, "set":[Landroid/content/ComponentName;
    const/4 v15, 0x0

    move/from16 v21, v0

    .end local v0    # "systemMatch":I
    .local v15, "i":I
    .local v21, "systemMatch":I
    :goto_1
    if-ge v15, v6, :cond_9

    .line 3422
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3423
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/ComponentName;

    move/from16 v22, v6

    .end local v6    # "numMatches":I
    .local v22, "numMatches":I
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v14, v15

    .line 3424
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    const-string v11, "/"

    const-string v7, "Result "

    if-nez v6, :cond_5

    .line 3425
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v6, v6, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v6, v10, :cond_4

    .line 3429
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v6, :cond_3

    .line 3430
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": non-system!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    :cond_3
    aget-object v13, v14, v15

    .line 3433
    goto/16 :goto_3

    .line 3425
    :cond_4
    move-object/from16 v17, v13

    goto :goto_2

    .line 3435
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v13

    .end local v13    # "haveNonSys":Landroid/content/ComponentName;
    .local v17, "haveNonSys":Landroid/content/ComponentName;
    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3436
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3437
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v6, :cond_6

    .line 3438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :cond_6
    const/4 v6, 0x1

    .line 3441
    .end local v12    # "haveAct":Z
    .local v6, "haveAct":Z
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v7, v7, Landroid/content/pm/ResolveInfo;->match:I

    move v12, v6

    move/from16 v21, v7

    .end local v21    # "systemMatch":I
    .local v7, "systemMatch":I
    goto :goto_2

    .line 3443
    .end local v6    # "haveAct":Z
    .end local v7    # "systemMatch":I
    .restart local v12    # "haveAct":Z
    .restart local v21    # "systemMatch":I
    :cond_7
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v6, :cond_8

    .line 3444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": skipped"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_8
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p1

    move-object/from16 v13, v17

    move/from16 v6, v22

    const/4 v11, 0x1

    goto/16 :goto_1

    .end local v17    # "haveNonSys":Landroid/content/ComponentName;
    .end local v22    # "numMatches":I
    .local v6, "numMatches":I
    .restart local v13    # "haveNonSys":Landroid/content/ComponentName;
    :cond_9
    move/from16 v22, v6

    move-object/from16 v17, v13

    .line 3448
    .end local v6    # "numMatches":I
    .end local v15    # "i":I
    .restart local v22    # "numMatches":I
    :goto_3
    if-eqz v13, :cond_a

    move/from16 v6, v21

    .end local v21    # "systemMatch":I
    .local v6, "systemMatch":I
    if-ge v10, v6, :cond_b

    .line 3453
    const/4 v13, 0x0

    goto :goto_4

    .line 3448
    .end local v6    # "systemMatch":I
    .restart local v21    # "systemMatch":I
    :cond_a
    move/from16 v6, v21

    .line 3455
    .end local v21    # "systemMatch":I
    .restart local v6    # "systemMatch":I
    :cond_b
    :goto_4
    if-eqz v12, :cond_14

    if-nez v13, :cond_14

    .line 3456
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    .line 3457
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3458
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3460
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3461
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3462
    .local v11, "cat":Ljava/lang/String;
    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3463
    .end local v11    # "cat":Ljava/lang/String;
    goto :goto_5

    .line 3465
    :cond_d
    const/high16 v0, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_e

    .line 3466
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3468
    :cond_e
    if-eqz v3, :cond_f

    .line 3469
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3471
    :cond_f
    if-eqz p6, :cond_10

    .line 3472
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v11

    invoke-virtual {v7, v0, v11}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3474
    :cond_10
    if-eqz v4, :cond_11

    .line 3475
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3477
    :cond_11
    if-eqz v5, :cond_12

    .line 3478
    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3480
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3482
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3485
    move-object/from16 v15, p4

    goto :goto_6

    .line 3483
    :catch_0
    move-exception v0

    .line 3484
    .local v0, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Malformed mimetype "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3480
    .end local v0    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_13
    move-object/from16 v15, p4

    .line 3487
    :goto_6
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v20, 0x1

    move-object v15, v0

    move-object/from16 v16, v7

    move/from16 v17, v6

    move-object/from16 v18, v14

    move-object/from16 v19, p4

    invoke-direct/range {v15 .. v20}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3488
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v11, p0

    move/from16 v15, p9

    invoke-virtual {v11, v15}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 3489
    .end local v0    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    goto :goto_8

    .line 3455
    :cond_14
    move-object/from16 v11, p0

    move/from16 v15, p9

    .line 3489
    if-nez v13, :cond_17

    .line 3490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3491
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v7, "No component "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3493
    const-string v7, " found setting preferred "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3495
    const-string v7, "; possible matches are "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    array-length v2, v14

    if-ge v7, v2, :cond_16

    .line 3497
    if-lez v7, :cond_15

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3498
    :cond_15
    aget-object v2, v14, v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p3

    goto :goto_7

    .line 3500
    .end local v7    # "i":I
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_8

    .line 3502
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; found third party match "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3502
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    :goto_8
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 30
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 3291
    move-object/from16 v0, p2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_0

    .line 3292
    const-string v1, "PackageSettings"

    const-string v2, "Processing preferred:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    new-instance v2, Landroid/util/LogPrinter;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v2, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3295
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3296
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0xc0000

    .line 3298
    .local v2, "flags":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3299
    const/4 v4, 0x0

    move v15, v2

    .end local v2    # "flags":I
    .local v4, "i":I
    .local v15, "flags":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 3300
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    .line 3301
    .local v2, "cat":Ljava/lang/String;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3302
    const/high16 v5, 0x10000

    or-int/2addr v15, v5

    goto :goto_1

    .line 3304
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3299
    .end local v2    # "cat":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3308
    .end local v4    # "i":I
    :cond_2
    const/4 v2, 0x1

    .line 3309
    .local v2, "doNonData":Z
    const/4 v4, 0x0

    .line 3311
    .local v4, "hasSchemes":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v14

    .line 3312
    .local v14, "dataSchemesCount":I
    const/4 v5, 0x0

    move/from16 v16, v4

    move v4, v2

    move v2, v5

    .local v2, "ischeme":I
    .local v4, "doNonData":Z
    .local v16, "hasSchemes":Z
    :goto_2
    if-ge v2, v14, :cond_b

    .line 3313
    const/4 v5, 0x1

    .line 3314
    .local v5, "doScheme":Z
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3315
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3316
    const/4 v6, 0x1

    move/from16 v16, v6

    .line 3318
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v12

    .line 3319
    .local v12, "dataSchemeSpecificPartsCount":I
    const/4 v6, 0x0

    move/from16 v17, v5

    move v11, v6

    .end local v5    # "doScheme":Z
    .local v11, "issp":I
    .local v17, "doScheme":Z
    :goto_3
    if-ge v11, v12, :cond_4

    .line 3320
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3321
    .local v10, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3322
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v18

    .line 3323
    .local v18, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3324
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3325
    .local v9, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3326
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v9

    move v8, v15

    move-object/from16 v21, v9

    .end local v9    # "finalIntent":Landroid/content/Intent;
    .local v21, "finalIntent":Landroid/content/Intent;
    move-object/from16 v9, p3

    move-object/from16 v22, v10

    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move-object v10, v13

    move/from16 v23, v11

    .end local v11    # "issp":I
    .local v23, "issp":I
    move-object/from16 v11, v18

    move/from16 v24, v12

    .end local v12    # "dataSchemeSpecificPartsCount":I
    .local v24, "dataSchemeSpecificPartsCount":I
    move-object/from16 v12, v19

    move-object v3, v13

    .end local v13    # "scheme":Ljava/lang/String;
    .local v3, "scheme":Ljava/lang/String;
    move-object/from16 v13, v20

    move/from16 v20, v14

    .end local v14    # "dataSchemesCount":I
    .local v20, "dataSchemesCount":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3328
    const/16 v17, 0x0

    .line 3319
    .end local v18    # "ssp":Landroid/os/PatternMatcher;
    .end local v21    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v11, v23, 0x1

    move-object v13, v3

    move/from16 v14, v20

    move/from16 v12, v24

    const/4 v3, 0x0

    .end local v23    # "issp":I
    .restart local v11    # "issp":I
    goto :goto_3

    .end local v3    # "scheme":Ljava/lang/String;
    .end local v20    # "dataSchemesCount":I
    .end local v24    # "dataSchemeSpecificPartsCount":I
    .restart local v12    # "dataSchemeSpecificPartsCount":I
    .restart local v13    # "scheme":Ljava/lang/String;
    .restart local v14    # "dataSchemesCount":I
    :cond_4
    move/from16 v23, v11

    move/from16 v24, v12

    move-object v3, v13

    move/from16 v20, v14

    .line 3330
    .end local v11    # "issp":I
    .end local v12    # "dataSchemeSpecificPartsCount":I
    .end local v13    # "scheme":Ljava/lang/String;
    .end local v14    # "dataSchemesCount":I
    .restart local v3    # "scheme":Ljava/lang/String;
    .restart local v20    # "dataSchemesCount":I
    .restart local v24    # "dataSchemeSpecificPartsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v14

    .line 3331
    .local v14, "dataAuthoritiesCount":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "iauth":I
    :goto_4
    if-ge v13, v14, :cond_9

    .line 3332
    const/4 v5, 0x1

    .line 3333
    .local v5, "doAuth":Z
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v18

    .line 3334
    .local v18, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v12

    .line 3335
    .local v12, "dataPathsCount":I
    const/4 v6, 0x0

    move v11, v6

    move/from16 v21, v17

    move/from16 v17, v5

    .end local v5    # "doAuth":Z
    .local v11, "ipath":I
    .local v17, "doAuth":Z
    .local v21, "doScheme":Z
    :goto_5
    if-ge v11, v12, :cond_6

    .line 3336
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3337
    .restart local v10    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3338
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3339
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3341
    :cond_5
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v22

    .line 3342
    .local v22, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3343
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3344
    .restart local v9    # "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3345
    const/16 v23, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v9

    move v8, v15

    move-object/from16 v25, v9

    .end local v9    # "finalIntent":Landroid/content/Intent;
    .local v25, "finalIntent":Landroid/content/Intent;
    move-object/from16 v9, p3

    move-object/from16 v26, v10

    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .local v26, "builder":Landroid/net/Uri$Builder;
    move-object v10, v3

    move/from16 v27, v11

    .end local v11    # "ipath":I
    .local v27, "ipath":I
    move-object/from16 v11, v23

    move/from16 v23, v12

    .end local v12    # "dataPathsCount":I
    .local v23, "dataPathsCount":I
    move-object/from16 v12, v18

    move/from16 v28, v13

    .end local v13    # "iauth":I
    .local v28, "iauth":I
    move-object/from16 v13, v22

    move/from16 v29, v14

    .end local v14    # "dataAuthoritiesCount":I
    .local v29, "dataAuthoritiesCount":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3347
    const/16 v19, 0x0

    move/from16 v21, v19

    move/from16 v17, v19

    .line 3335
    .end local v22    # "path":Landroid/os/PatternMatcher;
    .end local v25    # "finalIntent":Landroid/content/Intent;
    .end local v26    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v11, v27, 0x1

    move/from16 v12, v23

    move/from16 v13, v28

    move/from16 v14, v29

    .end local v27    # "ipath":I
    .restart local v11    # "ipath":I
    goto :goto_5

    .end local v23    # "dataPathsCount":I
    .end local v28    # "iauth":I
    .end local v29    # "dataAuthoritiesCount":I
    .restart local v12    # "dataPathsCount":I
    .restart local v13    # "iauth":I
    .restart local v14    # "dataAuthoritiesCount":I
    :cond_6
    move/from16 v27, v11

    move/from16 v23, v12

    move/from16 v28, v13

    move/from16 v29, v14

    const/16 v19, 0x0

    .line 3349
    .end local v11    # "ipath":I
    .end local v12    # "dataPathsCount":I
    .end local v13    # "iauth":I
    .end local v14    # "dataAuthoritiesCount":I
    .restart local v23    # "dataPathsCount":I
    .restart local v28    # "iauth":I
    .restart local v29    # "dataAuthoritiesCount":I
    if-eqz v17, :cond_8

    .line 3350
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3351
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3352
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3353
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3355
    :cond_7
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3356
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3357
    const/4 v11, 0x0

    const/16 v22, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v13

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v3

    move-object/from16 v12, v18

    move-object/from16 v25, v13

    .end local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v25    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v13, v22

    move-object/from16 v22, v14

    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3359
    const/4 v5, 0x0

    move/from16 v17, v5

    .end local v21    # "doScheme":Z
    .local v5, "doScheme":Z
    goto :goto_6

    .line 3349
    .end local v5    # "doScheme":Z
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    .end local v25    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "doScheme":Z
    :cond_8
    move/from16 v17, v21

    .line 3331
    .end local v18    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v21    # "doScheme":Z
    .end local v23    # "dataPathsCount":I
    .local v17, "doScheme":Z
    :goto_6
    add-int/lit8 v13, v28, 0x1

    move/from16 v14, v29

    .end local v28    # "iauth":I
    .local v13, "iauth":I
    goto/16 :goto_4

    .end local v29    # "dataAuthoritiesCount":I
    .local v14, "dataAuthoritiesCount":I
    :cond_9
    move/from16 v28, v13

    move/from16 v29, v14

    const/16 v19, 0x0

    .line 3362
    .end local v13    # "iauth":I
    .end local v14    # "dataAuthoritiesCount":I
    .restart local v29    # "dataAuthoritiesCount":I
    if-eqz v17, :cond_a

    .line 3363
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3364
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3365
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3366
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3367
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v13

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v3

    move-object/from16 v21, v13

    .end local v13    # "finalIntent":Landroid/content/Intent;
    .local v21, "finalIntent":Landroid/content/Intent;
    move-object/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .local v18, "builder":Landroid/net/Uri$Builder;
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3370
    .end local v18    # "builder":Landroid/net/Uri$Builder;
    .end local v21    # "finalIntent":Landroid/content/Intent;
    :cond_a
    const/4 v4, 0x0

    .line 3312
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v17    # "doScheme":Z
    .end local v24    # "dataSchemeSpecificPartsCount":I
    .end local v29    # "dataAuthoritiesCount":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v19

    move/from16 v14, v20

    goto/16 :goto_2

    .end local v20    # "dataSchemesCount":I
    .local v14, "dataSchemesCount":I
    :cond_b
    move/from16 v20, v14

    .line 3373
    .end local v2    # "ischeme":I
    .end local v14    # "dataSchemesCount":I
    .restart local v20    # "dataSchemesCount":I
    const/4 v2, 0x0

    move/from16 v17, v4

    .end local v4    # "doNonData":Z
    .local v2, "idata":I
    .local v17, "doNonData":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 3374
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    .line 3375
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 3376
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3377
    .local v4, "builder":Landroid/net/Uri$Builder;
    const/4 v5, 0x0

    move v14, v5

    .local v14, "ischeme":I
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    if-ge v14, v5, :cond_d

    .line 3378
    invoke-virtual {v0, v14}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3379
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 3380
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v5

    .line 3381
    .local v12, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3382
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v12, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3383
    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v12

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v13

    move-object/from16 v21, v12

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13    # "scheme":Ljava/lang/String;
    .local v18, "scheme":Ljava/lang/String;
    move-object/from16 v13, v19

    move/from16 v19, v14

    .end local v14    # "ischeme":I
    .local v19, "ischeme":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_9

    .line 3379
    .end local v18    # "scheme":Ljava/lang/String;
    .end local v19    # "ischeme":I
    .end local v21    # "finalIntent":Landroid/content/Intent;
    .restart local v13    # "scheme":Ljava/lang/String;
    .restart local v14    # "ischeme":I
    :cond_c
    move-object/from16 v18, v13

    move/from16 v19, v14

    .line 3377
    .end local v13    # "scheme":Ljava/lang/String;
    .end local v14    # "ischeme":I
    .restart local v19    # "ischeme":I
    :goto_9
    add-int/lit8 v14, v19, 0x1

    .end local v19    # "ischeme":I
    .restart local v14    # "ischeme":I
    goto :goto_8

    :cond_d
    move/from16 v19, v14

    .line 3387
    .end local v4    # "builder":Landroid/net/Uri$Builder;
    .end local v14    # "ischeme":I
    goto :goto_a

    .line 3388
    :cond_e
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3389
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3390
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v4

    move v8, v15

    move-object/from16 v9, p3

    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3393
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :goto_a
    const/16 v17, 0x0

    .line 3373
    .end local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3396
    .end local v2    # "idata":I
    :cond_f
    if-eqz v17, :cond_10

    .line 3397
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v15

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3400
    :cond_10
    return-void
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLjava/lang/String;Ljava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .locals 43
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "originalPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realPkgName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p8, "primaryCpuAbi"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p10, "versionCode"    # J
    .param p12, "pkgFlags"    # I
    .param p13, "pkgPrivateFlags"    # I
    .param p14, "installUser"    # Landroid/os/UserHandle;
    .param p15, "allowInstall"    # Z
    .param p16, "instantApp"    # Z
    .param p17, "virtualPreload"    # Z
    .param p18, "parentPkgName"    # Ljava/lang/String;
    .param p20, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p21, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p22, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 610
    .local p19, "childPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p4

    move/from16 v9, p12

    move-object/from16 v10, p19

    if-eqz v13, :cond_2

    .line 611
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is adopting original package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v0, v13, v14}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    .line 614
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    nop

    .line 615
    if-eqz v10, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 616
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 617
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 618
    move-object/from16 v5, p18

    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    .line 619
    iput v9, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 620
    move/from16 v4, p13

    iput v4, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 621
    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 622
    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 623
    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 626
    new-instance v8, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v8}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 627
    move-wide/from16 v8, p10

    iput-wide v8, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 628
    move-object/from16 v15, p21

    iput-object v15, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 629
    move-object/from16 v15, p22

    iput-object v15, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 631
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    move-object/from16 v9, p20

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_a

    .line 633
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_2
    move-object/from16 v7, p5

    move-object/from16 v6, p7

    move-object/from16 v3, p8

    move-wide/from16 v8, p10

    move/from16 v4, p13

    move-object/from16 v5, p18

    move-object/from16 v15, p22

    new-instance v18, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v0, v18

    const/4 v1, 0x0

    move-object v8, v1

    const/4 v1, 0x0

    move v15, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move-object/from16 v16, p21

    move-object/from16 v17, p22

    invoke-direct/range {v0 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 638
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 639
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 641
    and-int/lit8 v2, p12, 0x1

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-nez v2, :cond_b

    .line 647
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 648
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p14, :cond_3

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v4

    .line 649
    .local v5, "installUserId":I
    :goto_1
    if-eqz v2, :cond_a

    if-eqz p15, :cond_a

    .line 650
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 657
    .local v7, "user":Landroid/content/pm/UserInfo;
    if-eqz p14, :cond_7

    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 659
    move-object/from16 v9, p20

    invoke-static {v9, v8}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 657
    :cond_4
    move-object/from16 v9, p20

    .line 659
    :goto_3
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v8, :cond_6

    :cond_5
    goto :goto_4

    :cond_6
    move v8, v4

    goto :goto_5

    .line 657
    :cond_7
    move-object/from16 v9, p20

    .line 659
    :goto_4
    const/4 v8, 0x1

    .line 664
    .local v8, "installed":Z
    :goto_5
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v3, :cond_8

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 665
    invoke-static {v10}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 666
    const/4 v8, 0x0

    .line 669
    :cond_8
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v10

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v19, v0

    move/from16 v24, v8

    move/from16 v34, p16

    move/from16 v35, p17

    invoke-virtual/range {v19 .. v42}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    .line 688
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "installed":Z
    goto :goto_2

    .line 650
    :cond_9
    move-object/from16 v9, p20

    goto :goto_6

    .line 649
    :cond_a
    move-object/from16 v9, p20

    .line 690
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "installUserId":I
    :goto_6
    goto :goto_8

    .line 694
    :cond_b
    move-object/from16 v9, p20

    if-eqz p15, :cond_d

    .line 695
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 696
    .restart local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 697
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v3, :cond_c

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 698
    invoke-static {v7}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 699
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 705
    :cond_c
    invoke-static {v0, v6}, Lcom/android/server/pm/OpShieldGuestInjector;->installNotInGuest(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/UserInfo;)V

    .line 707
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    goto :goto_7

    .line 710
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    .line 711
    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v2, p2

    goto :goto_a

    .line 714
    :cond_e
    move-object/from16 v2, p2

    if-eqz v2, :cond_f

    .line 719
    new-instance v3, Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 720
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 722
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 724
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v3

    .line 725
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_f

    .line 726
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 727
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 728
    .local v6, "userId":I
    nop

    .line 729
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 728
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 730
    nop

    .line 731
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 730
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 732
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    goto :goto_9

    .line 737
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f
    :goto_a
    return-object v0
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 5076
    if-nez p1, :cond_0

    .line 5077
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 5080
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5081
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5082
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    const-string v1, ":"

    if-eqz v0, :cond_1

    .line 5083
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5085
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5086
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 5087
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5088
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5089
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v2, v2, v0

    if-eqz v2, :cond_2

    .line 5090
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5086
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5094
    .end local v0    # "i":I
    :cond_3
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5096
    :goto_1
    return-void
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4422
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 1351
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 1339
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1340
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 1346
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1347
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .locals 3
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4435
    .local v0, "id":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4435
    return-object v2

    .line 4439
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4436
    :catch_0
    move-exception v2

    .line 4439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4440
    nop

    .line 4441
    const/4 v2, 0x0

    return-object v2
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "userId"    # I

    .line 915
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 5124
    const/4 v0, 0x0

    .line 5125
    .local v0, "flagsString":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz p1, :cond_2

    .line 5126
    if-nez v0, :cond_0

    .line 5127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 5128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5129
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5131
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 5132
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p1, v2

    .line 5133
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5134
    if-eqz p1, :cond_1

    .line 5135
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5138
    .end local v1    # "flag":I
    :cond_1
    goto :goto_0

    .line 5139
    :cond_2
    if-eqz v0, :cond_3

    .line 5140
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5143
    :cond_3
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .line 4460
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 4462
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4463
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 4464
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4465
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4461
    .end local v1    # "mask":I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4468
    .end local v0    # "i":I
    :cond_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4469
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1838
    const/4 v0, 0x0

    .line 1840
    .local v0, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1842
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1844
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 1845
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1847
    goto :goto_0

    .line 1849
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1850
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1851
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1852
    .local v4, "componentName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1853
    if-nez v0, :cond_3

    .line 1854
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 1856
    :cond_3
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1858
    .end local v4    # "componentName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 1860
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1467
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1469
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1470
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1471
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1472
    goto :goto_0

    .line 1474
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1475
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1476
    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1477
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1478
    .end local v3    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_1

    .line 1479
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1481
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1482
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1484
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1485
    :cond_4
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3509
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3510
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3511
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3513
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 3514
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 3515
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 3516
    goto :goto_0

    .line 3519
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3520
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_4

    .line 3521
    new-instance v4, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v4, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3522
    .local v4, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v6, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 3523
    iget-object v5, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 3526
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3528
    invoke-virtual {v7}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3526
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3531
    .end local v4    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :goto_1
    goto :goto_2

    .line 3532
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3533
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3532
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3534
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3536
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 3537
    :cond_5
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3966
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3968
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 3969
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 3970
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 3971
    goto :goto_0

    .line 3974
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3975
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 3976
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3977
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 3978
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 3980
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3982
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3980
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3984
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 3985
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3986
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3985
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3988
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3989
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 3990
    :cond_5
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 38
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3541
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3542
    .local v14, "name":Ljava/lang/String;
    const-string/jumbo v0, "realName"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3543
    .local v23, "realName":Ljava/lang/String;
    const-string v0, "codePath"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3544
    .local v15, "codePathStr":Ljava/lang/String;
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3546
    .local v0, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v5, "requiredCpuAbi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3547
    .local v24, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v5, "nativeLibraryPath"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3549
    .local v25, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v5, "parentPackageName"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3551
    .local v26, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v5, "primaryCpuAbi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3552
    .local v5, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "secondaryCpuAbi"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3553
    .local v27, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string v6, "cpuAbiOverride"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3555
    .local v28, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v5, :cond_0

    if-eqz v24, :cond_0

    .line 3556
    move-object/from16 v5, v24

    move-object/from16 v29, v5

    goto :goto_0

    .line 3559
    :cond_0
    move-object/from16 v29, v5

    .end local v5    # "primaryCpuAbiStr":Ljava/lang/String;
    .local v29, "primaryCpuAbiStr":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 3560
    move-object v0, v15

    move-object v13, v0

    goto :goto_1

    .line 3559
    :cond_1
    move-object v13, v0

    .line 3562
    .end local v0    # "resourcePathStr":Ljava/lang/String;
    .local v13, "resourcePathStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "version"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3563
    .local v30, "version":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 3564
    .local v5, "versionCode":J
    if-eqz v30, :cond_2

    .line 3566
    :try_start_0
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v5, v7

    .line 3568
    move-wide/from16 v31, v5

    goto :goto_2

    .line 3567
    :catch_0
    move-exception v0

    .line 3571
    :cond_2
    move-wide/from16 v31, v5

    .end local v5    # "versionCode":J
    .local v31, "versionCode":J
    :goto_2
    const/4 v0, 0x0

    .line 3572
    .local v0, "pkgFlags":I
    const/4 v5, 0x0

    .line 3573
    .local v5, "pkgPrivateFlags":I
    const/4 v12, 0x1

    or-int/lit8 v33, v0, 0x1

    .line 3574
    .end local v0    # "pkgFlags":I
    .local v33, "pkgFlags":I
    invoke-static {v15}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3575
    or-int/lit8 v0, v5, 0x8

    move/from16 v34, v0

    .end local v5    # "pkgPrivateFlags":I
    .local v0, "pkgPrivateFlags":I
    goto :goto_3

    .line 3574
    .end local v0    # "pkgPrivateFlags":I
    .restart local v5    # "pkgPrivateFlags":I
    :cond_3
    move/from16 v34, v5

    .line 3577
    .end local v5    # "pkgPrivateFlags":I
    .local v34, "pkgPrivateFlags":I
    :goto_3
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    move-object v5, v0

    new-instance v6, Ljava/io/File;

    move-object v8, v6

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object v9, v6

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v6, v14

    move-object/from16 v7, v23

    move-object/from16 v10, v25

    move-object/from16 v11, v29

    move-object/from16 v12, v27

    move-object/from16 v35, v13

    .end local v13    # "resourcePathStr":Ljava/lang/String;
    .local v35, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v13, v28

    move-object/from16 v36, v14

    move-object/from16 v37, v15

    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "codePathStr":Ljava/lang/String;
    .local v36, "name":Ljava/lang/String;
    .local v37, "codePathStr":Ljava/lang/String;
    move-wide/from16 v14, v31

    move/from16 v16, v33

    move/from16 v17, v34

    move-object/from16 v18, v26

    invoke-direct/range {v5 .. v22}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 3581
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v0, "ft"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3582
    .local v6, "timeStampStr":Ljava/lang/String;
    const/16 v7, 0x10

    if-eqz v6, :cond_4

    .line 3584
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    .line 3585
    .local v8, "timeStamp":J
    invoke-virtual {v5, v8, v9}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "timeStamp":J
    goto :goto_4

    .line 3586
    :catch_1
    move-exception v0

    .line 3587
    :goto_4
    goto :goto_5

    .line 3589
    :cond_4
    const-string/jumbo v0, "ts"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3590
    if-eqz v6, :cond_5

    .line 3592
    :try_start_2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3593
    .restart local v8    # "timeStamp":J
    invoke-virtual {v5, v8, v9}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3595
    .end local v8    # "timeStamp":J
    goto :goto_5

    .line 3594
    :catch_2
    move-exception v0

    .line 3598
    :cond_5
    :goto_5
    const-string/jumbo v0, "it"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3599
    if-eqz v6, :cond_6

    .line 3601
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3603
    goto :goto_6

    .line 3602
    :catch_3
    move-exception v0

    .line 3605
    :cond_6
    :goto_6
    const-string/jumbo v0, "ut"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3606
    if-eqz v6, :cond_7

    .line 3608
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3610
    goto :goto_7

    .line 3609
    :catch_4
    move-exception v0

    .line 3612
    :cond_7
    :goto_7
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3613
    .local v0, "idStr":Ljava/lang/String;
    const/4 v7, 0x0

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_8

    :cond_8
    move v8, v7

    :goto_8
    iput v8, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3614
    iget v8, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v8, :cond_a

    .line 3615
    const-string/jumbo v8, "sharedUserId"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3616
    .local v8, "sharedIdStr":Ljava/lang/String;
    if-eqz v8, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_9
    iput v7, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3619
    .end local v8    # "sharedIdStr":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 3621
    .local v7, "outerDepth":I
    :cond_b
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    const/4 v10, 0x1

    .local v9, "type":I
    if-eq v8, v10, :cond_12

    const/4 v8, 0x3

    if-ne v9, v8, :cond_c

    .line 3622
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v7, :cond_12

    .line 3623
    :cond_c
    if-eq v9, v8, :cond_b

    const/4 v8, 0x4

    if-ne v9, v8, :cond_d

    .line 3624
    goto :goto_9

    .line 3627
    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "perms"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3628
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_9

    .line 3629
    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "child-package"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 3630
    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3631
    .local v8, "childPackageName":Ljava/lang/String;
    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v11, :cond_f

    .line 3632
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3634
    :cond_f
    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3635
    .end local v8    # "childPackageName":Ljava/lang/String;
    goto :goto_9

    :cond_10
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "uses-static-lib"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3636
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_9

    .line 3638
    :cond_11
    const/4 v8, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <updated-package>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3639
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3638
    invoke-static {v8, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3640
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 3644
    :cond_12
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v4, v36

    .end local v36    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3645
    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1489
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1490
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1494
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3994
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3996
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 3997
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 3998
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 3999
    goto :goto_0

    .line 4002
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4003
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 4004
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4005
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 4006
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 4008
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4010
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4008
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4012
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 4013
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4014
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4013
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4016
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4017
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 4018
    :cond_5
    return-void
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 82
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3652
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    const-string v11, " has bad userId "

    const-string/jumbo v12, "name"

    const-string v10, " at "

    const-string v7, "Error in package manager settings: package "

    const-string/jumbo v5, "true"

    const/4 v1, 0x0

    .line 3653
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3654
    .local v2, "realName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3655
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3656
    .local v4, "sharedIdStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3657
    .local v6, "codePathStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3658
    .local v8, "resourcePathStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3659
    .local v9, "legacyCpuAbiString":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3660
    .local v16, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3661
    .local v17, "primaryCpuAbiString":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3662
    .local v18, "secondaryCpuAbiString":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3663
    .local v19, "cpuAbiOverrideString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3664
    .local v20, "systemStr":Ljava/lang/String;
    const/16 v21, 0x0

    .line 3665
    .local v21, "installerPackageName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3666
    .local v22, "isOrphaned":Ljava/lang/String;
    const/16 v23, 0x0

    .line 3667
    .local v23, "volumeUuid":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3668
    .local v24, "categoryHintString":Ljava/lang/String;
    const/16 v25, 0x0

    .line 3669
    .local v25, "updateAvailable":Ljava/lang/String;
    const/16 v26, -0x1

    .line 3670
    .local v26, "categoryHint":I
    const/4 v15, 0x0

    .line 3671
    .local v15, "uidError":Ljava/lang/String;
    const/16 v27, 0x0

    .line 3672
    .local v27, "pkgFlags":I
    const/16 v28, 0x0

    .line 3673
    .local v28, "pkgPrivateFlags":I
    const-wide/16 v29, 0x0

    .line 3674
    .local v29, "timeStamp":J
    const-wide/16 v31, 0x0

    .line 3675
    .local v31, "firstInstallTime":J
    const-wide/16 v33, 0x0

    .line 3676
    .local v33, "lastUpdateTime":J
    const/16 v35, 0x0

    .line 3677
    .local v35, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const/16 v36, 0x0

    .line 3678
    .local v36, "version":Ljava/lang/String;
    const-wide/16 v37, 0x0

    .line 3681
    .local v37, "versionCode":J
    const/4 v14, 0x0

    :try_start_0
    invoke-interface {v13, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3682
    const-string/jumbo v0, "realName"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 3683
    const-string/jumbo v0, "userId"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3a

    move-object v3, v0

    .line 3684
    :try_start_1
    const-string/jumbo v0, "uidError"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_39

    move-object/from16 v40, v0

    .line 3685
    .end local v15    # "uidError":Ljava/lang/String;
    .local v40, "uidError":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_38

    move-object v4, v0

    .line 3686
    :try_start_3
    const-string v0, "codePath"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_37

    move-object v6, v0

    .line 3687
    :try_start_4
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_36

    move-object/from16 v41, v0

    .line 3689
    .end local v8    # "resourcePathStr":Ljava/lang/String;
    .local v41, "resourcePathStr":Ljava/lang/String;
    :try_start_5
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_35

    move-object/from16 v42, v0

    .line 3691
    .end local v9    # "legacyCpuAbiString":Ljava/lang/String;
    .local v42, "legacyCpuAbiString":Ljava/lang/String;
    :try_start_6
    const-string/jumbo v0, "parentPackageName"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3693
    .local v15, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v0, "nativeLibraryPath"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_34

    move-object v9, v6

    .end local v6    # "codePathStr":Ljava/lang/String;
    .local v9, "codePathStr":Ljava/lang/String;
    move-object v6, v0

    .line 3694
    .end local v16    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :try_start_7
    const-string/jumbo v0, "primaryCpuAbi"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 3695
    const-string/jumbo v0, "secondaryCpuAbi"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_33

    .line 3696
    .end local v18    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    :try_start_8
    const-string v0, "cpuAbiOverride"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_32

    move-object/from16 v43, v9

    .end local v9    # "codePathStr":Ljava/lang/String;
    .local v43, "codePathStr":Ljava/lang/String;
    move-object v9, v0

    .line 3697
    .end local v19    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    :try_start_9
    const-string/jumbo v0, "updateAvailable"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_31

    move-object/from16 v25, v0

    .line 3699
    if-nez v17, :cond_0

    if-eqz v42, :cond_0

    .line 3700
    move-object/from16 v0, v42

    move-object/from16 v19, v0

    .end local v17    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "primaryCpuAbiString":Ljava/lang/String;
    goto :goto_0

    .line 3703
    .end local v0    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v17    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v17

    .end local v17    # "primaryCpuAbiString":Ljava/lang/String;
    .local v19, "primaryCpuAbiString":Ljava/lang/String;
    :goto_0
    :try_start_a
    const-string/jumbo v0, "version"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_30

    move-object/from16 v36, v0

    .line 3704
    if-eqz v36, :cond_1

    .line 3706
    :try_start_b
    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0

    .line 3708
    .end local v37    # "versionCode":J
    .local v16, "versionCode":J
    move-wide/from16 v37, v16

    goto :goto_1

    .line 3707
    .end local v16    # "versionCode":J
    .restart local v37    # "versionCode":J
    :catch_0
    move-exception v0

    .line 3710
    :cond_1
    :goto_1
    :try_start_c
    const-string v0, "installer"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 3711
    const-string/jumbo v0, "isOrphaned"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 3712
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 3713
    const-string v0, "categoryHint"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_30

    move-object/from16 v24, v0

    .line 3714
    if-eqz v24, :cond_2

    .line 3716
    :try_start_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1

    move/from16 v26, v0

    .line 3718
    goto :goto_2

    .line 3717
    :catch_1
    move-exception v0

    .line 3721
    :cond_2
    :goto_2
    :try_start_e
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_30

    move-object/from16 v20, v0

    .line 3722
    if-eqz v20, :cond_4

    .line 3724
    :try_start_f
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_2

    move/from16 v27, v0

    .line 3726
    goto :goto_3

    .line 3725
    :catch_2
    move-exception v0

    .line 3727
    :goto_3
    :try_start_10
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_4

    move-object/from16 v16, v0

    .line 3728
    .end local v20    # "systemStr":Ljava/lang/String;
    .local v16, "systemStr":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 3730
    :try_start_11
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_3

    .line 3732
    .end local v28    # "pkgPrivateFlags":I
    .local v0, "pkgPrivateFlags":I
    move/from16 v28, v0

    move-object/from16 v20, v16

    goto/16 :goto_6

    .line 3731
    .end local v0    # "pkgPrivateFlags":I
    .restart local v28    # "pkgPrivateFlags":I
    :catch_3
    move-exception v0

    .line 3767
    :cond_3
    move-object/from16 v20, v16

    goto/16 :goto_6

    .line 3859
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v16    # "systemStr":Ljava/lang/String;
    .restart local v20    # "systemStr":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object/from16 v68, v6

    move-object v14, v10

    move-object/from16 v78, v12

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move-object/from16 v6, v43

    move-object v5, v1

    move-object/from16 v30, v2

    move-object v4, v3

    move-object v3, v11

    const/4 v11, 0x5

    move-object/from16 v1, p0

    goto/16 :goto_15

    .line 3736
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    :cond_4
    :try_start_12
    const-string v0, "flags"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_30

    move-object/from16 v20, v0

    .line 3737
    if-eqz v20, :cond_8

    .line 3739
    :try_start_13
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_5

    move/from16 v27, v0

    .line 3741
    goto :goto_4

    .line 3740
    :catch_5
    move-exception v0

    .line 3742
    :goto_4
    :try_start_14
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v0, v27, v0

    if-eqz v0, :cond_5

    .line 3743
    or-int/lit8 v28, v28, 0x1

    .line 3745
    :cond_5
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v0, v27, v0

    if-eqz v0, :cond_6

    .line 3746
    or-int/lit8 v0, v28, 0x2

    move/from16 v28, v0

    .line 3748
    :cond_6
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v0, v27, v0

    if-eqz v0, :cond_7

    .line 3749
    or-int/lit8 v0, v28, 0x8

    move/from16 v28, v0

    .line 3751
    :cond_7
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_4

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v27, v0

    move/from16 v27, v0

    .end local v27    # "pkgFlags":I
    .local v0, "pkgFlags":I
    goto :goto_6

    .line 3756
    .end local v0    # "pkgFlags":I
    .restart local v27    # "pkgFlags":I
    :cond_8
    :try_start_15
    const-string/jumbo v0, "system"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_30

    move-object/from16 v16, v0

    .line 3757
    .end local v20    # "systemStr":Ljava/lang/String;
    .restart local v16    # "systemStr":Ljava/lang/String;
    move-object/from16 v14, v16

    .end local v16    # "systemStr":Ljava/lang/String;
    .local v14, "systemStr":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 3758
    :try_start_16
    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_6

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    .line 3759
    :cond_9
    const/4 v0, 0x0

    :goto_5
    or-int v0, v27, v0

    move/from16 v27, v0

    move-object/from16 v20, v14

    .end local v27    # "pkgFlags":I
    .restart local v0    # "pkgFlags":I
    goto :goto_6

    .line 3859
    .end local v0    # "pkgFlags":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v27    # "pkgFlags":I
    :catch_6
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object/from16 v68, v6

    move-object/from16 v78, v12

    move-object/from16 v20, v14

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move-object/from16 v6, v43

    move-object v5, v1

    move-object/from16 v30, v2

    move-object v4, v3

    move-object v14, v10

    move-object v3, v11

    const/4 v11, 0x5

    move-object/from16 v1, p0

    goto/16 :goto_15

    .line 3763
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    :cond_a
    or-int/lit8 v0, v27, 0x1

    move/from16 v27, v0

    move-object/from16 v20, v14

    .line 3767
    .end local v14    # "systemStr":Ljava/lang/String;
    .restart local v20    # "systemStr":Ljava/lang/String;
    :goto_6
    :try_start_17
    const-string v0, "ft"

    const/4 v14, 0x0

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_30

    move-object v14, v0

    .line 3768
    .local v14, "timeStampStr":Ljava/lang/String;
    move-object/from16 v45, v5

    const/16 v5, 0x10

    if-eqz v14, :cond_b

    .line 3770
    :try_start_18
    invoke-static {v14, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_7

    move-wide/from16 v29, v16

    .line 3772
    :goto_7
    move-wide/from16 v62, v29

    goto :goto_8

    .line 3771
    :catch_7
    move-exception v0

    goto :goto_7

    .line 3774
    :cond_b
    :try_start_19
    const-string/jumbo v0, "ts"

    const/4 v5, 0x0

    invoke-interface {v13, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_2f

    move-object v14, v0

    .line 3775
    if-eqz v14, :cond_c

    .line 3777
    :try_start_1a
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_8

    move-wide/from16 v29, v17

    .line 3779
    move-wide/from16 v62, v29

    goto :goto_8

    .line 3778
    :catch_8
    move-exception v0

    .line 3782
    :cond_c
    move-wide/from16 v62, v29

    .end local v29    # "timeStamp":J
    .local v62, "timeStamp":J
    :goto_8
    :try_start_1b
    const-string/jumbo v0, "it"

    const/4 v5, 0x0

    invoke-interface {v13, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_2e

    move-object v5, v0

    .line 3783
    .end local v14    # "timeStampStr":Ljava/lang/String;
    .local v5, "timeStampStr":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 3785
    const/16 v14, 0x10

    :try_start_1c
    invoke-static {v5, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_9

    move-wide/from16 v31, v17

    .line 3787
    move-wide/from16 v64, v31

    goto :goto_9

    .line 3786
    :catch_9
    move-exception v0

    .line 3789
    :cond_d
    move-wide/from16 v64, v31

    .end local v31    # "firstInstallTime":J
    .local v64, "firstInstallTime":J
    :goto_9
    :try_start_1d
    const-string/jumbo v0, "ut"

    const/4 v14, 0x0

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_2d

    move-object v5, v0

    .line 3790
    if-eqz v5, :cond_e

    .line 3792
    const/16 v14, 0x10

    :try_start_1e
    invoke-static {v5, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_a

    move-wide/from16 v33, v16

    .line 3794
    move-wide/from16 v66, v33

    goto :goto_a

    .line 3793
    :catch_a
    move-exception v0

    .line 3796
    :cond_e
    move-wide/from16 v66, v33

    .end local v33    # "lastUpdateTime":J
    .local v66, "lastUpdateTime":J
    :goto_a
    :try_start_1f
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_2c

    const-string v14, "PackageManager"

    if-eqz v0, :cond_f

    .line 3797
    :try_start_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v5

    .end local v5    # "timeStampStr":Ljava/lang/String;
    .local v29, "timeStampStr":Ljava/lang/String;
    const-string v5, "Reading package: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sharedUserId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3796
    .end local v29    # "timeStampStr":Ljava/lang/String;
    .restart local v5    # "timeStampStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v29, v5

    .line 3799
    .end local v5    # "timeStampStr":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    :goto_b
    if-eqz v3, :cond_10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 3859
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v29    # "timeStampStr":Ljava/lang/String;
    :catch_b
    move-exception v0

    move-object v5, v1

    move-object/from16 v30, v2

    move-object/from16 v73, v4

    move-object/from16 v68, v6

    move-object v14, v10

    move-object/from16 v78, v12

    move-object/from16 v6, v43

    move-object/from16 v75, v45

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    const/4 v11, 0x5

    goto/16 :goto_15

    .line 3799
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    :cond_10
    const/4 v0, 0x0

    .line 3800
    .local v0, "userId":I
    :goto_c
    if-eqz v4, :cond_11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_b

    goto :goto_d

    :cond_11
    const/4 v5, 0x0

    .line 3801
    .local v5, "sharedUserId":I
    :goto_d
    if-nez v41, :cond_12

    .line 3802
    move-object/from16 v16, v43

    move-object/from16 v68, v6

    move-object/from16 v6, v16

    .end local v41    # "resourcePathStr":Ljava/lang/String;
    .local v16, "resourcePathStr":Ljava/lang/String;
    goto :goto_e

    .line 3801
    .end local v16    # "resourcePathStr":Ljava/lang/String;
    .restart local v41    # "resourcePathStr":Ljava/lang/String;
    :cond_12
    move-object/from16 v68, v6

    move-object/from16 v6, v41

    .line 3804
    .end local v41    # "resourcePathStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .local v68, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :goto_e
    if-eqz v2, :cond_13

    .line 3805
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_c

    move-object/from16 v2, v16

    move-object/from16 v30, v2

    goto :goto_f

    .line 3859
    .end local v0    # "userId":I
    .end local v5    # "sharedUserId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v29    # "timeStampStr":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-object v5, v1

    move-object/from16 v30, v2

    move-object/from16 v73, v4

    move-object/from16 v41, v6

    move-object v14, v10

    move-object/from16 v78, v12

    move-object/from16 v6, v43

    move-object/from16 v75, v45

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    const/4 v11, 0x5

    goto/16 :goto_15

    .line 3804
    .restart local v0    # "userId":I
    .restart local v5    # "sharedUserId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    :cond_13
    move-object/from16 v30, v2

    .line 3807
    .end local v2    # "realName":Ljava/lang/String;
    .local v30, "realName":Ljava/lang/String;
    :goto_f
    if-nez v1, :cond_14

    .line 3808
    :try_start_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3810
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_e

    .line 3808
    const/4 v14, 0x5

    :try_start_23
    invoke-static {v14, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_d

    move-object v5, v1

    move-object/from16 v73, v4

    move-object/from16 v81, v6

    move-object/from16 v77, v10

    move-object/from16 v78, v12

    move-object/from16 v75, v45

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-wide/from16 v31, v66

    move-object/from16 v6, v68

    const/4 v2, 0x5

    move-object/from16 v1, p0

    move-object v4, v3

    goto/16 :goto_13

    .line 3859
    .end local v0    # "userId":I
    .end local v5    # "sharedUserId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v29    # "timeStampStr":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object v5, v1

    move-object/from16 v73, v4

    move-object/from16 v41, v6

    move-object/from16 v78, v12

    move-object/from16 v6, v43

    move-object/from16 v75, v45

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    move v11, v14

    move-object v14, v10

    goto/16 :goto_15

    :catch_e
    move-exception v0

    move-object v5, v1

    move-object/from16 v73, v4

    move-object/from16 v41, v6

    move-object v14, v10

    move-object/from16 v78, v12

    move-object/from16 v6, v43

    move-object/from16 v75, v45

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    const/4 v11, 0x5

    goto/16 :goto_15

    .line 3811
    .restart local v0    # "userId":I
    .restart local v5    # "sharedUserId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    :cond_14
    move-object/from16 v2, v43

    .end local v43    # "codePathStr":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    if-nez v2, :cond_15

    .line 3812
    :try_start_24
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_11

    move-object/from16 v43, v3

    .end local v3    # "idStr":Ljava/lang/String;
    .local v43, "idStr":Ljava/lang/String;
    :try_start_25
    const-string v3, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3814
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_10

    .line 3812
    const/4 v14, 0x5

    :try_start_26
    invoke-static {v14, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_f

    move-object v5, v1

    move-object/from16 v73, v4

    move-object/from16 v81, v6

    move-object/from16 v77, v10

    move-object/from16 v78, v12

    move-object/from16 v4, v43

    move-object/from16 v75, v45

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-wide/from16 v31, v66

    move-object/from16 v6, v68

    move-object/from16 v1, p0

    move-object/from16 v43, v2

    move v2, v14

    goto/16 :goto_13

    .line 3859
    .end local v0    # "userId":I
    .end local v5    # "sharedUserId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v29    # "timeStampStr":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object v5, v1

    move-object/from16 v73, v4

    move-object/from16 v41, v6

    move-object v3, v11

    move-object/from16 v78, v12

    move v11, v14

    move-object/from16 v4, v43

    move-object/from16 v75, v45

    move-object/from16 v1, p0

    move-object v6, v2

    move-object v14, v10

    goto/16 :goto_15

    :catch_10
    move-exception v0

    move-object v5, v1

    move-object/from16 v73, v4

    move-object/from16 v41, v6

    move-object v14, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object/from16 v4, v43

    move-object/from16 v75, v45

    const/4 v11, 0x5

    move-object/from16 v1, p0

    move-object v6, v2

    goto/16 :goto_15

    .end local v43    # "idStr":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    :catch_11
    move-exception v0

    move-object/from16 v43, v3

    move-object v5, v1

    move-object/from16 v73, v4

    move-object/from16 v41, v6

    move-object v14, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object/from16 v4, v43

    move-object/from16 v75, v45

    const/4 v11, 0x5

    move-object/from16 v1, p0

    move-object v6, v2

    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v43    # "idStr":Ljava/lang/String;
    goto/16 :goto_15

    .line 3815
    .end local v43    # "idStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "sharedUserId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    :cond_15
    move-object/from16 v43, v3

    const/16 v31, 0x5

    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v43    # "idStr":Ljava/lang/String;
    const-string v3, "Reading package "

    if-lez v0, :cond_18

    .line 3816
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v32
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_1a

    move-object/from16 v39, v4

    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .local v39, "sharedIdStr":Ljava/lang/String;
    :try_start_28
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v33, v5

    .end local v5    # "sharedUserId":I
    .local v33, "sharedUserId":I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_19

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v69, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v69, "name":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v70, v2

    .end local v2    # "codePathStr":Ljava/lang/String;
    .local v70, "codePathStr":Ljava/lang/String;
    move-object/from16 v2, v32

    move-object/from16 v72, v3

    move-object/from16 v71, v43

    .end local v43    # "idStr":Ljava/lang/String;
    .local v71, "idStr":Ljava/lang/String;
    move-object/from16 v3, v30

    move-object/from16 v73, v39

    .end local v39    # "sharedIdStr":Ljava/lang/String;
    .local v73, "sharedIdStr":Ljava/lang/String;
    move/from16 v74, v33

    move-object/from16 v75, v45

    .end local v33    # "sharedUserId":I
    .local v74, "sharedUserId":I
    move-object/from16 v76, v7

    move-object/from16 v7, v19

    move-object/from16 v77, v10

    move v10, v0

    move-object/from16 v79, v11

    move-object/from16 v78, v12

    move-wide/from16 v11, v37

    move/from16 v13, v27

    move-object/from16 v80, v14

    move/from16 v14, v28

    move-object/from16 v81, v6

    move-object/from16 v6, v68

    .end local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v81, "resourcePathStr":Ljava/lang/String;
    :try_start_29
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_18

    .line 3821
    .end local v35    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_2a
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_17

    if-eqz v2, :cond_16

    .line 3822
    :try_start_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v72

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_12

    move-object/from16 v5, v69

    .end local v69    # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :try_start_2c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v80

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 3859
    .end local v0    # "userId":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v29    # "timeStampStr":Ljava/lang/String;
    .end local v74    # "sharedUserId":I
    .restart local v69    # "name":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v5, v69

    move-object/from16 v35, v1

    move-object/from16 v68, v6

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    const/4 v11, 0x5

    move-object/from16 v1, p0

    .end local v69    # "name":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    goto/16 :goto_15

    .line 3821
    .end local v5    # "name":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v74    # "sharedUserId":I
    :cond_16
    move-object/from16 v5, v69

    .line 3824
    .end local v69    # "name":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    :goto_10
    if-nez v1, :cond_17

    .line 3825
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure adding uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3827
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3825
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_13

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-wide/from16 v2, v66

    goto :goto_11

    .line 3859
    .end local v0    # "userId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v29    # "timeStampStr":Ljava/lang/String;
    .end local v74    # "sharedUserId":I
    :catch_13
    move-exception v0

    move-object/from16 v35, v1

    move-object/from16 v68, v6

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    const/4 v11, 0x5

    move-object/from16 v1, p0

    goto/16 :goto_15

    .line 3829
    .restart local v0    # "userId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    .restart local v74    # "sharedUserId":I
    :cond_17
    move-wide/from16 v10, v62

    .end local v62    # "timeStamp":J
    .local v10, "timeStamp":J
    :try_start_2d
    invoke-virtual {v1, v10, v11}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_16

    .line 3830
    move-wide/from16 v12, v64

    .end local v64    # "firstInstallTime":J
    .local v12, "firstInstallTime":J
    :try_start_2e
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_15

    .line 3831
    move-wide/from16 v2, v66

    .end local v66    # "lastUpdateTime":J
    .local v2, "lastUpdateTime":J
    :try_start_2f
    iput-wide v2, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_14

    .line 3863
    .end local v0    # "userId":I
    .end local v29    # "timeStampStr":Ljava/lang/String;
    .end local v74    # "sharedUserId":I
    :goto_11
    move-object/from16 v35, v1

    move-wide/from16 v31, v2

    move-object/from16 v43, v70

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    const/4 v2, 0x5

    move-object/from16 v1, p0

    goto/16 :goto_13

    .line 3859
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_14
    move-exception v0

    move-object/from16 v35, v1

    move-wide/from16 v66, v2

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    const/4 v11, 0x5

    move-object/from16 v1, p0

    goto/16 :goto_15

    .end local v2    # "lastUpdateTime":J
    .restart local v66    # "lastUpdateTime":J
    :catch_15
    move-exception v0

    move-wide/from16 v2, v66

    move-object/from16 v35, v1

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    const/4 v11, 0x5

    move-object/from16 v1, p0

    .end local v66    # "lastUpdateTime":J
    .restart local v2    # "lastUpdateTime":J
    goto/16 :goto_15

    .end local v2    # "lastUpdateTime":J
    .end local v12    # "firstInstallTime":J
    .restart local v64    # "firstInstallTime":J
    .restart local v66    # "lastUpdateTime":J
    :catch_16
    move-exception v0

    move-wide/from16 v12, v64

    move-wide/from16 v2, v66

    move-object/from16 v35, v1

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    const/4 v11, 0x5

    move-object/from16 v1, p0

    .end local v64    # "firstInstallTime":J
    .end local v66    # "lastUpdateTime":J
    .restart local v2    # "lastUpdateTime":J
    .restart local v12    # "firstInstallTime":J
    goto/16 :goto_15

    .end local v2    # "lastUpdateTime":J
    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .restart local v62    # "timeStamp":J
    .restart local v64    # "firstInstallTime":J
    .restart local v66    # "lastUpdateTime":J
    .restart local v69    # "name":Ljava/lang/String;
    :catch_17
    move-exception v0

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-wide/from16 v2, v66

    move-object/from16 v5, v69

    move-object/from16 v35, v1

    move-object/from16 v68, v6

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    const/4 v11, 0x5

    move-object/from16 v1, p0

    .end local v62    # "timeStamp":J
    .end local v64    # "firstInstallTime":J
    .end local v66    # "lastUpdateTime":J
    .end local v69    # "name":Ljava/lang/String;
    .restart local v2    # "lastUpdateTime":J
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    goto/16 :goto_15

    .end local v1    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "lastUpdateTime":J
    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .restart local v35    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v62    # "timeStamp":J
    .restart local v64    # "firstInstallTime":J
    .restart local v66    # "lastUpdateTime":J
    .restart local v69    # "name":Ljava/lang/String;
    :catch_18
    move-exception v0

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-wide/from16 v2, v66

    move-object/from16 v5, v69

    move-object/from16 v1, p0

    move-object/from16 v68, v6

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    const/4 v11, 0x5

    .end local v62    # "timeStamp":J
    .end local v64    # "firstInstallTime":J
    .end local v66    # "lastUpdateTime":J
    .end local v69    # "name":Ljava/lang/String;
    .restart local v2    # "lastUpdateTime":J
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v70    # "codePathStr":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .restart local v39    # "sharedIdStr":Ljava/lang/String;
    .restart local v43    # "idStr":Ljava/lang/String;
    .restart local v62    # "timeStamp":J
    .restart local v64    # "firstInstallTime":J
    .restart local v66    # "lastUpdateTime":J
    .restart local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_19
    move-exception v0

    move-object v5, v1

    move-object/from16 v70, v2

    move-object/from16 v81, v6

    move-object/from16 v77, v10

    move-object/from16 v79, v11

    move-object/from16 v78, v12

    move-object/from16 v73, v39

    move-object/from16 v71, v43

    move-object/from16 v75, v45

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-wide/from16 v2, v66

    move-object/from16 v6, v68

    move-object/from16 v1, p0

    move/from16 v11, v31

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    .end local v1    # "name":Ljava/lang/String;
    .end local v39    # "sharedIdStr":Ljava/lang/String;
    .end local v43    # "idStr":Ljava/lang/String;
    .end local v62    # "timeStamp":J
    .end local v64    # "firstInstallTime":J
    .end local v66    # "lastUpdateTime":J
    .end local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v2, "lastUpdateTime":J
    .restart local v5    # "name":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v70    # "codePathStr":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v70    # "codePathStr":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .restart local v43    # "idStr":Ljava/lang/String;
    .restart local v62    # "timeStamp":J
    .restart local v64    # "firstInstallTime":J
    .restart local v66    # "lastUpdateTime":J
    .restart local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object v5, v1

    move-object/from16 v70, v2

    move-object/from16 v73, v4

    move-object/from16 v81, v6

    move-object/from16 v77, v10

    move-object/from16 v79, v11

    move-object/from16 v78, v12

    move-object/from16 v71, v43

    move-object/from16 v75, v45

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-wide/from16 v2, v66

    move-object/from16 v6, v68

    move-object/from16 v1, p0

    move/from16 v11, v31

    move-object/from16 v6, v70

    move-object/from16 v4, v71

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    move-object/from16 v41, v81

    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v43    # "idStr":Ljava/lang/String;
    .end local v62    # "timeStamp":J
    .end local v64    # "firstInstallTime":J
    .end local v66    # "lastUpdateTime":J
    .end local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v2, "lastUpdateTime":J
    .restart local v5    # "name":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v70    # "codePathStr":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_15

    .line 3833
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v70    # "codePathStr":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .local v5, "sharedUserId":I
    .local v6, "resourcePathStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    .restart local v43    # "idStr":Ljava/lang/String;
    .restart local v62    # "timeStamp":J
    .restart local v64    # "firstInstallTime":J
    .restart local v66    # "lastUpdateTime":J
    .restart local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_18
    move-object/from16 v70, v2

    move-object/from16 v73, v4

    move/from16 v74, v5

    move-object/from16 v81, v6

    move-object/from16 v76, v7

    move-object/from16 v77, v10

    move-object/from16 v79, v11

    move-object/from16 v78, v12

    move-object v4, v14

    move-object/from16 v71, v43

    move-object/from16 v75, v45

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v6, v68

    move-object v5, v1

    move-wide/from16 v1, v66

    .end local v2    # "codePathStr":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v43    # "idStr":Ljava/lang/String;
    .end local v62    # "timeStamp":J
    .end local v64    # "firstInstallTime":J
    .end local v66    # "lastUpdateTime":J
    .end local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v1, "lastUpdateTime":J
    .local v5, "name":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v70    # "codePathStr":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v74    # "sharedUserId":I
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    move-object/from16 v7, v73

    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .local v7, "sharedIdStr":Ljava/lang/String;
    if-eqz v7, :cond_1b

    .line 3834
    move/from16 v14, v74

    .end local v74    # "sharedUserId":I
    .local v14, "sharedUserId":I
    if-lez v14, :cond_1a

    .line 3835
    :try_start_30
    new-instance v16, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v45

    move/from16 v17, v0

    .end local v0    # "userId":I
    .local v17, "userId":I
    new-instance v0, Ljava/io/File;
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_20

    move-object/from16 v73, v7

    move-object/from16 v7, v70

    .end local v70    # "codePathStr":Ljava/lang/String;
    .local v7, "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    :try_start_31
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_31} :catch_1f

    move-object/from16 v43, v7

    .end local v7    # "codePathStr":Ljava/lang/String;
    .local v43, "codePathStr":Ljava/lang/String;
    :try_start_32
    new-instance v7, Ljava/io/File;
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_1e

    move-object/from16 v80, v4

    move-object/from16 v4, v81

    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .local v4, "resourcePathStr":Ljava/lang/String;
    :try_start_33
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v44, v16

    move-object/from16 v46, v30

    move-object/from16 v47, v0

    move-object/from16 v48, v7

    move-object/from16 v49, v6

    move-object/from16 v50, v19

    move-object/from16 v51, v8

    move-object/from16 v52, v9

    move-wide/from16 v53, v37

    move/from16 v55, v27

    move/from16 v56, v28

    move-object/from16 v57, v15

    move/from16 v59, v14

    invoke-direct/range {v44 .. v61}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_1d

    move-object/from16 v7, v16

    .line 3841
    .end local v35    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v7, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_34
    invoke-virtual {v7, v10, v11}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3842
    iput-wide v12, v7, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3843
    iput-wide v1, v7, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_1c

    .line 3844
    move-wide/from16 v31, v1

    move-object/from16 v1, p0

    .end local v1    # "lastUpdateTime":J
    .local v31, "lastUpdateTime":J
    :try_start_35
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3845
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v0, :cond_19

    .line 3846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": sharedUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v80

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_1b

    .line 3863
    .end local v14    # "sharedUserId":I
    .end local v17    # "userId":I
    .end local v29    # "timeStampStr":Ljava/lang/String;
    :cond_19
    move-object/from16 v81, v4

    move-object/from16 v35, v7

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    const/4 v2, 0x5

    goto/16 :goto_13

    .line 3859
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_1b
    move-exception v0

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-object/from16 v35, v7

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    goto/16 :goto_15

    .end local v31    # "lastUpdateTime":J
    .restart local v1    # "lastUpdateTime":J
    :catch_1c
    move-exception v0

    move-wide/from16 v31, v1

    move-object/from16 v1, p0

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-object/from16 v35, v7

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1    # "lastUpdateTime":J
    .restart local v31    # "lastUpdateTime":J
    goto/16 :goto_15

    .end local v7    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v31    # "lastUpdateTime":J
    .restart local v1    # "lastUpdateTime":J
    .restart local v35    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catch_1d
    move-exception v0

    move-wide/from16 v31, v1

    move-object/from16 v1, p0

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1    # "lastUpdateTime":J
    .restart local v31    # "lastUpdateTime":J
    goto/16 :goto_15

    .end local v4    # "resourcePathStr":Ljava/lang/String;
    .end local v31    # "lastUpdateTime":J
    .restart local v1    # "lastUpdateTime":J
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    :catch_1e
    move-exception v0

    move-wide/from16 v31, v1

    move-object/from16 v4, v81

    move-object/from16 v1, p0

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1    # "lastUpdateTime":J
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .restart local v4    # "resourcePathStr":Ljava/lang/String;
    .restart local v31    # "lastUpdateTime":J
    goto/16 :goto_15

    .end local v4    # "resourcePathStr":Ljava/lang/String;
    .end local v31    # "lastUpdateTime":J
    .end local v43    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "lastUpdateTime":J
    .local v7, "codePathStr":Ljava/lang/String;
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    :catch_1f
    move-exception v0

    move-wide/from16 v31, v1

    move-object/from16 v43, v7

    move-object/from16 v4, v81

    move-object/from16 v1, p0

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1    # "lastUpdateTime":J
    .end local v7    # "codePathStr":Ljava/lang/String;
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .restart local v4    # "resourcePathStr":Ljava/lang/String;
    .restart local v31    # "lastUpdateTime":J
    .restart local v43    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v4    # "resourcePathStr":Ljava/lang/String;
    .end local v31    # "lastUpdateTime":J
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "lastUpdateTime":J
    .local v7, "sharedIdStr":Ljava/lang/String;
    .restart local v70    # "codePathStr":Ljava/lang/String;
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    :catch_20
    move-exception v0

    move-wide/from16 v31, v1

    move-object/from16 v73, v7

    move-object/from16 v43, v70

    move-object/from16 v4, v81

    move-object/from16 v1, p0

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v7, v76

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1    # "lastUpdateTime":J
    .end local v7    # "sharedIdStr":Ljava/lang/String;
    .end local v70    # "codePathStr":Ljava/lang/String;
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .restart local v4    # "resourcePathStr":Ljava/lang/String;
    .restart local v31    # "lastUpdateTime":J
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .line 3849
    .end local v4    # "resourcePathStr":Ljava/lang/String;
    .end local v31    # "lastUpdateTime":J
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v1    # "lastUpdateTime":J
    .restart local v7    # "sharedIdStr":Ljava/lang/String;
    .restart local v14    # "sharedUserId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    .restart local v70    # "codePathStr":Ljava/lang/String;
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    :cond_1a
    move/from16 v17, v0

    move-wide/from16 v31, v1

    move-object/from16 v73, v7

    move-object/from16 v43, v70

    move-object/from16 v4, v81

    move-object/from16 v1, p0

    .end local v0    # "userId":I
    .end local v1    # "lastUpdateTime":J
    .end local v7    # "sharedIdStr":Ljava/lang/String;
    .end local v70    # "codePathStr":Ljava/lang/String;
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .restart local v4    # "resourcePathStr":Ljava/lang/String;
    .restart local v17    # "userId":I
    .restart local v31    # "lastUpdateTime":J
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    :try_start_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_26

    move-object/from16 v7, v76

    :try_start_37
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has bad sharedId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_37} :catch_25

    move-object/from16 v3, v73

    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .local v3, "sharedIdStr":Ljava/lang/String;
    :try_start_38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_24

    move-object/from16 v2, v77

    :try_start_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_23

    .line 3852
    move-object/from16 v73, v3

    .end local v3    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    :try_start_3a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_22

    .line 3849
    const/4 v3, 0x5

    :try_start_3b
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3b} :catch_21

    move-object/from16 v77, v2

    move v2, v3

    move-object/from16 v81, v4

    move-object/from16 v4, v71

    goto/16 :goto_13

    .line 3859
    .end local v14    # "sharedUserId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v29    # "timeStampStr":Ljava/lang/String;
    :catch_21
    move-exception v0

    move-object v14, v2

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move v11, v3

    move-object/from16 v3, v79

    goto/16 :goto_15

    :catch_22
    move-exception v0

    move-object v14, v2

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v3, v79

    const/4 v11, 0x5

    goto/16 :goto_15

    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v3    # "sharedIdStr":Ljava/lang/String;
    :catch_23
    move-exception v0

    move-object/from16 v73, v3

    move-object v14, v2

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    goto :goto_12

    :catch_24
    move-exception v0

    move-object/from16 v73, v3

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v14, v77

    :goto_12
    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v3    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    :catch_25
    move-exception v0

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    goto/16 :goto_15

    :catch_26
    move-exception v0

    move-object/from16 v7, v76

    move-object/from16 v41, v4

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v4, v71

    move-object/from16 v14, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    goto/16 :goto_15

    .line 3855
    .end local v4    # "resourcePathStr":Ljava/lang/String;
    .end local v31    # "lastUpdateTime":J
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v1    # "lastUpdateTime":J
    .restart local v7    # "sharedIdStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v29    # "timeStampStr":Ljava/lang/String;
    .restart local v70    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "sharedUserId":I
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    :cond_1b
    move/from16 v17, v0

    move-wide/from16 v31, v1

    move-object/from16 v73, v7

    move-object/from16 v43, v70

    move/from16 v14, v74

    move-object/from16 v7, v76

    move-object/from16 v2, v77

    move-object/from16 v4, v81

    const/4 v3, 0x5

    move-object/from16 v1, p0

    .end local v0    # "userId":I
    .end local v1    # "lastUpdateTime":J
    .end local v7    # "sharedIdStr":Ljava/lang/String;
    .end local v70    # "codePathStr":Ljava/lang/String;
    .end local v74    # "sharedUserId":I
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .restart local v4    # "resourcePathStr":Ljava/lang/String;
    .restart local v14    # "sharedUserId":I
    .restart local v17    # "userId":I
    .restart local v31    # "lastUpdateTime":J
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    :try_start_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_2b

    move-object/from16 v3, v79

    :try_start_3d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_3d} :catch_2a

    move-object/from16 v81, v4

    move-object/from16 v4, v71

    .end local v71    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    :try_start_3e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_3e} :catch_29

    .line 3857
    move-object/from16 v77, v2

    :try_start_3f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_3f} :catch_28

    .line 3855
    const/4 v2, 0x5

    :try_start_40
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_40} :catch_27

    .line 3863
    .end local v14    # "sharedUserId":I
    .end local v17    # "userId":I
    .end local v29    # "timeStampStr":Ljava/lang/String;
    :goto_13
    move-object v15, v5

    move-object/from16 v16, v9

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v19

    move-object/from16 v5, v22

    move-object/from16 v13, v25

    move-object/from16 v2, v35

    move-object/from16 v3, v40

    move-object/from16 v14, v77

    move-object v11, v4

    move-object v9, v6

    move-object v12, v8

    move-object/from16 v4, v21

    move-object/from16 v6, v23

    move/from16 v8, v26

    goto/16 :goto_16

    .line 3859
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_27
    move-exception v0

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v14, v77

    move-object/from16 v41, v81

    move v11, v2

    goto/16 :goto_15

    :catch_28
    move-exception v0

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v14, v77

    move-object/from16 v41, v81

    const/4 v11, 0x5

    goto/16 :goto_15

    :catch_29
    move-exception v0

    move-object/from16 v77, v2

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v14, v77

    move-object/from16 v41, v81

    const/4 v11, 0x5

    goto/16 :goto_15

    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .local v4, "resourcePathStr":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    :catch_2a
    move-exception v0

    move-object/from16 v77, v2

    move-object/from16 v81, v4

    move-object/from16 v4, v71

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v14, v77

    move-object/from16 v41, v81

    const/4 v11, 0x5

    goto :goto_14

    :catch_2b
    move-exception v0

    move-object/from16 v77, v2

    move v2, v3

    move-object/from16 v81, v4

    move-object/from16 v4, v71

    move-object/from16 v3, v79

    move-object/from16 v68, v6

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-wide/from16 v66, v31

    move-object/from16 v6, v43

    move-object/from16 v14, v77

    move-object/from16 v41, v81

    move v11, v2

    .end local v71    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    :goto_14
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v30    # "realName":Ljava/lang/String;
    .end local v31    # "lastUpdateTime":J
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .end local v81    # "resourcePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v41    # "resourcePathStr":Ljava/lang/String;
    .restart local v62    # "timeStamp":J
    .restart local v64    # "firstInstallTime":J
    .restart local v66    # "lastUpdateTime":J
    :catch_2c
    move-exception v0

    move-object v5, v1

    move-object/from16 v73, v4

    move-object v14, v10

    move-object/from16 v78, v12

    move-object/from16 v75, v45

    move-wide/from16 v12, v64

    move-wide/from16 v33, v66

    const/16 v39, 0x5

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    move-wide/from16 v10, v62

    move-object/from16 v30, v2

    move-object/from16 v68, v6

    move/from16 v11, v39

    move-object/from16 v6, v43

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v62    # "timeStamp":J
    .end local v64    # "firstInstallTime":J
    .end local v66    # "lastUpdateTime":J
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .local v33, "lastUpdateTime":J
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v62    # "timeStamp":J
    .restart local v64    # "firstInstallTime":J
    :catch_2d
    move-exception v0

    move-object v5, v1

    move-object/from16 v73, v4

    move-object v14, v10

    move-object/from16 v78, v12

    move-object/from16 v75, v45

    move-wide/from16 v12, v64

    const/16 v39, 0x5

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    move-wide/from16 v10, v62

    move-object/from16 v30, v2

    move-object/from16 v68, v6

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v6, v43

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v62    # "timeStamp":J
    .end local v64    # "firstInstallTime":J
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .local v31, "firstInstallTime":J
    .restart local v62    # "timeStamp":J
    :catch_2e
    move-exception v0

    move-object v5, v1

    move-object/from16 v73, v4

    move-object v14, v10

    move-object/from16 v78, v12

    move-object/from16 v75, v45

    const/16 v39, 0x5

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    move-wide/from16 v10, v62

    move-object/from16 v30, v2

    move-object/from16 v68, v6

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v6, v43

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v62    # "timeStamp":J
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .local v29, "timeStamp":J
    :catch_2f
    move-exception v0

    move-object v5, v1

    move-object/from16 v73, v4

    move-object v14, v10

    move-object/from16 v78, v12

    move-object/from16 v75, v45

    const/16 v39, 0x5

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v68, v6

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v6, v43

    move-object/from16 v30, v2

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    :catch_30
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v1, p0

    move-object/from16 v68, v6

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v6, v43

    move-object/from16 v30, v2

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v19    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .local v17, "primaryCpuAbiString":Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v1, p0

    move-object/from16 v68, v6

    move-object/from16 v19, v17

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v6, v43

    move-object/from16 v30, v2

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .local v9, "codePathStr":Ljava/lang/String;
    .local v19, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object/from16 v43, v9

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v1, p0

    move-object/from16 v68, v6

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v6, v43

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v9    # "codePathStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v9    # "codePathStr":Ljava/lang/String;
    .restart local v18    # "secondaryCpuAbiString":Ljava/lang/String;
    :catch_33
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object/from16 v43, v9

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v1, p0

    move-object/from16 v68, v6

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v6, v43

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v9    # "codePathStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .local v6, "codePathStr":Ljava/lang/String;
    .local v16, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_34
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object/from16 v43, v6

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v1, p0

    move-object/from16 v68, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v6    # "codePathStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v42    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .local v9, "legacyCpuAbiString":Ljava/lang/String;
    :catch_35
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object/from16 v43, v6

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v1, p0

    move-object/from16 v42, v9

    move-object/from16 v68, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v6    # "codePathStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v41    # "resourcePathStr":Ljava/lang/String;
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v6    # "codePathStr":Ljava/lang/String;
    .local v8, "resourcePathStr":Ljava/lang/String;
    :catch_36
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object/from16 v43, v6

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v1, p0

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object/from16 v68, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v6    # "codePathStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v43    # "codePathStr":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v6    # "codePathStr":Ljava/lang/String;
    :catch_37
    move-exception v0

    move-object/from16 v73, v4

    move-object/from16 v75, v5

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v1, p0

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object/from16 v68, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v73    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    :catch_38
    move-exception v0

    move-object/from16 v75, v5

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v10, v4

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object/from16 v73, v10

    move-object/from16 v68, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .local v10, "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "sharedIdStr":Ljava/lang/String;
    .end local v40    # "uidError":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .local v15, "uidError":Ljava/lang/String;
    :catch_39
    move-exception v0

    move-object/from16 v75, v5

    move-object v14, v10

    move-object/from16 v78, v12

    const/16 v39, 0x5

    move-object v5, v1

    move-object v10, v4

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object/from16 v73, v10

    move-object/from16 v40, v15

    move-object/from16 v68, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move/from16 v11, v39

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v10    # "sharedIdStr":Ljava/lang/String;
    goto :goto_15

    .end local v5    # "name":Ljava/lang/String;
    .end local v10    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    :catch_3a
    move-exception v0

    move-object/from16 v75, v5

    move-object v14, v10

    move-object/from16 v78, v12

    move-object v5, v1

    move-object v10, v4

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v3, v11

    const/4 v11, 0x5

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object/from16 v73, v10

    move-object/from16 v40, v15

    move-object/from16 v68, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v62, v29

    move-wide/from16 v64, v31

    move-wide/from16 v66, v33

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .line 3860
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v15    # "uidError":Ljava/lang/String;
    .end local v16    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v17    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v18    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v29    # "timeStamp":J
    .end local v31    # "firstInstallTime":J
    .end local v33    # "lastUpdateTime":J
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v19, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v30    # "realName":Ljava/lang/String;
    .restart local v40    # "uidError":Ljava/lang/String;
    .restart local v41    # "resourcePathStr":Ljava/lang/String;
    .restart local v42    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v62    # "timeStamp":J
    .restart local v64    # "firstInstallTime":J
    .restart local v66    # "lastUpdateTime":J
    .restart local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v73    # "sharedIdStr":Ljava/lang/String;
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3862
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3860
    invoke-static {v11, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object v11, v4

    move-object v15, v5

    move-object/from16 v43, v6

    move-object v12, v8

    move-object/from16 v16, v9

    move-object/from16 v10, v19

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v13, v25

    move/from16 v8, v26

    move-object/from16 v2, v35

    move-object/from16 v3, v40

    move-object/from16 v81, v41

    move-wide/from16 v31, v66

    move-object/from16 v9, v68

    .line 3864
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v21    # "installerPackageName":Ljava/lang/String;
    .end local v22    # "isOrphaned":Ljava/lang/String;
    .end local v23    # "volumeUuid":Ljava/lang/String;
    .end local v25    # "updateAvailable":Ljava/lang/String;
    .end local v26    # "categoryHint":I
    .end local v35    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v40    # "uidError":Ljava/lang/String;
    .end local v41    # "resourcePathStr":Ljava/lang/String;
    .end local v66    # "lastUpdateTime":J
    .end local v68    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v3, "uidError":Ljava/lang/String;
    .local v4, "installerPackageName":Ljava/lang/String;
    .local v5, "isOrphaned":Ljava/lang/String;
    .local v6, "volumeUuid":Ljava/lang/String;
    .local v8, "categoryHint":I
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v10, "primaryCpuAbiString":Ljava/lang/String;
    .local v11, "idStr":Ljava/lang/String;
    .local v12, "secondaryCpuAbiString":Ljava/lang/String;
    .local v13, "updateAvailable":Ljava/lang/String;
    .local v15, "name":Ljava/lang/String;
    .local v16, "cpuAbiOverrideString":Ljava/lang/String;
    .local v31, "lastUpdateTime":J
    .restart local v43    # "codePathStr":Ljava/lang/String;
    .restart local v81    # "resourcePathStr":Ljava/lang/String;
    :goto_16
    if-eqz v2, :cond_33

    .line 3865
    move-object/from16 v1, v75

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    .line 3866
    iput-object v4, v2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    .line 3867
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 3868
    iput-object v6, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3869
    iput v8, v2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 3870
    iput-object v9, v2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3871
    iput-object v10, v2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 3872
    iput-object v12, v2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3873
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 3875
    const-string v0, "enabled"

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v5, 0x0

    move-object/from16 v3, p1

    .end local v3    # "uidError":Ljava/lang/String;
    .end local v5    # "isOrphaned":Ljava/lang/String;
    .end local v6    # "volumeUuid":Ljava/lang/String;
    .local v17, "uidError":Ljava/lang/String;
    .local v18, "isOrphaned":Ljava/lang/String;
    .local v19, "volumeUuid":Ljava/lang/String;
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3876
    .local v6, "enabledStr":Ljava/lang/String;
    if-eqz v6, :cond_1f

    .line 3878
    :try_start_41
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_41} :catch_3c

    move/from16 v21, v8

    const/4 v8, 0x0

    .end local v8    # "categoryHint":I
    .local v21, "categoryHint":I
    :try_start_42
    invoke-virtual {v2, v0, v8, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_42} :catch_3b

    .line 3892
    :goto_17
    goto :goto_19

    .line 3879
    :catch_3b
    move-exception v0

    goto :goto_18

    .end local v21    # "categoryHint":I
    .restart local v8    # "categoryHint":I
    :catch_3c
    move-exception v0

    move/from16 v21, v8

    const/4 v8, 0x0

    .line 3880
    .end local v8    # "categoryHint":I
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "categoryHint":I
    :goto_18
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3881
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v8, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_17

    .line 3882
    :cond_1c
    const/4 v1, 0x1

    const-string v1, "false"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3883
    const/4 v1, 0x2

    invoke-virtual {v2, v1, v8, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_17

    .line 3884
    :cond_1d
    const-string v1, "default"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3885
    invoke-virtual {v2, v8, v8, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_17

    .line 3887
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has bad enabled value: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3890
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3887
    const/4 v7, 0x5

    invoke-static {v7, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_17

    .line 3894
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v21    # "categoryHint":I
    .restart local v8    # "categoryHint":I
    :cond_1f
    move/from16 v21, v8

    const/4 v8, 0x0

    .end local v8    # "categoryHint":I
    .restart local v21    # "categoryHint":I
    invoke-virtual {v2, v8, v8, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3897
    :goto_19
    if-eqz v4, :cond_20

    .line 3898
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 3897
    :cond_20
    move-object/from16 v1, p0

    .line 3901
    :goto_1a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3903
    .local v0, "outerDepth":I
    :goto_1b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v14, v7

    const/4 v5, 0x1

    .local v14, "type":I
    if-eq v7, v5, :cond_32

    const/4 v5, 0x3

    if-ne v14, v5, :cond_22

    .line 3904
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_21

    goto :goto_1c

    :cond_21
    move-object/from16 v23, v4

    move-object/from16 v26, v9

    goto/16 :goto_21

    .line 3905
    :cond_22
    :goto_1c
    if-eq v14, v5, :cond_31

    const/4 v5, 0x4

    if-ne v14, v5, :cond_23

    .line 3906
    const/4 v5, 0x0

    goto :goto_1b

    .line 3909
    :cond_23
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3911
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "disabled-components"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 3912
    invoke-direct {v1, v2, v3, v8}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v33, 0x1

    goto/16 :goto_20

    .line 3913
    :cond_24
    const-string v7, "enabled-components"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 3914
    invoke-direct {v1, v2, v3, v8}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v33, 0x1

    goto/16 :goto_20

    .line 3915
    :cond_25
    const-string/jumbo v7, "sigs"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 3916
    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v8}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v33, 0x1

    goto/16 :goto_20

    .line 3917
    :cond_26
    const-string/jumbo v7, "perms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 3918
    nop

    .line 3919
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 3918
    invoke-virtual {v1, v3, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 3920
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move/from16 v33, v7

    move-object/from16 v26, v9

    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    goto/16 :goto_20

    .line 3921
    :cond_27
    const-string/jumbo v7, "proper-signing-keyset"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "identifier"

    if-eqz v7, :cond_29

    .line 3922
    const/4 v7, 0x0

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3923
    .local v7, "id":J
    move/from16 v22, v0

    .end local v0    # "outerDepth":I
    .local v22, "outerDepth":I
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v23, v4

    .end local v4    # "installerPackageName":Ljava/lang/String;
    .local v23, "installerPackageName":Ljava/lang/String;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3924
    .local v0, "refCt":Ljava/lang/Integer;
    if-eqz v0, :cond_28

    .line 3925
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v25, v6

    .end local v6    # "enabledStr":Ljava/lang/String;
    .local v25, "enabledStr":Ljava/lang/String;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v29, 0x1

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v33, v0

    .end local v0    # "refCt":Ljava/lang/Integer;
    .local v33, "refCt":Ljava/lang/Integer;
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 3927
    .end local v25    # "enabledStr":Ljava/lang/String;
    .end local v33    # "refCt":Ljava/lang/Integer;
    .restart local v0    # "refCt":Ljava/lang/Integer;
    .restart local v6    # "enabledStr":Ljava/lang/String;
    :cond_28
    move-object/from16 v33, v0

    move-object/from16 v25, v6

    const/16 v29, 0x1

    .end local v0    # "refCt":Ljava/lang/Integer;
    .end local v6    # "enabledStr":Ljava/lang/String;
    .restart local v25    # "enabledStr":Ljava/lang/String;
    .restart local v33    # "refCt":Ljava/lang/Integer;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3929
    :goto_1d
    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .end local v7    # "id":J
    .end local v33    # "refCt":Ljava/lang/Integer;
    goto :goto_1e

    .line 3930
    .end local v22    # "outerDepth":I
    .end local v23    # "installerPackageName":Ljava/lang/String;
    .end local v25    # "enabledStr":Ljava/lang/String;
    .local v0, "outerDepth":I
    .restart local v4    # "installerPackageName":Ljava/lang/String;
    .restart local v6    # "enabledStr":Ljava/lang/String;
    :cond_29
    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    .end local v0    # "outerDepth":I
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .end local v6    # "enabledStr":Ljava/lang/String;
    .restart local v22    # "outerDepth":I
    .restart local v23    # "installerPackageName":Ljava/lang/String;
    .restart local v25    # "enabledStr":Ljava/lang/String;
    const-string/jumbo v0, "signing-keyset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :goto_1e
    move-object/from16 v26, v9

    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v33, 0x1

    goto/16 :goto_20

    .line 3932
    :cond_2a
    const-string/jumbo v0, "upgrade-keyset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3933
    const/4 v4, 0x0

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3934
    .local v6, "id":J
    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    .line 3935
    .end local v6    # "id":J
    move-object/from16 v26, v9

    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v33, 0x1

    goto/16 :goto_20

    :cond_2b
    const-string v0, "defined-keyset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3936
    const/4 v4, 0x0

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3937
    .restart local v6    # "id":J
    const-string v0, "alias"

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3938
    .local v0, "alias":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3939
    .local v4, "refCt":Ljava/lang/Integer;
    if-eqz v4, :cond_2c

    .line 3940
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v26, v9

    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v26, "legacyNativeLibraryPathStr":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v33, 0x1

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v34, v4

    .end local v4    # "refCt":Ljava/lang/Integer;
    .local v34, "refCt":Ljava/lang/Integer;
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 3942
    .end local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v34    # "refCt":Ljava/lang/Integer;
    .restart local v4    # "refCt":Ljava/lang/Integer;
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_2c
    move-object/from16 v34, v4

    move-object/from16 v26, v9

    const/16 v33, 0x1

    .end local v4    # "refCt":Ljava/lang/Integer;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v34    # "refCt":Ljava/lang/Integer;
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    :goto_1f
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 3945
    .end local v0    # "alias":Ljava/lang/String;
    .end local v6    # "id":J
    .end local v34    # "refCt":Ljava/lang/Integer;
    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    goto :goto_20

    .end local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_2d
    move-object/from16 v26, v9

    const/16 v33, 0x1

    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string v0, "domain-verification"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3946
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    goto :goto_20

    .line 3947
    :cond_2e
    const-string v0, "child-package"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3948
    move-object/from16 v4, v78

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3949
    .local v0, "childPackageName":Ljava/lang/String;
    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v7, :cond_2f

    .line 3950
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3952
    :cond_2f
    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3953
    .end local v0    # "childPackageName":Ljava/lang/String;
    const/4 v7, 0x5

    goto :goto_20

    .line 3954
    :cond_30
    move-object/from16 v4, v78

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <package>: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3955
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3954
    const/4 v7, 0x5

    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3956
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3958
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_20
    move-object/from16 v78, v4

    move-object v5, v6

    move/from16 v0, v22

    move-object/from16 v4, v23

    move-object/from16 v6, v25

    move-object/from16 v9, v26

    const/4 v8, 0x0

    goto/16 :goto_1b

    .line 3905
    .end local v22    # "outerDepth":I
    .end local v23    # "installerPackageName":Ljava/lang/String;
    .end local v25    # "enabledStr":Ljava/lang/String;
    .end local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v0, "outerDepth":I
    .local v4, "installerPackageName":Ljava/lang/String;
    .local v6, "enabledStr":Ljava/lang/String;
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_31
    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v4, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v33, 0x1

    .end local v0    # "outerDepth":I
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .end local v6    # "enabledStr":Ljava/lang/String;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v22    # "outerDepth":I
    .restart local v23    # "installerPackageName":Ljava/lang/String;
    .restart local v25    # "enabledStr":Ljava/lang/String;
    .restart local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    move-object v5, v6

    move-object/from16 v4, v23

    move-object/from16 v6, v25

    const/4 v8, 0x0

    goto/16 :goto_1b

    .line 3903
    .end local v22    # "outerDepth":I
    .end local v23    # "installerPackageName":Ljava/lang/String;
    .end local v25    # "enabledStr":Ljava/lang/String;
    .end local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v4    # "installerPackageName":Ljava/lang/String;
    .restart local v6    # "enabledStr":Ljava/lang/String;
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_32
    move/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    .line 3959
    .end local v0    # "outerDepth":I
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .end local v6    # "enabledStr":Ljava/lang/String;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v14    # "type":I
    .restart local v23    # "installerPackageName":Ljava/lang/String;
    .restart local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :goto_21
    goto :goto_22

    .line 3960
    .end local v17    # "uidError":Ljava/lang/String;
    .end local v18    # "isOrphaned":Ljava/lang/String;
    .end local v19    # "volumeUuid":Ljava/lang/String;
    .end local v21    # "categoryHint":I
    .end local v23    # "installerPackageName":Ljava/lang/String;
    .end local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v3    # "uidError":Ljava/lang/String;
    .restart local v4    # "installerPackageName":Ljava/lang/String;
    .local v5, "isOrphaned":Ljava/lang/String;
    .local v6, "volumeUuid":Ljava/lang/String;
    .restart local v8    # "categoryHint":I
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_33
    move-object/from16 v17, v3

    move-object/from16 v23, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v21, v8

    move-object/from16 v26, v9

    move-object/from16 v3, p1

    .end local v3    # "uidError":Ljava/lang/String;
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .end local v5    # "isOrphaned":Ljava/lang/String;
    .end local v6    # "volumeUuid":Ljava/lang/String;
    .end local v8    # "categoryHint":I
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v17    # "uidError":Ljava/lang/String;
    .restart local v18    # "isOrphaned":Ljava/lang/String;
    .restart local v19    # "volumeUuid":Ljava/lang/String;
    .restart local v21    # "categoryHint":I
    .restart local v23    # "installerPackageName":Ljava/lang/String;
    .restart local v26    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3962
    :goto_22
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1447
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1448
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1449
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1450
    goto :goto_0

    .line 1452
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1453
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1454
    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1455
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1456
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_1

    .line 1457
    :cond_3
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1457
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1460
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1462
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1463
    :cond_4
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1500
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1501
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1502
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1503
    goto :goto_0

    .line 1505
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1506
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "PackageSettings"

    if-eqz v3, :cond_4

    .line 1507
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1508
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v5, :cond_3

    .line 1509
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored IVI for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1509
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_1

    .line 1514
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1517
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1518
    :cond_5
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4021
    const-string v0, " at "

    const-string v1, " has bad userId "

    const/4 v2, 0x0

    .line 4022
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4023
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4024
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    .line 4025
    .local v5, "pkgPrivateFlags":I
    const/4 v6, 0x0

    .line 4027
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v7, 0x5

    :try_start_0
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 4028
    const-string/jumbo v8, "userId"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 4029
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 4030
    .local v8, "userId":I
    :goto_0
    const-string/jumbo v10, "true"

    const-string/jumbo v11, "system"

    invoke-interface {p1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4031
    or-int/lit8 v4, v4, 0x1

    .line 4033
    :cond_1
    if-nez v2, :cond_2

    .line 4034
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4034
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 4037
    :cond_2
    if-nez v8, :cond_3

    .line 4038
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: shared-user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4041
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4038
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 4043
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    move-object v6, v9

    if-nez v9, :cond_4

    .line 4045
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4047
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4046
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4054
    .end local v8    # "userId":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 4050
    :catch_0
    move-exception v8

    .line 4051
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4053
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4051
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4056
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    if-eqz v6, :cond_b

    .line 4057
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4059
    .local v0, "outerDepth":I
    :cond_5
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v8, v1

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v1, v9, :cond_a

    const/4 v1, 0x3

    if-ne v8, v1, :cond_6

    .line 4060
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v0, :cond_a

    .line 4061
    :cond_6
    if-eq v8, v1, :cond_5

    const/4 v1, 0x4

    if-ne v8, v1, :cond_7

    .line 4062
    goto :goto_3

    .line 4065
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4066
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "sigs"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4067
    iget-object v9, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 4068
    :cond_8
    const-string/jumbo v9, "perms"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4069
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_4

    .line 4071
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4072
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4071
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4073
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4075
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .line 4076
    .end local v0    # "outerDepth":I
    .end local v8    # "type":I
    :cond_a
    goto :goto_5

    .line 4077
    :cond_b
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4079
    :goto_5
    return-void
.end method

.method private registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "appId"    # I
    .param p2, "obj"    # Lcom/android/server/pm/SettingBase;
    .param p3, "name"    # Ljava/lang/Object;

    .line 1118
    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_0

    .line 1119
    return v0

    .line 1122
    :cond_0
    const-string v1, " name="

    const/4 v2, 0x6

    const/16 v3, 0x2710

    if-lt p1, v3, :cond_3

    .line 1123
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1124
    .local v3, "size":I
    add-int/lit16 v4, p1, -0x2710

    .line 1126
    .local v4, "index":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 1127
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding duplicate app id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1134
    return v0

    .line 1136
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .end local v3    # "size":I
    .end local v4    # "index":I
    goto :goto_1

    .line 1138
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1142
    return v0

    .line 1144
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1146
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1101
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    return-void

    .line 1104
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1106
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1107
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1108
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1109
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 1110
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 1104
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1114
    return-void
.end method

.method private replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 1173
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1175
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1176
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1177
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1180
    :goto_0
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 4217
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_0

    .line 4218
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 4220
    :cond_0
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)V
    .locals 20
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p6, "primaryCpuAbi"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p8, "pkgFlags"    # I
    .param p9, "pkgPrivateFlags"    # I
    .param p11, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p12, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p13, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 753
    .local p10, "childPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 754
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v9, " to "

    if-eq v8, v1, :cond_2

    .line 755
    const/4 v8, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " shared user changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v12, "<nothing>"

    if-eqz v11, :cond_0

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v11, v11, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v11, v12

    :goto_0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    if-eqz v1, :cond_1

    iget-object v12, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 755
    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 759
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/4 v9, -0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating application package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 763
    :cond_2
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v8, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "; Retain data and using new"

    const-string v11, " package "

    const-string v12, " system"

    const-string v13, ""

    const-string v14, "Update"

    const-string v15, "PackageManager"

    if-nez v8, :cond_a

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 765
    .local v8, "isSystem":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    move-object/from16 v16, v12

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v12, v13

    :goto_1
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " code path from "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    if-nez v8, :cond_9

    .line 775
    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    .line 776
    invoke-static/range {p11 .. p11}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    .line 777
    .local v1, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_7

    .line 778
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v18, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, v17

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 786
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v17, v8

    .end local v8    # "isSystem":Z
    .local v17, "isSystem":Z
    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v19, v12

    const/16 v12, 0x3e7

    if-ne v8, v12, :cond_4

    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 787
    invoke-static {v8}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 788
    :cond_4
    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 791
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    move/from16 v8, v17

    move-object/from16 v1, v18

    move-object/from16 v12, v19

    goto :goto_2

    .line 778
    .end local v17    # "isSystem":Z
    .end local v18    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v1, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8    # "isSystem":Z
    :cond_6
    move-object/from16 v18, v1

    move/from16 v17, v8

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "isSystem":Z
    .restart local v17    # "isSystem":Z
    .restart local v18    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .line 777
    .end local v17    # "isSystem":Z
    .end local v18    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8    # "isSystem":Z
    :cond_7
    move-object/from16 v18, v1

    move/from16 v17, v8

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "isSystem":Z
    .restart local v17    # "isSystem":Z
    .restart local v18    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .line 775
    .end local v17    # "isSystem":Z
    .end local v18    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8    # "isSystem":Z
    :cond_8
    move/from16 v17, v8

    .line 798
    .end local v8    # "isSystem":Z
    .restart local v17    # "isSystem":Z
    :goto_3
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_4

    .line 771
    .end local v17    # "isSystem":Z
    .restart local v8    # "isSystem":Z
    :cond_9
    move-object/from16 v1, p5

    move/from16 v17, v8

    .line 800
    .end local v8    # "isSystem":Z
    .restart local v17    # "isSystem":Z
    :goto_4
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 801
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    goto :goto_5

    .line 763
    .end local v17    # "isSystem":Z
    :cond_a
    move-object/from16 v1, p5

    move-object/from16 v16, v12

    .line 807
    :goto_5
    and-int/lit8 v8, p8, 0x1

    if-eqz v8, :cond_b

    .line 808
    const/16 v8, 0x3e7

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 809
    invoke-static {v12}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 810
    const/4 v12, 0x0

    invoke-virtual {v0, v12, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 814
    :cond_b
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 816
    .restart local v8    # "isSystem":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    if-eqz v8, :cond_c

    move-object/from16 v13, v16

    :cond_c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " resource path from "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 816
    invoke-static {v15, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 823
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 828
    .end local v8    # "isSystem":Z
    :cond_d
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 829
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v9, -0x402e0009

    and-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 835
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v9, p8, 0x1

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 836
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v9, p9, 0x8

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 838
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x20000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 840
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x40000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 842
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x80000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 844
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x200000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 846
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 848
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 849
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 850
    if-eqz v4, :cond_e

    .line 851
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 854
    :cond_e
    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    array-length v10, v5

    array-length v11, v6

    if-ne v10, v11, :cond_f

    .line 856
    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 857
    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_6

    .line 859
    :cond_f
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 860
    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 862
    :goto_6
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "value"    # I

    .line 2687
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2688
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2687
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2691
    goto :goto_0

    .line 2689
    :catch_0
    move-exception v0

    .line 2690
    .local v0, "ignored":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageSettings"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2597
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2599
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 2602
    .local v0, "removeUserIdFile":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2603
    return-void
.end method

.method private writePackageListLPrInternal(I)V
    .locals 18
    .param p1, "creatingUserId"    # I

    .line 2718
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "PackageSettings"

    const-string v0, " "

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v4

    .line 2719
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 2720
    .local v6, "userIds":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 2721
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    aput v8, v6, v7

    .line 2720
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2723
    .end local v7    # "i":I
    :cond_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 2724
    invoke-static {v6, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    .line 2728
    :cond_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2729
    .local v7, "tempFile":Ljava/io/File;
    new-instance v8, Lcom/android/internal/util/JournaledFile;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v8, v9, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2731
    .local v8, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    .line 2733
    .local v9, "writeTarget":Ljava/io/File;
    const/4 v10, 0x0

    .line 2735
    .local v10, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2736
    .local v11, "fstr":Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v11, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v10, v12

    .line 2737
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    const/16 v13, 0x1a0

    const/16 v14, 0x3e8

    const/16 v15, 0x408

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2739
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2740
    .local v12, "sb":Ljava/lang/StringBuilder;
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2741
    .local v14, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v15, :cond_9

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_9

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-nez v15, :cond_2

    move-object/from16 v17, v4

    move-object v4, v0

    goto/16 :goto_7

    .line 2749
    :cond_2
    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2750
    .local v15, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v15, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2751
    .local v5, "dataPath":Ljava/lang/String;
    iget v1, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 2752
    .local v1, "isDebug":Z
    :goto_2
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2755
    .local v2, "gids":[I
    move-object/from16 v17, v4

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v17, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v4, 0x20

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4

    .line 2756
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, v17

    const/4 v5, 0x1

    goto :goto_1

    .line 2775
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2776
    iget-object v4, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2778
    iget v4, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2779
    if-eqz v1, :cond_5

    const-string v4, " 1 "

    goto :goto_3

    :cond_5
    const-string v4, " 0 "

    :goto_3
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    iget-object v4, v15, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2783
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    if-eqz v2, :cond_7

    array-length v4, v2

    if-lez v4, :cond_7

    .line 2785
    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2786
    const/4 v4, 0x1

    move/from16 v16, v4

    .local v4, "i":I
    :goto_4
    move/from16 v16, v1

    .end local v1    # "isDebug":Z
    .local v16, "isDebug":Z
    array-length v1, v2

    if-ge v4, v1, :cond_6

    .line 2787
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2788
    aget v1, v2, v4

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2786
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v16

    goto :goto_4

    .end local v4    # "i":I
    :cond_6
    goto :goto_5

    .line 2784
    .end local v16    # "isDebug":Z
    .restart local v1    # "isDebug":Z
    :cond_7
    move/from16 v16, v1

    .line 2791
    .end local v1    # "isDebug":Z
    .restart local v16    # "isDebug":Z
    const-string/jumbo v1, "none"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    :goto_5
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2794
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "1"

    goto :goto_6

    :cond_8
    const-string v1, "0"

    :goto_6
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    move-object v4, v0

    iget-wide v0, v15, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    invoke-virtual {v10, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2799
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v17

    const/4 v5, 0x1

    .end local v2    # "gids":[I
    .end local v5    # "dataPath":Ljava/lang/String;
    .end local v14    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "isDebug":Z
    goto/16 :goto_1

    .line 2741
    .end local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v14    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_9
    move-object/from16 v17, v4

    move-object v4, v0

    .line 2743
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_7
    const-string v0, "android"

    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " due to missing metadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v17

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2743
    :cond_a
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v17

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2800
    .end local v14    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    move-object/from16 v17, v4

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 2801
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2802
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 2803
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2808
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    goto :goto_9

    .line 2804
    .end local v11    # "fstr":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    goto :goto_8

    .end local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    .line 2805
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_8
    const-string v1, "Failed to write packages.list"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2806
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2807
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2809
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method


# virtual methods
.method addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .locals 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "vc"    # J
    .param p12, "pkgFlags"    # I
    .param p13, "pkgPrivateFlags"    # I
    .param p14, "parentPackageName"    # Ljava/lang/String;
    .param p16, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p17, "usesStaticLibraryNames"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 528
    .local p15, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p9

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 529
    .local v13, "p":Lcom/android/server/pm/PackageSetting;
    const/16 v19, 0x0

    if-eqz v13, :cond_1

    .line 530
    iget v1, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v14, :cond_0

    .line 531
    return-object v13

    .line 533
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 535
    return-object v19

    .line 537
    :cond_1
    new-instance v20, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v1, v20

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object/from16 v21, v13

    .end local v13    # "p":Lcom/android/server/pm/PackageSetting;
    .local v21, "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v13, p13

    move v0, v14

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 541
    .end local v21    # "p":Lcom/android/server/pm/PackageSetting;
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 542
    move v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    return-object v1

    .line 546
    :cond_2
    return-object v19
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "origPkgName"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 555
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 556
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_0

    .line 557
    return-object v0

    .line 559
    :cond_0
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 561
    return-object v1

    .line 563
    :cond_1
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    .line 564
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 565
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-object v0

    .line 569
    :cond_2
    return-object v1
.end method

.method applyDefaultPreferredAppsLPw(I)V
    .locals 17
    .param p1, "userId"    # I

    .line 3211
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Error reading apps file "

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3212
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 3213
    .local v4, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3214
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget v7, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 3216
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3218
    .local v6, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 3219
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3220
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v8, v9, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 3218
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3224
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v7    # "i":I
    :cond_0
    goto :goto_0

    .line 3227
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v7, "etc/preferred-apps"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 3228
    .local v5, "preferredDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v16, v4

    goto/16 :goto_b

    .line 3231
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v7, " cannot be read"

    const-string v8, "PackageSettings"

    if-nez v0, :cond_3

    .line 3232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    return-void

    .line 3237
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-ge v11, v10, :cond_d

    aget-object v12, v9, v11

    .line 3238
    .local v12, "f":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v13, ".xml"

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Non-xml file "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " directory, ignoring"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 3242
    :cond_4
    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v13, "Preferred apps file "

    if-nez v0, :cond_5

    .line 3243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 3247
    :cond_5
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reading default preferred "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    :cond_6
    const/4 v14, 0x0

    .line 3250
    .local v14, "str":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v14, v0

    .line 3251
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v15, v0

    .line 3252
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    invoke-interface {v15, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3255
    :goto_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v0

    .local v16, "type":I
    const/4 v6, 0x2

    if-eq v0, v6, :cond_7

    move/from16 v6, v16

    move-object/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v6, "type":I
    .local v16, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    if-eq v6, v4, :cond_8

    move v6, v4

    move-object/from16 v4, v16

    goto :goto_3

    .end local v6    # "type":I
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v16, "type":I
    :cond_7
    move/from16 v6, v16

    move-object/from16 v16, v4

    const/4 v4, 0x1

    .line 3260
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v6    # "type":I
    .local v16, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_8
    const/4 v0, 0x2

    if-eq v6, v0, :cond_9

    .line 3261
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " does not have start tag"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3275
    nop

    .line 3277
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3279
    :goto_4
    goto/16 :goto_8

    .line 3278
    :catch_0
    move-exception v0

    .line 3279
    goto/16 :goto_8

    .line 3264
    :cond_9
    :try_start_3
    const-string/jumbo v0, "preferred-activities"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not start with \'preferred-activities\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3275
    nop

    .line 3277
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 3269
    :cond_a
    :try_start_5
    invoke-direct {v1, v15, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3275
    .end local v6    # "type":I
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 3277
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    .line 3272
    :catch_1
    move-exception v0

    goto :goto_5

    .line 3270
    :catch_2
    move-exception v0

    goto :goto_6

    .line 3275
    .end local v16    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    move-object v3, v0

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v16    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    goto :goto_9

    .line 3272
    .end local v16    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    .line 3273
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :goto_5
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3275
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v14, :cond_b

    .line 3277
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    .line 3270
    .end local v16    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .line 3271
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :goto_6
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3275
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v14, :cond_b

    .line 3277
    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 3279
    :goto_7
    goto :goto_8

    .line 3278
    :catch_5
    move-exception v0

    .line 3237
    .end local v12    # "f":Ljava/io/File;
    .end local v14    # "str":Ljava/io/InputStream;
    :cond_b
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 3275
    .restart local v12    # "f":Ljava/io/File;
    .restart local v14    # "str":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object v3, v0

    :goto_9
    if-eqz v14, :cond_c

    .line 3277
    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 3279
    goto :goto_a

    .line 3278
    :catch_6
    move-exception v0

    .line 3279
    :cond_c
    :goto_a
    throw v3

    .line 3283
    .end local v12    # "f":Ljava/io/File;
    .end local v14    # "str":Ljava/io/InputStream;
    .end local v16    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_d
    return-void

    .line 3228
    :cond_e
    move-object/from16 v16, v4

    .line 3229
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v16    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :goto_b
    return-void
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1371
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 1372
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimePermissionsGrantedLPr(I)Z

    move-result v0

    .line 1371
    return v0
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    .line 1229
    .local p2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1230
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v1, "PackageManager"

    if-nez v0, :cond_1

    .line 1231
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1236
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v2

    .line 1237
    .local v2, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v2, :cond_2

    .line 1238
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    move-object v2, v3

    .line 1239
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1240
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_3

    .line 1241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1245
    :cond_2
    invoke-virtual {v2, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    .line 1246
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_3

    .line 1247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting domains to existing IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and with domains: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    invoke-virtual {v2}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomainsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1247
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_3
    :goto_0
    return-object v2
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I[Ljava/lang/String;)V
    .locals 20
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 4089
    move-object/from16 v1, p0

    move/from16 v10, p3

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 4090
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 4091
    .local v0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    move v11, v3

    .line 4092
    .local v11, "packagesCount":I
    new-array v3, v11, [Ljava/lang/String;

    move-object v12, v3

    .line 4093
    .local v12, "volumeUuids":[Ljava/lang/String;
    new-array v3, v11, [Ljava/lang/String;

    move-object v13, v3

    .line 4094
    .local v13, "names":[Ljava/lang/String;
    new-array v3, v11, [I

    move-object v14, v3

    .line 4095
    .local v14, "appIds":[I
    new-array v3, v11, [Ljava/lang/String;

    move-object v15, v3

    .line 4096
    .local v15, "seinfos":[Ljava/lang/String;
    new-array v3, v11, [I

    move-object/from16 v16, v3

    .line 4097
    .local v16, "targetSdkVersions":[I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4098
    .local v3, "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_9

    .line 4099
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4100
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_8

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_0

    .line 4101
    move-object/from16 v6, p4

    goto/16 :goto_4

    .line 4105
    :cond_0
    const/16 v6, 0x3e7

    const/4 v7, 0x0

    if-ne v10, v6, :cond_1

    :try_start_2
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4106
    invoke-static {v6}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4107
    invoke-virtual {v5, v7, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4108
    move-object/from16 v6, p4

    goto/16 :goto_4

    .line 4118
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    .line 4119
    .local v6, "tempPartialDecision":Z
    const/4 v8, 0x1

    new-array v9, v8, [I

    const/16 v17, 0x16

    aput v17, v9, v7

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_4

    .line 4120
    :try_start_4
    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4121
    invoke-static {v9}, Lcom/android/server/pm/OpReserveAppInjector;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v8

    :goto_2
    or-int/2addr v6, v9

    .line 4123
    :cond_4
    if-eqz v6, :cond_5

    :try_start_5
    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4124
    move/from16 v17, v6

    move-object/from16 v6, p4

    .end local v6    # "tempPartialDecision":Z
    .local v17, "tempPartialDecision":Z
    :try_start_6
    invoke-static {v6, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-nez v9, :cond_6

    move v7, v8

    goto :goto_3

    .line 4123
    .end local v17    # "tempPartialDecision":Z
    .restart local v6    # "tempPartialDecision":Z
    :cond_5
    move/from16 v17, v6

    move-object/from16 v6, p4

    .line 4124
    .end local v6    # "tempPartialDecision":Z
    .restart local v17    # "tempPartialDecision":Z
    :cond_6
    nop

    .line 4129
    .local v7, "shouldInstall":Z
    :goto_3
    invoke-virtual {v5, v7, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4130
    if-nez v7, :cond_7

    .line 4131
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 4135
    :cond_7
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    aput-object v8, v12, v4

    .line 4136
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v8, v13, v4

    .line 4137
    iget v8, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v8, v14, v4

    .line 4138
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v8, v15, v4

    .line 4139
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v8, v16, v4

    goto :goto_4

    .line 4100
    .end local v7    # "shouldInstall":Z
    .end local v17    # "tempPartialDecision":Z
    :cond_8
    move-object/from16 v6, p4

    .line 4098
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 4141
    .end local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v3    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v4    # "i":I
    .end local v11    # "packagesCount":I
    .end local v12    # "volumeUuids":[Ljava/lang/String;
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "appIds":[I
    .end local v15    # "seinfos":[Ljava/lang/String;
    .end local v16    # "targetSdkVersions":[I
    :catchall_0
    move-exception v0

    move-object/from16 v6, p4

    goto :goto_8

    .line 4098
    .restart local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v3    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v4    # "i":I
    .restart local v11    # "packagesCount":I
    .restart local v12    # "volumeUuids":[Ljava/lang/String;
    .restart local v13    # "names":[Ljava/lang/String;
    .restart local v14    # "appIds":[I
    .restart local v15    # "seinfos":[Ljava/lang/String;
    .restart local v16    # "targetSdkVersions":[I
    :cond_9
    move-object/from16 v6, p4

    .line 4141
    .end local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v3    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v4    # "i":I
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4142
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_5
    if-ge v9, v11, :cond_b

    .line 4143
    aget-object v0, v13, v9

    if-nez v0, :cond_a

    .line 4144
    move/from16 v19, v9

    goto :goto_7

    .line 4147
    :cond_a
    const/16 v17, 0x3

    .line 4149
    .local v17, "flags":I
    :try_start_7
    aget-object v3, v12, v9

    aget-object v4, v13, v9

    const/4 v0, 0x3

    aget v7, v14, v9

    aget-object v8, v15, v9

    aget v18, v16, v9
    :try_end_7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move v6, v0

    move/from16 v19, v9

    .end local v9    # "i":I
    .local v19, "i":I
    move/from16 v9, v18

    :try_start_8
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_8} :catch_0

    .line 4153
    goto :goto_7

    .line 4151
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v19    # "i":I
    .restart local v9    # "i":I
    :catch_1
    move-exception v0

    move/from16 v19, v9

    .line 4152
    .end local v9    # "i":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v19    # "i":I
    :goto_6
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4142
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v17    # "flags":I
    :goto_7
    add-int/lit8 v9, v19, 0x1

    move-object/from16 v6, p4

    .end local v19    # "i":I
    .restart local v9    # "i":I
    goto :goto_5

    :cond_b
    move/from16 v19, v9

    .line 4155
    .end local v9    # "i":I
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 4156
    :try_start_9
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4157
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4161
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/pm/OpChinaGMSInjector;->setGMSEnabledSetting(Landroid/os/UserHandle;I)V

    .line 4164
    return-void

    .line 4157
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    .line 4141
    .end local v11    # "packagesCount":I
    .end local v12    # "volumeUuids":[Ljava/lang/String;
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "appIds":[I
    .end local v15    # "seinfos":[Ljava/lang/String;
    .end local v16    # "targetSdkVersions":[I
    :catchall_2
    move-exception v0

    :goto_8
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "replaced"    # Z

    .line 466
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 467
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not an installed package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v1

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 473
    .local v2, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_3

    .line 474
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 478
    :cond_1
    if-eqz p2, :cond_2

    .line 483
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .local v1, "disabled":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 485
    .end local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_2
    move-object v1, v0

    .line 487
    .restart local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v3, 0x1

    return v3

    .line 491
    .end local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_3
    return v1
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 5166
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const-string v5, "activities:"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5167
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    const-string/jumbo v5, "services:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5168
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    const-string/jumbo v5, "receivers:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5169
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    const-string/jumbo v5, "providers:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5170
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    const-string v5, "instrumentations:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5171
    return-void
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;>;)V"
        }
    .end annotation

    .line 5175
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/PackageParser$Component<*>;>;"
    invoke-static {p5}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 5176
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 5177
    return-void

    .line 5179
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5181
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Component;

    .line 5182
    .local v2, "component":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5183
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Component;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5180
    .end local v2    # "component":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5185
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    .line 5099
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5101
    const-string v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5102
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 5101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5104
    :cond_0
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            ")V"
        }
    .end annotation

    .line 5149
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 5150
    .local v0, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "install permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5153
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_0

    .line 5154
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5155
    goto :goto_0

    .line 5157
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5158
    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5159
    nop

    .line 5160
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    .line 5159
    const-string v4, ", flags="

    invoke-static {v4, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5161
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 5163
    :cond_1
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p7, "date"    # Ljava/util/Date;
    .param p9, "dumpAll"    # Z
    .param p10, "dumpAllComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 4541
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    if-eqz v9, :cond_d

    .line 4542
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4543
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4544
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4545
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4546
    iget v1, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4547
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4548
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4549
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4550
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4551
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4552
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4553
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4554
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4555
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4556
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const-string v3, "-"

    if-eqz v1, :cond_2

    .line 4557
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "splt,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4558
    const-string v4, "base,"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4559
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4560
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 4561
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 4562
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4563
    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4564
    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v5, v5, v4

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4561
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4568
    .end local v4    # "i":I
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4569
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4570
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4571
    const-string/jumbo v5, "usr"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4572
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4573
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4574
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4575
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "I"

    goto :goto_4

    :cond_3
    const-string v5, "i"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4576
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "B"

    goto :goto_5

    :cond_4
    const-string v5, "b"

    :goto_5
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4577
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "SU"

    goto :goto_6

    :cond_5
    const-string/jumbo v5, "su"

    :goto_6
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4578
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "S"

    goto :goto_7

    :cond_6
    const-string/jumbo v5, "s"

    :goto_7
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4579
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "l"

    goto :goto_8

    :cond_7
    const-string v5, "L"

    :goto_8
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4580
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "IA"

    goto :goto_9

    :cond_8
    const-string v5, "ia"

    :goto_9
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4581
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "VPI"

    goto :goto_a

    :cond_9
    const-string/jumbo v5, "vpi"

    :goto_a
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4582
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v5

    .line 4583
    .local v5, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v5, :cond_a

    const-string v13, "HA"

    goto :goto_b

    :cond_a
    const-string v13, "ha"

    :goto_b
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4584
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4585
    iget v13, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v13}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 4586
    iget v13, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v13}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v13

    .line 4587
    .local v13, "lastDisabledAppCaller":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4588
    if-eqz v13, :cond_b

    move-object v14, v13

    goto :goto_c

    :cond_b
    move-object v14, v2

    :goto_c
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4589
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4591
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "harmfulAppWarning":Ljava/lang/String;
    .end local v13    # "lastDisabledAppCaller":Ljava/lang/String;
    goto/16 :goto_3

    .line 4592
    :cond_c
    return-void

    .line 4595
    :cond_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4596
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_d

    :cond_e
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_d
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4597
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4598
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4599
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4601
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 4602
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4603
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4606
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4608
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_10

    .line 4609
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4611
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4612
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4613
    if-nez v10, :cond_11

    .line 4614
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4615
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4616
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4617
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4618
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4620
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4621
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_12

    .line 4622
    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4623
    const-string v0, " targetSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4625
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4626
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const-string v13, "    "

    if-eqz v0, :cond_30

    .line 4627
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    const-string v1, "]"

    const-string v2, ", "

    if-eqz v0, :cond_16

    .line 4628
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 4629
    .local v0, "parentPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4630
    .local v3, "pps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_13

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 4631
    :cond_13
    iget-object v4, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4633
    :cond_14
    if-eqz v3, :cond_1d

    .line 4634
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  parentPackage="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4635
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_15

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_e

    :cond_15
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_e
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 4637
    .end local v0    # "parentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "pps":Lcom/android/server/pm/PackageSetting;
    :cond_16
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 4638
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  childPackages=["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4639
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4640
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_1c

    .line 4641
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 4642
    .local v4, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v5, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v14, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4643
    .local v5, "cps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_17

    iget-object v14, v5, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v15, v4, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    .line 4644
    :cond_17
    iget-object v14, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v15, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v5, v14

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4646
    :cond_18
    if-eqz v5, :cond_1b

    .line 4647
    if-lez v3, :cond_19

    .line 4648
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4650
    :cond_19
    iget-object v14, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v14, :cond_1a

    iget-object v14, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_10

    :cond_1a
    iget-object v14, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_10
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4640
    .end local v4    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "cps":Lcom/android/server/pm/PackageSetting;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4653
    .end local v3    # "i":I
    :cond_1c
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4637
    .end local v0    # "childCount":I
    :cond_1d
    :goto_11
    nop

    .line 4655
    :goto_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4656
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v7, v0}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4657
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 4658
    .local v0, "apkSigningVersion":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  apkSigningVersion="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4659
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  applicationInfo="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4660
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4661
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  flags="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4662
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4663
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v3, :cond_1e

    .line 4664
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  privateFlags="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4665
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4667
    :cond_1e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  dataDir="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4668
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  supportsScreens=["

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4669
    const/4 v3, 0x1

    .line 4670
    .local v3, "first":Z
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_20

    .line 4671
    if-nez v3, :cond_1f

    .line 4672
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4673
    :cond_1f
    const/4 v3, 0x0

    .line 4674
    const-string/jumbo v4, "small"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4676
    :cond_20
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_22

    .line 4677
    if-nez v3, :cond_21

    .line 4678
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4679
    :cond_21
    const/4 v3, 0x0

    .line 4680
    const-string/jumbo v4, "medium"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4682
    :cond_22
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_24

    .line 4683
    if-nez v3, :cond_23

    .line 4684
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4685
    :cond_23
    const/4 v3, 0x0

    .line 4686
    const-string/jumbo v4, "large"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4688
    :cond_24
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_26

    .line 4689
    if-nez v3, :cond_25

    .line 4690
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4691
    :cond_25
    const/4 v3, 0x0

    .line 4692
    const-string/jumbo v4, "xlarge"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4694
    :cond_26
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_28

    .line 4695
    if-nez v3, :cond_27

    .line 4696
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4697
    :cond_27
    const/4 v3, 0x0

    .line 4698
    const-string/jumbo v4, "resizeable"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4700
    :cond_28
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_2a

    .line 4701
    if-nez v3, :cond_29

    .line 4702
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4703
    :cond_29
    const/4 v3, 0x0

    .line 4704
    const-string v2, "anyDensity"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4706
    :cond_2a
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4707
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 4708
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  dynamic libraries:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4709
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 4710
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4711
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4709
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4714
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    const-string v2, " version:"

    if-eqz v1, :cond_2c

    .line 4715
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  static library:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4716
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4717
    const-string/jumbo v1, "name:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4718
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-wide v4, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {v7, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4720
    :cond_2c
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    .line 4721
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  usesLibraries:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4722
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_14
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2d

    .line 4723
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4722
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 4726
    .end local v1    # "i":I
    :cond_2d
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v1, :cond_2e

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 4727
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2e

    .line 4728
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  usesStaticLibraries:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4729
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_15
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2e

    .line 4730
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4731
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4732
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    aget-wide v4, v4, v1

    invoke-virtual {v7, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4729
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 4735
    .end local v1    # "i":I
    :cond_2e
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v1, :cond_2f

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4736
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 4737
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  usesOptionalLibraries:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_16
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 4739
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4740
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 4743
    .end local v1    # "i":I
    :cond_2f
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_30

    .line 4745
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  usesLibraryFiles:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_17
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_30

    .line 4747
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 4751
    .end local v0    # "apkSigningVersion":I
    .end local v1    # "i":I
    .end local v3    # "first":Z
    :cond_30
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4752
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4753
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4754
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4755
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4756
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4758
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4759
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4760
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 4761
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4762
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4764
    :cond_31
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 4765
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4766
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4768
    :cond_32
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4769
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4770
    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4771
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4772
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4773
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4775
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_33

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 4776
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4777
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    :cond_33
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_38

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_38

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_38

    .line 4781
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 4782
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4783
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 4784
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 4785
    .local v2, "perm":Landroid/content/pm/PackageParser$Permission;
    if-eqz v10, :cond_34

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4786
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 4787
    goto :goto_19

    .line 4789
    :cond_34
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4790
    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4791
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4792
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    .line 4793
    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4795
    :cond_35
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_36

    .line 4796
    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4798
    :cond_36
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_37

    .line 4799
    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4801
    :cond_37
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4783
    .end local v2    # "perm":Landroid/content/pm/PackageParser$Permission;
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 4805
    .end local v0    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    .end local v1    # "i":I
    :cond_38
    if-nez v10, :cond_39

    if-eqz p9, :cond_3c

    :cond_39
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_3c

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4807
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 4808
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4809
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4810
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 4811
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4812
    .local v2, "perm":Ljava/lang/String;
    if-eqz v10, :cond_3a

    .line 4813
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 4814
    goto :goto_1b

    .line 4816
    :cond_3a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4817
    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 4818
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 4819
    const-string v4, ": restricted=true"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    .line 4821
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4810
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 4826
    .end local v0    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_3c
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "  "

    if-eqz v0, :cond_3d

    if-nez v10, :cond_3d

    if-eqz p9, :cond_3e

    .line 4827
    :cond_3d
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4828
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v10, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4831
    .end local v0    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_3e
    if-eqz p10, :cond_3f

    .line 4832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v11}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 4835
    :cond_3f
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 4836
    .local v15, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4837
    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4838
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4839
    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4840
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4841
    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4842
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4843
    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4844
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4845
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4846
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 4847
    .local v0, "pus":Landroid/content/pm/PackageUserState;
    const-string v1, " suspendingPackage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4848
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4849
    const-string v1, " dialogInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4850
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4852
    .end local v0    # "pus":Landroid/content/pm/PackageUserState;
    :cond_40
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4853
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4854
    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4855
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4856
    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4857
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4858
    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4859
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4860
    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4861
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4863
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v5

    .line 4864
    .local v5, "overlayPaths":[Ljava/lang/String;
    if-eqz v5, :cond_41

    array-length v0, v5

    if-lez v0, :cond_41

    .line 4865
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4866
    array-length v0, v5

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_41

    aget-object v2, v5, v1

    .line 4867
    .local v2, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4866
    .end local v2    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 4871
    :cond_41
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v4

    .line 4872
    .local v4, "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v4, :cond_42

    .line 4873
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4874
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4877
    :cond_42
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_43

    .line 4878
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 4879
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 4881
    invoke-virtual {v3, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v16

    .line 4880
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v17, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v3, p4

    move-object/from16 v18, v4

    .end local v4    # "lastDisabledAppCaller":Ljava/lang/String;
    .local v18, "lastDisabledAppCaller":Ljava/lang/String;
    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "overlayPaths":[Ljava/lang/String;
    .local v16, "overlayPaths":[Ljava/lang/String;
    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    goto :goto_1e

    .line 4877
    .end local v16    # "overlayPaths":[Ljava/lang/String;
    .end local v17    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v4    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v5    # "overlayPaths":[Ljava/lang/String;
    :cond_43
    move-object/from16 v18, v4

    move-object/from16 v16, v5

    .line 4884
    .end local v4    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v5    # "overlayPaths":[Ljava/lang/String;
    .restart local v16    # "overlayPaths":[Ljava/lang/String;
    .restart local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    :goto_1e
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    .line 4885
    .local v0, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 4886
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    :cond_44
    if-nez v10, :cond_46

    .line 4891
    iget v1, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4892
    .local v1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, "      "

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_45

    .line 4893
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    disabledComponents:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4894
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4895
    .local v4, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4896
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_1f

    .line 4898
    :cond_45
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4899
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_46

    .line 4900
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    enabledComponents:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4901
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4902
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4903
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_20

    .line 4906
    .end local v0    # "harmfulAppWarning":Ljava/lang/String;
    .end local v1    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "overlayPaths":[Ljava/lang/String;
    .end local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    :cond_46
    goto/16 :goto_1c

    .line 4907
    :cond_47
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 4911
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4912
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 4913
    .local v7, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 4914
    .local v0, "printedSomething":Z
    nop

    .line 4915
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v19

    .line 4916
    .local v19, "dumpAllComponents":Z
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v20

    .line 4917
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 4918
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_0

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4919
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4920
    goto :goto_0

    .line 4922
    :cond_0
    if-eqz v12, :cond_1

    .line 4923
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4924
    goto :goto_0

    .line 4927
    :cond_1
    if-nez p5, :cond_2

    if-eqz v13, :cond_2

    .line 4928
    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 4931
    :cond_2
    if-nez p5, :cond_4

    if-nez v0, :cond_4

    .line 4932
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4933
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4934
    :cond_3
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4935
    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_1

    .line 4937
    :cond_4
    move/from16 v17, v0

    .end local v0    # "printedSomething":Z
    .local v17, "printedSomething":Z
    :goto_1
    if-eqz p5, :cond_5

    const-string/jumbo v0, "pkg"

    move-object v4, v0

    :cond_5
    if-eqz v13, :cond_6

    move v9, v2

    goto :goto_2

    :cond_6
    move v9, v3

    :goto_2
    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move-object/from16 v4, p3

    move-object v5, v10

    move-object/from16 v8, v20

    move-object/from16 v18, v10

    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v18, "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 4939
    .end local v18    # "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, v17

    goto :goto_0

    .line 4941
    .end local v17    # "printedSomething":Z
    .restart local v0    # "printedSomething":Z
    :cond_7
    const/4 v0, 0x0

    .line 4942
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_d

    if-nez v12, :cond_d

    .line 4943
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4944
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 4945
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 4946
    goto :goto_3

    .line 4948
    :cond_8
    if-nez p5, :cond_b

    .line 4949
    if-nez v0, :cond_a

    .line 4950
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4951
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4952
    :cond_9
    const-string v8, "Renamed packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4953
    const/4 v0, 0x1

    .line 4955
    :cond_a
    const-string v8, "  "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 4957
    :cond_b
    const-string/jumbo v8, "ren,"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4959
    :goto_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4960
    if-eqz p5, :cond_c

    const-string v8, " -> "

    goto :goto_5

    :cond_c
    const-string v8, ","

    :goto_5
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4961
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4962
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 4965
    :cond_d
    const/4 v0, 0x0

    .line 4966
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_13

    if-nez v12, :cond_13

    .line 4967
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4968
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_e

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4969
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 4970
    goto :goto_6

    .line 4972
    :cond_e
    if-nez p5, :cond_10

    if-nez v0, :cond_10

    .line 4973
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4974
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4975
    :cond_f
    const-string v8, "Hidden system packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    const/4 v0, 0x1

    .line 4978
    :cond_10
    if-eqz p5, :cond_11

    const-string v8, "dis"

    move-object/from16 v16, v8

    goto :goto_7

    :cond_11
    move-object/from16 v16, v4

    :goto_7
    if-eqz v13, :cond_12

    move/from16 v17, v2

    goto :goto_8

    :cond_12
    move/from16 v17, v3

    :goto_8
    const-string v10, "  "

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, v16

    move-object/from16 v12, p3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v20

    move/from16 v18, v19

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 4980
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v11, p4

    goto :goto_6

    .line 4982
    :cond_13
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4985
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 4987
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 4988
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4989
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4990
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    .line 4988
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4992
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 4996
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V

    .line 4998
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5071
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5072
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5073
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .line 5108
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_2

    .line 5109
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5110
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5111
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_1

    .line 5112
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5113
    goto :goto_0

    .line 5115
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5116
    const-string v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5117
    nop

    .line 5118
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    .line 5117
    const-string v3, ", flags="

    invoke-static {v3, v2}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5119
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 5121
    :cond_2
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 5002
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 5003
    .local v0, "printedSomething":Z
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 5004
    .local v10, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_0

    .line 5005
    goto :goto_0

    .line 5007
    :cond_0
    if-eqz v8, :cond_1

    .line 5008
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5009
    goto :goto_0

    .line 5011
    :cond_1
    if-nez p5, :cond_b

    .line 5012
    if-nez v0, :cond_3

    .line 5013
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5014
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5015
    :cond_2
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5016
    const/4 v0, 0x1

    move v11, v0

    goto :goto_1

    .line 5012
    :cond_3
    move v11, v0

    .line 5019
    .end local v0    # "printedSomething":Z
    .local v11, "printedSomething":Z
    :goto_1
    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5020
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5021
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5022
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5023
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5025
    const-string v12, "    "

    .line 5026
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5028
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Packages"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5029
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 5030
    .local v13, "numPackages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const-string v14, "  "

    if-ge v0, v13, :cond_5

    .line 5031
    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5032
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_4

    .line 5033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5035
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "NULL?!"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5030
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5039
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x4

    move-object/from16 v15, p4

    invoke-virtual {v15, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5040
    move v0, v11

    goto/16 :goto_0

    .line 5043
    :cond_6
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 5044
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v6, v7, v12, v8, v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 5046
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    array-length v3, v4

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_4
    if-ge v2, v3, :cond_a

    aget v1, v4, v2

    .line 5047
    .local v1, "userId":I
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v0

    .line 5048
    .local v0, "gids":[I
    nop

    .line 5049
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v17

    .line 5050
    .local v17, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v18, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_7

    .line 5051
    :cond_8
    :goto_5
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v18, v2

    const-string v2, "User "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v0}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_9

    const/16 v19, 0x1

    goto :goto_6

    :cond_9
    move/from16 v19, v16

    :goto_6
    move-object/from16 v20, v0

    .end local v0    # "gids":[I
    .local v20, "gids":[I
    move-object/from16 v0, p0

    move/from16 v21, v1

    .end local v1    # "userId":I
    .local v21, "userId":I
    move-object/from16 v1, p1

    move/from16 v22, v3

    move-object/from16 v3, p3

    move-object/from16 v23, v4

    move-object/from16 v4, v17

    move-object/from16 v24, v5

    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v24, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 5046
    .end local v17    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v20    # "gids":[I
    .end local v21    # "userId":I
    :goto_7
    add-int/lit8 v2, v18, 0x1

    move/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_4

    .end local v24    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_a
    move-object/from16 v24, v5

    .line 5057
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "numPackages":I
    move v0, v11

    goto :goto_8

    .line 5058
    .end local v11    # "printedSomething":Z
    .local v0, "printedSomething":Z
    :cond_b
    move-object/from16 v15, p4

    const-string/jumbo v1, "suid,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5060
    .end local v10    # "su":Lcom/android/server/pm/SharedUserSetting;
    :goto_8
    goto/16 :goto_0

    .line 5061
    :cond_c
    move-object/from16 v15, p4

    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5064
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5065
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5066
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5065
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5068
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4516
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4518
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4519
    .local v1, "volumeUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4520
    .local v2, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4521
    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4522
    :cond_0
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4523
    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4525
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4527
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4528
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "sdkVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4529
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "databaseVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4530
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4531
    iget-object v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    const-string v4, "fingerprint"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4532
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4533
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4517
    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4535
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4536
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1201
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1202
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_0

    .line 1203
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    .line 1204
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1206
    :cond_0
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1192
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1193
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1194
    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1195
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1197
    :cond_0
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1183
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1184
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1185
    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1186
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1188
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 20
    .param p1, "name"    # Ljava/lang/String;

    .line 495
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 496
    .local v15, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v15, :cond_0

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v2, 0x0

    return-object v2

    .line 501
    :cond_0
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_1

    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 504
    :cond_1
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v15, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v6, v15, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v8, v15, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    iget v9, v15, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-wide v10, v15, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget v12, v15, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v13, v15, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    move-object/from16 v18, v2

    move-object v2, v15

    .end local v15    # "p":Lcom/android/server/pm/PackageSetting;
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    move-object v15, v0

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v19

    .end local v2    # "p":Lcom/android/server/pm/PackageSetting;
    .local v18, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {v0 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 510
    .local v0, "ret":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 1388
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1389
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_0

    .line 1390
    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    .line 1391
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    :cond_0
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4341
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4342
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4345
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    .line 4343
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1829
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1830
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1831
    const/4 v1, 0x0

    return v1

    .line 1833
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getChildSettingsLPr(Lcom/android/server/pm/PackageSetting;)[Lcom/android/server/pm/PackageSetting;
    .locals 5
    .param p1, "parentPackageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 4304
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4307
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4308
    .local v0, "childCount":I
    new-array v1, v0, [Lcom/android/server/pm/PackageSetting;

    .line 4310
    .local v1, "children":[Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4311
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    aput-object v3, v1, v2

    .line 4310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4313
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 4305
    .end local v0    # "childCount":I
    .end local v1    # "children":[Lcom/android/server/pm/PackageSetting;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4349
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4350
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4351
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 4354
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4355
    .local v2, "classNameStr":Ljava/lang/String;
    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 4352
    .end local v2    # "classNameStr":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getDefaultRuntimePermissionsVersionLPr(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1380
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersionLPr(I)I

    move-result v0

    return v0
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "enabledPackageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 4290
    if-nez p1, :cond_0

    .line 4291
    const/4 v0, 0x0

    return-object v0

    .line 4293
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 4280
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4281
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4409
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4410
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4413
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4411
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4325
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4326
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4329
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1

    .line 4327
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1216
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1217
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1218
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1223
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1256
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1257
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1258
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1263
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .line 1293
    if-nez p1, :cond_0

    .line 1294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1296
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1298
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    .line 1299
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1300
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1301
    goto :goto_0

    .line 1303
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_0

    .line 1305
    :cond_3
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .locals 3
    .param p1, "appId"    # I

    .line 1151
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1153
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1154
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SettingBase;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 1156
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SettingBase;

    return-object v0
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "pkgPrivateFlags"    # I
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 447
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 448
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 449
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 450
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New shared user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 452
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 458
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .line 4243
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    .line 4244
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4246
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4249
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 4449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4450
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4451
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4452
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4453
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4450
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4456
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method hasOtherDisabledSystemPkgWithChildLPr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "parentPackageName"    # Ljava/lang/String;
    .param p2, "childPackageName"    # Ljava/lang/String;

    .line 4254
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4255
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 4256
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4257
    .local v2, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4258
    goto :goto_2

    .line 4260
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4261
    goto :goto_2

    .line 4263
    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 4264
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 4265
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4266
    .local v5, "currChildPackageName":Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4267
    const/4 v6, 0x1

    return v6

    .line 4264
    .end local v5    # "currChildPackageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4255
    .end local v2    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "childCount":I
    .end local v4    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4271
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 923
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 924
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 928
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_1

    .line 929
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Lcom/android/server/pm/OpSettingsInjector;->changeShareUid(Landroid/util/ArrayMap;Lcom/android/server/pm/PackageSetting;)V

    .line 937
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 938
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 3
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 4317
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4318
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4320
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4321
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4333
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4334
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4337
    iget-boolean v1, v0, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    return v1

    .line 4335
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 1405
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    return-void
.end method

.method pruneSharedUsersLPw()V
    .locals 8

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v0, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 575
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 576
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_0

    .line 577
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    goto :goto_0

    .line 581
    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 582
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 583
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 584
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 586
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    goto :goto_1

    .line 587
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 588
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_3
    goto :goto_0

    .line 591
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 592
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 594
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1942
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1944
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1946
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1947
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6

    .line 1948
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1949
    goto :goto_0

    .line 1952
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1953
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1954
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1955
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1956
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1957
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v6, " status="

    const-string v7, "PackageSettings"

    if-eqz v5, :cond_3

    .line 1959
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1960
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_4

    .line 1961
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restored IVI for existing app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1961
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1965
    :cond_3
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_4

    .line 1967
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restored IVI for pending app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1967
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    :goto_1
    goto :goto_2

    .line 1972
    :cond_5
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1972
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1975
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1977
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 1978
    :cond_6
    return-void
.end method

.method readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1548
    .local v0, "outerDepth":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1549
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1550
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1551
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1552
    goto :goto_0

    .line 1554
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1555
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1556
    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1557
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1558
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 1559
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1561
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1562
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1564
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1565
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1566
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 1568
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1570
    :goto_2
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1522
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1524
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1525
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1526
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1527
    goto :goto_0

    .line 1529
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1530
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1531
    const/4 v3, 0x0

    const-string/jumbo v4, "packageName"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1532
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1533
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_3
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1536
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1538
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1539
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1541
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1542
    :cond_5
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2200
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2202
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_c

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    .line 2204
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v9, p0

    goto/16 :goto_7

    .line 2205
    :cond_1
    :goto_1
    if-eq v4, v3, :cond_b

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    .line 2207
    goto :goto_0

    .line 2209
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2210
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "PackageManager"

    if-eqz v6, :cond_a

    .line 2211
    const/4 v6, 0x0

    const-string/jumbo v8, "name"

    invoke-interface {v0, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2213
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v10

    .line 2214
    .local v10, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v10, :cond_3

    .line 2215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2217
    goto :goto_0

    .line 2220
    :cond_3
    const-string v11, "granted"

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2221
    .local v11, "grantedStr":Ljava/lang/String;
    const/4 v12, 0x0

    if-eqz v11, :cond_5

    .line 2222
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    move v5, v12

    goto :goto_3

    :cond_5
    :goto_2
    nop

    .line 2224
    .local v5, "granted":Z
    :goto_3
    const-string v13, "flags"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2225
    .local v6, "flagsStr":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 2226
    const/16 v12, 0x10

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_4

    :cond_6
    nop

    .line 2228
    .local v12, "flags":I
    :goto_4
    const-string v13, "Permission already added: "

    const/4 v15, -0x1

    if-eqz v5, :cond_8

    .line 2229
    invoke-virtual {v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v14

    if-ne v14, v15, :cond_7

    .line 2231
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 2234
    :cond_7
    const v7, 0xfbff

    invoke-virtual {v1, v10, v15, v7, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_5

    .line 2238
    :cond_8
    invoke-virtual {v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v14

    if-ne v14, v15, :cond_9

    .line 2240
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 2243
    :cond_9
    const v7, 0xfbff

    invoke-virtual {v1, v10, v15, v7, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2247
    .end local v5    # "granted":Z
    .end local v6    # "flagsStr":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "grantedStr":Ljava/lang/String;
    .end local v12    # "flags":I
    :goto_5
    goto :goto_6

    .line 2248
    :cond_a
    move-object/from16 v9, p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <permissions>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2248
    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2252
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_6
    goto/16 :goto_0

    .line 2205
    :cond_b
    move-object/from16 v9, p0

    goto/16 :goto_0

    .line 2202
    :cond_c
    move-object/from16 v9, p0

    .line 2253
    :goto_7
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2972
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, p0

    const-string v2, "No start tag found in package manager settings"

    const/4 v3, 0x0

    .line 2973
    .local v3, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x4

    const-string v5, "PackageManager"

    if-eqz v0, :cond_1

    .line 2975
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 2976
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v6, "Reading from backup settings file\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2977
    const-string v0, "Need to read from backup settings file"

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2979
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up settings file "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2989
    :cond_0
    goto :goto_0

    .line 2987
    :catch_0
    move-exception v0

    .line 2992
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2993
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2994
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2995
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2998
    const-string v6, "Error reading package manager settings"

    const-string v7, "Error reading settings: "

    const-string v8, "Error reading: "

    const-string/jumbo v9, "primary_physical"

    const/4 v10, 0x1

    const/4 v11, 0x6

    const/4 v12, 0x0

    if-nez v3, :cond_3

    .line 2999
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3000
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No settings file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    const-string v0, "No settings file; creating initial state"

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3005
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3006
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3007
    return v12

    .line 3009
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v13, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 3011
    :cond_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v13, v0

    .line 3012
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3015
    :goto_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    .local v14, "type":I
    const/4 v15, 0x2

    if-eq v0, v15, :cond_4

    if-eq v14, v10, :cond_4

    goto :goto_1

    .line 3020
    :cond_4
    if-eq v14, v15, :cond_5

    .line 3021
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    const/4 v0, 0x5

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3024
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    return v12

    .line 3029
    :cond_5
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v2, v0

    .line 3030
    .local v2, "outerDepth":I
    :goto_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    if-eq v0, v10, :cond_1d

    const/4 v0, 0x3

    if-ne v14, v0, :cond_6

    .line 3031
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v2, :cond_1d

    .line 3032
    :cond_6
    if-eq v14, v0, :cond_1c

    if-ne v14, v4, :cond_7

    .line 3033
    goto/16 :goto_6

    .line 3036
    :cond_7
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 3037
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3038
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3039
    :cond_8
    const-string/jumbo v0, "permissions"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3040
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3041
    :cond_9
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3042
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3043
    :cond_a
    const-string/jumbo v0, "shared-user"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3044
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3045
    :cond_b
    const-string/jumbo v0, "preferred-packages"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_5

    .line 3047
    :cond_c
    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3050
    invoke-virtual {v1, v13, v12}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_5

    .line 3051
    :cond_d
    const-string/jumbo v0, "persistent-preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3054
    invoke-direct {v1, v13, v12}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_5

    .line 3055
    :cond_e
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3058
    invoke-direct {v1, v13, v12}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_5

    .line 3059
    :cond_f
    const-string v0, "default-browser"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3060
    invoke-virtual {v1, v13, v12}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_5

    .line 3061
    :cond_10
    const-string/jumbo v0, "updated-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3062
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3063
    :cond_11
    const-string/jumbo v0, "renamed-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_13

    .line 3064
    const-string/jumbo v0, "new"

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3065
    .local v0, "nname":Ljava/lang/String;
    const-string/jumbo v10, "old"

    invoke-interface {v13, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3066
    .local v4, "oname":Ljava/lang/String;
    if-eqz v0, :cond_12

    if-eqz v4, :cond_12

    .line 3067
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    .end local v0    # "nname":Ljava/lang/String;
    .end local v4    # "oname":Ljava/lang/String;
    :cond_12
    goto/16 :goto_5

    :cond_13
    const-string/jumbo v0, "restored-ivi"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3070
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3071
    :cond_14
    const-string/jumbo v0, "last-platform-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3073
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3075
    .local v0, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 3078
    .local v4, "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string v10, "internal"

    invoke-static {v13, v10, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3079
    const-string v10, "external"

    invoke-static {v13, v10, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3080
    const-string v10, "fingerprint"

    .line 3081
    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3083
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v4    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_5

    :cond_15
    const-string v0, "database-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3085
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3087
    .restart local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 3090
    .restart local v4    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string v10, "internal"

    invoke-static {v13, v10, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3091
    const-string v10, "external"

    invoke-static {v13, v10, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3093
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v4    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_5

    :cond_16
    const-string/jumbo v0, "verifier"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3094
    const-string v0, "device"

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v0

    .line 3096
    .local v4, "deviceIdentity":Ljava/lang/String;
    :try_start_2
    invoke-static {v4}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3100
    goto :goto_3

    .line 3097
    :catch_1
    move-exception v0

    .line 3098
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discard invalid verifier device id: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3098
    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "deviceIdentity":Ljava/lang/String;
    :goto_3
    goto/16 :goto_5

    :cond_17
    const-string/jumbo v0, "read-external-storage"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3102
    const-string v0, "enforcement"

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3103
    .local v0, "enforcement":Ljava/lang/String;
    nop

    .line 3104
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_18
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    iput-object v4, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 3105
    .end local v0    # "enforcement":Ljava/lang/String;
    goto :goto_5

    :cond_19
    const-string/jumbo v0, "keyset-settings"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3106
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_5

    .line 3107
    :cond_1a
    const-string/jumbo v0, "version"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3108
    const-string/jumbo v0, "volumeUuid"

    invoke-static {v13, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3110
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 3111
    .local v4, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v10, "sdkVersion"

    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3112
    const-string v10, "databaseVersion"

    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3113
    const-string v10, "fingerprint"

    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3114
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v4    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    goto :goto_5

    .line 3115
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <packages>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3115
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3119
    .end local v15    # "tagName":Ljava/lang/String;
    :goto_5
    nop

    .line 3030
    :cond_1c
    :goto_6
    const/4 v4, 0x4

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 3121
    :cond_1d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v2    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    goto :goto_7

    .line 3128
    :catch_2
    move-exception v0

    .line 3129
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3131
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 3123
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 3124
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3126
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3132
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    nop

    .line 3145
    :goto_8
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3147
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_20

    .line 3148
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3149
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v5

    .line 3150
    .local v5, "sharedUserId":I
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v6

    .line 3151
    .local v6, "idObj":Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_1e

    .line 3152
    move-object v7, v6

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    .line 3153
    .local v7, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    iput-object v7, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3154
    iget v8, v7, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v8, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3155
    invoke-direct {v1, v4, v7}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 3156
    .end local v7    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_a

    :cond_1e
    const-string v7, " has shared uid "

    const-string v8, "Bad package setting: package "

    if-eqz v6, :cond_1f

    .line 3157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " that is not a shared uid\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3159
    .local v7, "msg":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    invoke-static {v11, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3161
    .end local v7    # "msg":Ljava/lang/String;
    goto :goto_a

    .line 3162
    :cond_1f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " that is not defined\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3164
    .restart local v7    # "msg":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3165
    invoke-static {v11, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3147
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "sharedUserId":I
    .end local v6    # "idObj":Ljava/lang/Object;
    .end local v7    # "msg":Ljava/lang/String;
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3168
    .end local v2    # "i":I
    :cond_20
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3170
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3171
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_c

    .line 3179
    :cond_21
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3180
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 3181
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_b

    .line 3173
    :cond_22
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3174
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3175
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3177
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3184
    :cond_23
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3185
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3186
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_d

    .line 3192
    :cond_24
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3193
    .local v2, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3195
    .local v4, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 3196
    .local v5, "id":Ljava/lang/Object;
    if-eqz v5, :cond_25

    instance-of v6, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_25

    .line 3197
    move-object v6, v5

    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    iput-object v6, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3199
    .end local v4    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "id":Ljava/lang/Object;
    :cond_25
    goto :goto_e

    .line 3201
    :cond_26
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read completed successfully: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packages, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 3202
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " shared uids\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 3206
    const/4 v4, 0x1

    return v4
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 57
    .param p1, "userId"    # I

    .line 1576
    move-object/from16 v1, p0

    move/from16 v3, p1

    const-string/jumbo v15, "pkg"

    const/4 v2, 0x0

    .line 1577
    .local v2, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v14

    .line 1578
    .local v14, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v13

    .line 1579
    .local v13, "backupFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v12, "PackageManager"

    const/4 v6, 0x4

    if-eqz v0, :cond_1

    .line 1581
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 1582
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1585
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :cond_0
    move-object/from16 v26, v2

    goto :goto_0

    .line 1593
    :catch_0
    move-exception v0

    move-object/from16 v26, v2

    goto :goto_0

    .line 1579
    :cond_1
    move-object/from16 v26, v2

    .line 1599
    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v26, "str":Ljava/io/FileInputStream;
    :goto_0
    const-string v11, "Error reading package manager stopped packages"

    const/4 v10, 0x6

    const-string v9, "Error reading: "

    if-nez v26, :cond_4

    .line 1600
    :try_start_1
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    if-nez v0, :cond_3

    .line 1601
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1609
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1610
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v27, v9

    move v9, v15

    move v10, v15

    move-object/from16 v28, v11

    move v11, v15

    move-object/from16 v29, v12

    move v12, v15

    const/4 v15, 0x0

    move-object/from16 v30, v13

    .end local v13    # "backupFile":Ljava/io/File;
    .local v30, "backupFile":Ljava/io/File;
    move-object v13, v15

    move-object/from16 v31, v14

    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .local v31, "userPackagesStateFile":Ljava/io/File;
    move-object v14, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v3, p1

    :try_start_3
    invoke-virtual/range {v2 .. v25}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1629
    .end local v2    # "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v3, p1

    move-object/from16 v9, v27

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    const/4 v10, 0x6

    goto :goto_1

    .line 1804
    :catch_1
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v13, v26

    move-object/from16 v7, v29

    move-object/from16 v55, v31

    goto/16 :goto_1a

    .line 1797
    :catch_2
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    move-object/from16 v55, v31

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1630
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_2
    return-void

    .line 1804
    :catch_3
    move-exception v0

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v30, v13

    move/from16 v3, p1

    move-object v7, v12

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_1a

    .line 1797
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object/from16 v30, v13

    move/from16 v3, p1

    move-object v5, v9

    move v4, v10

    move-object v2, v11

    move-object v7, v12

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_1d

    .line 1632
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_3
    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v14, v31

    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :try_start_5
    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v13, v0

    .end local v26    # "str":Ljava/io/FileInputStream;
    .local v0, "str":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 1804
    .end local v0    # "str":Ljava/io/FileInputStream;
    .restart local v26    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    move-object/from16 v7, v29

    goto/16 :goto_1a

    .line 1797
    :catch_6
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1804
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :catch_7
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v13, v26

    move-object/from16 v7, v29

    move-object/from16 v55, v31

    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_1a

    .line 1797
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :catch_8
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    move-object/from16 v55, v31

    const/4 v4, 0x6

    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_1d

    .line 1804
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    :catch_9
    move-exception v0

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v30, v13

    move/from16 v3, p1

    move-object v7, v12

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    .end local v13    # "backupFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    goto/16 :goto_1a

    .line 1797
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object/from16 v30, v13

    move/from16 v3, p1

    move-object v5, v9

    move v4, v10

    move-object v2, v11

    move-object v7, v12

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    .end local v13    # "backupFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    goto/16 :goto_1d

    .line 1599
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    :cond_4
    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    .end local v13    # "backupFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    move-object/from16 v13, v26

    .line 1634
    .end local v26    # "str":Ljava/io/FileInputStream;
    .local v13, "str":Ljava/io/FileInputStream;
    :goto_2
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_27

    .line 1635
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_7
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1638
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_27

    move v3, v2

    .local v3, "type":I
    const/4 v12, 0x2

    const/4 v11, 0x1

    if-eq v2, v12, :cond_5

    if-eq v3, v11, :cond_5

    goto :goto_3

    .line 1643
    :cond_5
    if-eq v3, v12, :cond_6

    .line 1644
    :try_start_8
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in package restrictions file\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    const/4 v2, 0x5

    const-string v4, "No start tag found in package manager stopped packages"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 1647
    return-void

    .line 1804
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catch_b
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v7, v29

    goto/16 :goto_1a

    .line 1797
    :catch_c
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1650
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "type":I
    :cond_6
    const/4 v2, 0x0

    .line 1652
    .local v2, "maxAppLinkGeneration":I
    :try_start_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v10, v4

    .line 1653
    .local v10, "outerDepth":I
    const/4 v9, 0x0

    move-object v4, v9

    .line 1654
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_26
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_27

    move v3, v5

    if-eq v5, v11, :cond_23

    const/4 v8, 0x3

    if-ne v3, v8, :cond_8

    .line 1656
    :try_start_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    if-le v5, v10, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v31, v3

    move/from16 v36, v10

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v7, v29

    move/from16 v3, p1

    goto/16 :goto_16

    .line 1657
    :cond_8
    :goto_5
    if-eq v3, v8, :cond_22

    if-ne v3, v6, :cond_9

    .line 1659
    move/from16 v31, v3

    move/from16 v42, v6

    move-object/from16 v53, v9

    move/from16 v36, v10

    move/from16 v48, v11

    move/from16 v52, v12

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v56, v15

    move-object/from16 v7, v29

    move/from16 v3, p1

    goto/16 :goto_15

    .line 1662
    :cond_9
    :try_start_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 1663
    .local v7, "tagName":Ljava/lang/String;
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_26
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_27

    if-eqz v5, :cond_1c

    .line 1664
    :try_start_c
    const-string/jumbo v5, "name"

    invoke-interface {v0, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1665
    .local v5, "name":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1d

    move-object/from16 v26, v6

    .line 1666
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v26, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v26, :cond_a

    .line 1667
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package known for stopped package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    move-object/from16 v6, v29

    :try_start_e
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 1670
    move-object/from16 v29, v6

    move-object/from16 v4, v26

    const/4 v6, 0x4

    goto :goto_4

    .line 1804
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v3    # "type":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    :catch_d
    move-exception v0

    move/from16 v3, p1

    move-object v7, v6

    move-object/from16 v55, v14

    goto/16 :goto_1a

    .line 1797
    :catch_e
    move-exception v0

    move/from16 v3, p1

    move-object v7, v6

    move-object/from16 v55, v14

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1673
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "maxAppLinkGeneration":I
    .restart local v3    # "type":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v10    # "outerDepth":I
    .restart local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a
    move-object/from16 v6, v29

    :try_start_f
    const-string v4, "ceDataInode"

    const-wide/16 v8, 0x0

    invoke-static {v0, v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v32, v5

    .end local v5    # "name":Ljava/lang/String;
    .local v32, "name":Ljava/lang/String;
    move-wide v4, v8

    .line 1675
    .local v4, "ceDataInode":J
    const-string v8, "inst"

    invoke-static {v0, v8, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    move-object v9, v7

    .end local v7    # "tagName":Ljava/lang/String;
    .local v9, "tagName":Ljava/lang/String;
    move v7, v8

    .line 1677
    .local v7, "installed":Z
    const-string/jumbo v8, "stopped"

    const/4 v12, 0x0

    invoke-static {v0, v8, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    .line 1679
    .local v8, "stopped":Z
    const-string/jumbo v11, "nl"

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v34, v9

    const/4 v12, 0x0

    .end local v9    # "tagName":Ljava/lang/String;
    .local v34, "tagName":Ljava/lang/String;
    move v9, v11

    .line 1684
    .local v9, "notLaunched":Z
    const-string v11, "blocked"

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v29, v11

    .line 1685
    .local v29, "blockedStr":Ljava/lang/String;
    if-nez v29, :cond_b

    .line 1686
    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1687
    .local v11, "hidden":Z
    :goto_6
    const-string v12, "hidden"

    move/from16 v31, v3

    const/4 v3, 0x0

    .end local v3    # "type":I
    .local v31, "type":I
    invoke-interface {v0, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v35, v12

    .line 1688
    .local v35, "hiddenStr":Ljava/lang/String;
    if-nez v35, :cond_c

    .line 1689
    move v3, v11

    goto :goto_7

    :cond_c
    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_7
    move/from16 v36, v10

    .end local v10    # "outerDepth":I
    .local v36, "outerDepth":I
    move v10, v3

    .line 1691
    .end local v11    # "hidden":Z
    .local v10, "hidden":Z
    const-string v3, "distraction_flags"

    const/4 v12, 0x0

    invoke-static {v0, v3, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v3, 0x1

    .line 1693
    .local v11, "distractionFlags":I
    const-string/jumbo v3, "suspended"

    invoke-static {v0, v3, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v38, v3

    .line 1695
    .local v38, "suspended":Z
    const-string/jumbo v3, "suspending-package"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1697
    .local v3, "suspendingPackage":Ljava/lang/String;
    const-string/jumbo v12, "suspend_dialog_message"
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1b

    move-object/from16 v19, v6

    const/4 v6, 0x0

    :try_start_10
    invoke-interface {v0, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19

    .line 1699
    .local v12, "dialogMessage":Ljava/lang/String;
    if-eqz v38, :cond_d

    if-nez v3, :cond_d

    .line 1700
    :try_start_11
    const-string v6, "android"
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    move-object v3, v6

    move-object/from16 v39, v3

    goto :goto_8

    .line 1804
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v3    # "suspendingPackage":Ljava/lang/String;
    .end local v4    # "ceDataInode":J
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v32    # "name":Ljava/lang/String;
    .end local v34    # "tagName":Ljava/lang/String;
    .end local v35    # "hiddenStr":Ljava/lang/String;
    .end local v36    # "outerDepth":I
    .end local v38    # "suspended":Z
    :catch_f
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v7, v19

    goto/16 :goto_1a

    .line 1797
    :catch_10
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v7, v19

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1703
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "maxAppLinkGeneration":I
    .restart local v3    # "suspendingPackage":Ljava/lang/String;
    .restart local v4    # "ceDataInode":J
    .restart local v7    # "installed":Z
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v32    # "name":Ljava/lang/String;
    .restart local v34    # "tagName":Ljava/lang/String;
    .restart local v35    # "hiddenStr":Ljava/lang/String;
    .restart local v36    # "outerDepth":I
    .restart local v38    # "suspended":Z
    :cond_d
    move-object/from16 v39, v3

    .end local v3    # "suspendingPackage":Ljava/lang/String;
    .local v39, "suspendingPackage":Ljava/lang/String;
    :goto_8
    :try_start_12
    const-string v3, "blockUninstall"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v40, v3

    .line 1705
    .local v40, "blockUninstall":Z
    const-string v3, "instant-app"

    invoke-static {v0, v3, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v17

    .line 1707
    .local v17, "instantApp":Z
    const-string/jumbo v3, "virtual-preload"

    invoke-static {v0, v3, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 1709
    .local v18, "virtualPreload":Z
    const-string v3, "enabled"

    invoke-static {v0, v3, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_19

    move-wide/from16 v42, v4

    move-object/from16 v41, v19

    const/4 v4, 0x4

    .end local v4    # "ceDataInode":J
    .local v42, "ceDataInode":J
    move v6, v3

    .line 1711
    .local v6, "enabled":I
    :try_start_13
    const-string v3, "enabledCaller"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1713
    .local v19, "enabledCaller":Ljava/lang/String;
    const-string v3, "harmful-app-warning"

    .line 1714
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1715
    .local v25, "harmfulAppWarning":Ljava/lang/String;
    const-string v3, "domainVerificationStatus"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 1718
    .local v22, "verifState":I
    const-string v3, "app-link-generation"

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    .line 1720
    .local v5, "linkGeneration":I
    if-le v5, v2, :cond_e

    .line 1721
    move v2, v5

    move/from16 v44, v2

    goto :goto_9

    .line 1720
    :cond_e
    move/from16 v44, v2

    .line 1723
    .end local v2    # "maxAppLinkGeneration":I
    .local v44, "maxAppLinkGeneration":I
    :goto_9
    const-string v2, "install-reason"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v24

    .line 1726
    .local v24, "installReason":I
    const/4 v2, 0x0

    .line 1727
    .local v2, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 1728
    .local v16, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 1729
    .local v21, "suspendedAppExtras":Landroid/os/PersistableBundle;
    const/16 v45, 0x0

    .line 1730
    .local v45, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    const/16 v46, 0x0

    .line 1732
    .local v46, "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v47

    move/from16 v48, v47

    move-object/from16 v47, v16

    move-object/from16 v49, v21

    move-object/from16 v50, v45

    move-object/from16 v45, v2

    .line 1733
    .end local v2    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v45, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v47, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v48, "packageDepth":I
    .local v49, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v50, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :goto_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17

    move/from16 v51, v2

    const/4 v3, 0x1

    .end local v31    # "type":I
    .local v51, "type":I
    if-eq v2, v3, :cond_19

    move/from16 v3, v51

    const/4 v2, 0x3

    .end local v51    # "type":I
    .local v3, "type":I
    if-ne v3, v2, :cond_10

    .line 1735
    :try_start_14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v2, v48

    .end local v48    # "packageDepth":I
    .local v2, "packageDepth":I
    if-le v4, v2, :cond_f

    goto :goto_b

    :cond_f
    move/from16 v48, v2

    move/from16 v31, v3

    goto/16 :goto_10

    .line 1733
    .end local v2    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    :cond_10
    move/from16 v2, v48

    .line 1736
    .end local v48    # "packageDepth":I
    .restart local v2    # "packageDepth":I
    :goto_b
    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 1738
    move/from16 v48, v2

    move/from16 v31, v3

    goto/16 :goto_f

    .line 1740
    :cond_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v31, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v48

    sparse-switch v48, :sswitch_data_0

    move/from16 v48, v2

    .end local v2    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    goto :goto_c

    .end local v48    # "packageDepth":I
    .restart local v2    # "packageDepth":I
    :sswitch_0
    move/from16 v48, v2

    .end local v2    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    const-string/jumbo v2, "suspended-dialog-info"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x4

    goto :goto_d

    .end local v48    # "packageDepth":I
    .restart local v2    # "packageDepth":I
    :sswitch_1
    move/from16 v48, v2

    .end local v2    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    const-string/jumbo v2, "suspended-launcher-extras"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x3

    goto :goto_d

    .end local v48    # "packageDepth":I
    .restart local v2    # "packageDepth":I
    :sswitch_2
    move/from16 v48, v2

    .end local v2    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    const-string/jumbo v2, "suspended-app-extras"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x2

    goto :goto_d

    .end local v48    # "packageDepth":I
    .restart local v2    # "packageDepth":I
    :sswitch_3
    move/from16 v48, v2

    .end local v2    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    const-string v2, "enabled-components"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto :goto_d

    .end local v48    # "packageDepth":I
    .restart local v2    # "packageDepth":I
    :sswitch_4
    move/from16 v48, v2

    .end local v2    # "packageDepth":I
    .restart local v48    # "packageDepth":I
    const-string v2, "disabled-components"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_d

    :cond_12
    :goto_c
    move/from16 v2, v31

    :goto_d
    if-eqz v2, :cond_17

    const/4 v4, 0x1

    if-eq v2, v4, :cond_16

    const/4 v4, 0x2

    if-eq v2, v4, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_14

    const/4 v4, 0x4

    if-eq v2, v4, :cond_13

    .line 1757
    const-string v2, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v3

    .end local v3    # "type":I
    .restart local v31    # "type":I
    const-string v3, "Unknown tag "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " under tag "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1754
    .end local v31    # "type":I
    .restart local v3    # "type":I
    :cond_13
    move/from16 v31, v3

    .end local v3    # "type":I
    .restart local v31    # "type":I
    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    .line 1755
    .end local v46    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v2, "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    move-object/from16 v46, v2

    goto :goto_e

    .line 1751
    .end local v2    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v31    # "type":I
    .restart local v3    # "type":I
    .restart local v46    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :cond_14
    move/from16 v31, v3

    .end local v3    # "type":I
    .restart local v31    # "type":I
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object/from16 v50, v2

    .line 1752
    goto :goto_e

    .line 1748
    .end local v31    # "type":I
    .restart local v3    # "type":I
    :cond_15
    move/from16 v31, v3

    .end local v3    # "type":I
    .restart local v31    # "type":I
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object/from16 v49, v2

    .line 1749
    goto :goto_e

    .line 1745
    .end local v31    # "type":I
    .restart local v3    # "type":I
    :cond_16
    move/from16 v31, v3

    .end local v3    # "type":I
    .restart local v31    # "type":I
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v2

    move-object/from16 v47, v2

    .line 1746
    goto :goto_e

    .line 1742
    .end local v31    # "type":I
    .restart local v3    # "type":I
    :cond_17
    move/from16 v31, v3

    .end local v3    # "type":I
    .restart local v31    # "type":I
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v2

    move-object/from16 v45, v2

    .line 1743
    nop

    .line 1757
    :goto_e
    const/4 v3, 0x0

    const/4 v4, 0x4

    goto/16 :goto_a

    .line 1736
    .end local v31    # "type":I
    .end local v48    # "packageDepth":I
    .local v2, "packageDepth":I
    .restart local v3    # "type":I
    :cond_18
    move/from16 v48, v2

    move/from16 v31, v3

    .line 1733
    .end local v2    # "packageDepth":I
    .end local v3    # "type":I
    .restart local v31    # "type":I
    .restart local v48    # "packageDepth":I
    :goto_f
    const/4 v3, 0x0

    const/4 v4, 0x4

    goto/16 :goto_a

    .end local v31    # "type":I
    .restart local v51    # "type":I
    :cond_19
    move/from16 v31, v51

    .line 1761
    .end local v51    # "type":I
    .restart local v31    # "type":I
    :goto_10
    if-nez v46, :cond_1a

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1762
    new-instance v2, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1763
    invoke-virtual {v2, v12}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v2

    .line 1764
    invoke-virtual {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    move-object/from16 v46, v2

    .end local v46    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v2, "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    goto :goto_12

    .line 1804
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v5    # "linkGeneration":I
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v17    # "instantApp":Z
    .end local v18    # "virtualPreload":Z
    .end local v19    # "enabledCaller":Ljava/lang/String;
    .end local v22    # "verifState":I
    .end local v24    # "installReason":I
    .end local v25    # "harmfulAppWarning":Ljava/lang/String;
    .end local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v32    # "name":Ljava/lang/String;
    .end local v34    # "tagName":Ljava/lang/String;
    .end local v35    # "hiddenStr":Ljava/lang/String;
    .end local v36    # "outerDepth":I
    .end local v38    # "suspended":Z
    .end local v39    # "suspendingPackage":Ljava/lang/String;
    .end local v40    # "blockUninstall":Z
    .end local v42    # "ceDataInode":J
    .end local v44    # "maxAppLinkGeneration":I
    .end local v45    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v47    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v48    # "packageDepth":I
    .end local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :catch_11
    move-exception v0

    move/from16 v3, p1

    :goto_11
    move-object/from16 v55, v14

    move-object/from16 v7, v41

    goto/16 :goto_1a

    .line 1797
    :catch_12
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1767
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "linkGeneration":I
    .restart local v6    # "enabled":I
    .restart local v7    # "installed":Z
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v17    # "instantApp":Z
    .restart local v18    # "virtualPreload":Z
    .restart local v19    # "enabledCaller":Ljava/lang/String;
    .restart local v22    # "verifState":I
    .restart local v24    # "installReason":I
    .restart local v25    # "harmfulAppWarning":Ljava/lang/String;
    .restart local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v32    # "name":Ljava/lang/String;
    .restart local v34    # "tagName":Ljava/lang/String;
    .restart local v35    # "hiddenStr":Ljava/lang/String;
    .restart local v36    # "outerDepth":I
    .restart local v38    # "suspended":Z
    .restart local v39    # "suspendingPackage":Ljava/lang/String;
    .restart local v40    # "blockUninstall":Z
    .restart local v42    # "ceDataInode":J
    .restart local v44    # "maxAppLinkGeneration":I
    .restart local v45    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v46    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v47    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v48    # "packageDepth":I
    .restart local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :cond_1a
    :goto_12
    if-eqz v40, :cond_1b

    .line 1768
    move/from16 v4, p1

    move-object/from16 v3, v32

    const/4 v2, 0x1

    .end local v32    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :try_start_15
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_14
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_13

    goto :goto_13

    .line 1804
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "linkGeneration":I
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v17    # "instantApp":Z
    .end local v18    # "virtualPreload":Z
    .end local v19    # "enabledCaller":Ljava/lang/String;
    .end local v22    # "verifState":I
    .end local v24    # "installReason":I
    .end local v25    # "harmfulAppWarning":Ljava/lang/String;
    .end local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v34    # "tagName":Ljava/lang/String;
    .end local v35    # "hiddenStr":Ljava/lang/String;
    .end local v36    # "outerDepth":I
    .end local v38    # "suspended":Z
    .end local v39    # "suspendingPackage":Ljava/lang/String;
    .end local v40    # "blockUninstall":Z
    .end local v42    # "ceDataInode":J
    .end local v44    # "maxAppLinkGeneration":I
    .end local v45    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v46    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v47    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v48    # "packageDepth":I
    .end local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :catch_13
    move-exception v0

    move v3, v4

    goto :goto_11

    .line 1797
    :catch_14
    move-exception v0

    move v3, v4

    move-object/from16 v55, v14

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1767
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "linkGeneration":I
    .restart local v6    # "enabled":I
    .restart local v7    # "installed":Z
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v17    # "instantApp":Z
    .restart local v18    # "virtualPreload":Z
    .restart local v19    # "enabledCaller":Ljava/lang/String;
    .restart local v22    # "verifState":I
    .restart local v24    # "installReason":I
    .restart local v25    # "harmfulAppWarning":Ljava/lang/String;
    .restart local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v32    # "name":Ljava/lang/String;
    .restart local v34    # "tagName":Ljava/lang/String;
    .restart local v35    # "hiddenStr":Ljava/lang/String;
    .restart local v36    # "outerDepth":I
    .restart local v38    # "suspended":Z
    .restart local v39    # "suspendingPackage":Ljava/lang/String;
    .restart local v40    # "blockUninstall":Z
    .restart local v42    # "ceDataInode":J
    .restart local v44    # "maxAppLinkGeneration":I
    .restart local v45    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v46    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v47    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v48    # "packageDepth":I
    .restart local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :cond_1b
    move/from16 v4, p1

    move-object/from16 v3, v32

    const/4 v2, 0x1

    .line 1770
    .end local v32    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    :goto_13
    move/from16 v16, v2

    move/from16 v32, v48

    .end local v48    # "packageDepth":I
    .local v32, "packageDepth":I
    move-object/from16 v2, v26

    move/from16 v48, v16

    move/from16 v37, v31

    move-object/from16 v31, v3

    .end local v3    # "name":Ljava/lang/String;
    .local v31, "name":Ljava/lang/String;
    .local v37, "type":I
    move/from16 v3, p1

    move-object/from16 v51, v12

    const/16 v52, 0x2

    const/16 v53, 0x0

    .end local v12    # "dialogMessage":Ljava/lang/String;
    .local v51, "dialogMessage":Ljava/lang/String;
    move/from16 v12, v38

    move-object/from16 v54, v13

    .end local v13    # "str":Ljava/io/FileInputStream;
    .local v54, "str":Ljava/io/FileInputStream;
    move-object/from16 v13, v39

    move-object/from16 v55, v14

    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .local v55, "userPackagesStateFile":Ljava/io/File;
    move-object/from16 v14, v46

    move-object/from16 v56, v15

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v20, v45

    move-object/from16 v21, v47

    move/from16 v23, v5

    move v1, v4

    move/from16 v33, v5

    move-wide/from16 v4, v42

    const/16 v42, 0x4

    .end local v5    # "linkGeneration":I
    .end local v42    # "ceDataInode":J
    .restart local v4    # "ceDataInode":J
    .local v33, "linkGeneration":I
    :try_start_16
    invoke-virtual/range {v2 .. v25}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15

    .line 1776
    .end local v4    # "ceDataInode":J
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v17    # "instantApp":Z
    .end local v18    # "virtualPreload":Z
    .end local v19    # "enabledCaller":Ljava/lang/String;
    .end local v22    # "verifState":I
    .end local v24    # "installReason":I
    .end local v25    # "harmfulAppWarning":Ljava/lang/String;
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "packageDepth":I
    .end local v33    # "linkGeneration":I
    .end local v35    # "hiddenStr":Ljava/lang/String;
    .end local v38    # "suspended":Z
    .end local v39    # "suspendingPackage":Ljava/lang/String;
    .end local v40    # "blockUninstall":Z
    .end local v45    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v46    # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v47    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v49    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v50    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v51    # "dialogMessage":Ljava/lang/String;
    move v3, v1

    move-object/from16 v4, v26

    move/from16 v31, v37

    move-object/from16 v7, v41

    move/from16 v2, v44

    move-object/from16 v1, p0

    goto/16 :goto_14

    .line 1804
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v34    # "tagName":Ljava/lang/String;
    .end local v36    # "outerDepth":I
    .end local v37    # "type":I
    .end local v44    # "maxAppLinkGeneration":I
    :catch_15
    move-exception v0

    move v3, v1

    move-object/from16 v7, v41

    move-object/from16 v13, v54

    move-object/from16 v1, p0

    goto/16 :goto_1a

    .line 1797
    :catch_16
    move-exception v0

    move v3, v1

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    move-object/from16 v13, v54

    const/4 v4, 0x6

    move-object/from16 v1, p0

    goto/16 :goto_1d

    .line 1804
    .end local v54    # "str":Ljava/io/FileInputStream;
    .end local v55    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_17
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v7, v41

    goto/16 :goto_1a

    .line 1797
    :catch_18
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    goto/16 :goto_1c

    .line 1804
    :catch_19
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v7, v19

    goto/16 :goto_1a

    .line 1797
    :catch_1a
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v7, v19

    goto/16 :goto_18

    .line 1804
    :catch_1b
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object v7, v6

    goto/16 :goto_1a

    .line 1797
    :catch_1c
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object v7, v6

    goto/16 :goto_18

    .line 1804
    :catch_1d
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    goto/16 :goto_19

    .line 1797
    :catch_1e
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    goto/16 :goto_1b

    .line 1776
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "maxAppLinkGeneration":I
    .local v3, "type":I
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "tagName":Ljava/lang/String;
    .local v10, "outerDepth":I
    :cond_1c
    move/from16 v1, p1

    move/from16 v31, v3

    move/from16 v42, v6

    move-object/from16 v34, v7

    move-object/from16 v53, v9

    move/from16 v36, v10

    move/from16 v48, v11

    move/from16 v52, v12

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v56, v15

    move-object/from16 v41, v29

    .end local v3    # "type":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v13    # "str":Ljava/io/FileInputStream;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .local v31, "type":I
    .restart local v34    # "tagName":Ljava/lang/String;
    .restart local v36    # "outerDepth":I
    .restart local v54    # "str":Ljava/io/FileInputStream;
    .restart local v55    # "userPackagesStateFile":Ljava/io/File;
    :try_start_17
    const-string/jumbo v3, "preferred-activities"

    move-object/from16 v5, v34

    .end local v34    # "tagName":Ljava/lang/String;
    .local v5, "tagName":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_22

    if-eqz v3, :cond_1d

    .line 1777
    move v3, v1

    move-object/from16 v1, p0

    :try_start_18
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_1f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_20

    move-object/from16 v7, v41

    goto/16 :goto_14

    .line 1797
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v36    # "outerDepth":I
    :catch_1f
    move-exception v0

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    move-object/from16 v13, v54

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1778
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "maxAppLinkGeneration":I
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v36    # "outerDepth":I
    :cond_1d
    move v3, v1

    move-object/from16 v1, p0

    :try_start_19
    const-string/jumbo v6, "persistent-preferred-activities"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_20

    if-eqz v6, :cond_1e

    .line 1779
    :try_start_1a
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_20

    move-object/from16 v7, v41

    goto :goto_14

    .line 1780
    :cond_1e
    :try_start_1b
    const-string v6, "crossProfile-intent-filters"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_20

    if-eqz v6, :cond_1f

    .line 1781
    :try_start_1c
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_20

    move-object/from16 v7, v41

    goto :goto_14

    .line 1782
    :cond_1f
    :try_start_1d
    const-string v6, "default-apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_20

    if-eqz v6, :cond_20

    .line 1783
    :try_start_1e
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_20

    move-object/from16 v7, v41

    goto :goto_14

    .line 1784
    :cond_20
    :try_start_1f
    const-string v6, "block-uninstall-packages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_21
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_20

    if-eqz v6, :cond_21

    .line 1785
    :try_start_20
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_1f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_20

    move-object/from16 v7, v41

    goto :goto_14

    .line 1787
    :cond_21
    :try_start_21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <stopped-packages>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_20

    .line 1787
    move-object/from16 v7, v41

    :try_start_22
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1791
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_14
    move-object/from16 v29, v7

    move/from16 v3, v31

    move/from16 v10, v36

    move/from16 v6, v42

    move/from16 v11, v48

    move/from16 v12, v52

    move-object/from16 v9, v53

    move-object/from16 v13, v54

    move-object/from16 v14, v55

    move-object/from16 v15, v56

    goto/16 :goto_4

    .line 1804
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31    # "type":I
    .end local v36    # "outerDepth":I
    :catch_20
    move-exception v0

    move-object/from16 v7, v41

    goto/16 :goto_17

    .line 1797
    :catch_21
    move-exception v0

    move-object/from16 v7, v41

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v13, v54

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1804
    :catch_22
    move-exception v0

    move v3, v1

    move-object/from16 v7, v41

    move-object/from16 v1, p0

    goto :goto_17

    .line 1797
    :catch_23
    move-exception v0

    move v3, v1

    move-object/from16 v7, v41

    move-object/from16 v1, p0

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v13, v54

    const/4 v4, 0x6

    goto/16 :goto_1d

    .line 1657
    .end local v54    # "str":Ljava/io/FileInputStream;
    .end local v55    # "userPackagesStateFile":Ljava/io/File;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "maxAppLinkGeneration":I
    .restart local v3    # "type":I
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "outerDepth":I
    .restart local v13    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_22
    move/from16 v31, v3

    move/from16 v42, v6

    move-object/from16 v53, v9

    move/from16 v36, v10

    move/from16 v48, v11

    move/from16 v52, v12

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v56, v15

    move-object/from16 v7, v29

    move/from16 v3, p1

    .line 1654
    .end local v3    # "type":I
    .end local v10    # "outerDepth":I
    .end local v13    # "str":Ljava/io/FileInputStream;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v31    # "type":I
    .restart local v36    # "outerDepth":I
    .restart local v54    # "str":Ljava/io/FileInputStream;
    .restart local v55    # "userPackagesStateFile":Ljava/io/File;
    :goto_15
    move-object/from16 v29, v7

    move/from16 v3, v31

    move/from16 v10, v36

    move/from16 v6, v42

    move/from16 v11, v48

    move/from16 v12, v52

    move-object/from16 v9, v53

    move-object/from16 v13, v54

    move-object/from16 v14, v55

    move-object/from16 v15, v56

    goto/16 :goto_4

    .end local v31    # "type":I
    .end local v36    # "outerDepth":I
    .end local v54    # "str":Ljava/io/FileInputStream;
    .end local v55    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "type":I
    .restart local v10    # "outerDepth":I
    .restart local v13    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_23
    move/from16 v31, v3

    move/from16 v36, v10

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v7, v29

    move/from16 v3, p1

    .line 1793
    .end local v3    # "type":I
    .end local v10    # "outerDepth":I
    .end local v13    # "str":Ljava/io/FileInputStream;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v31    # "type":I
    .restart local v36    # "outerDepth":I
    .restart local v54    # "str":Ljava/io/FileInputStream;
    .restart local v55    # "userPackagesStateFile":Ljava/io/File;
    :goto_16
    invoke-virtual/range {v54 .. v54}, Ljava/io/FileInputStream;->close()V

    .line 1795
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_24

    .line 1809
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31    # "type":I
    .end local v36    # "outerDepth":I
    move-object/from16 v13, v54

    goto/16 :goto_1e

    .line 1804
    :catch_24
    move-exception v0

    :goto_17
    move-object/from16 v13, v54

    goto :goto_1a

    .line 1797
    :catch_25
    move-exception v0

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v13, v54

    const/4 v4, 0x6

    goto :goto_1d

    .end local v54    # "str":Ljava/io/FileInputStream;
    .end local v55    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_26
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v7, v29

    :goto_18
    move-object/from16 v5, v27

    move-object/from16 v2, v28

    goto :goto_1c

    .line 1804
    :catch_27
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    :goto_19
    move-object/from16 v7, v29

    .line 1805
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v55    # "userPackagesStateFile":Ljava/io/File;
    :goto_1a
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1807
    move-object/from16 v2, v28

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 1797
    .end local v0    # "e":Ljava/io/IOException;
    .end local v55    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_28
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    :goto_1b
    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    :goto_1c
    const/4 v4, 0x6

    .line 1798
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v55    # "userPackagesStateFile":Ljava/io/File;
    :goto_1d
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading stopped packages: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1801
    invoke-static {v7, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1809
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 1810
    :goto_1e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78da70f9 -> :sswitch_4
        -0x75017ede -> :sswitch_3
        -0x5ee8613f -> :sswitch_2
        -0x54ce12c2 -> :sswitch_1
        0x62ff4521 -> :sswitch_0
    .end sparse-switch
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1416
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1418
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1419
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1420
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1421
    goto :goto_0

    .line 1424
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 1426
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1427
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1428
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_1

    .line 1430
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1432
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1430
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1435
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    :goto_1
    goto :goto_2

    .line 1436
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1436
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1438
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1440
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1441
    :cond_5
    return-void
.end method

.method readStoppedLPw()V
    .locals 16

    .line 2338
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2339
    .local v2, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    const-string v4, "PackageManager"

    if-eqz v0, :cond_1

    .line 2341
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 2342
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2343
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2345
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    :cond_0
    goto :goto_0

    .line 2353
    :catch_0
    move-exception v0

    .line 2359
    :cond_1
    :goto_0
    const-string v5, "Error reading package manager stopped packages"

    const-string v7, "Error reading: "

    const/4 v0, 0x0

    if-nez v2, :cond_4

    .line 2360
    :try_start_1
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2361
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v9, "No stopped packages file found\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    const-string v8, "No stopped packages file file; assuming all started"

    invoke-static {v3, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2367
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2368
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2369
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2370
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2371
    :cond_2
    return-void

    .line 2373
    :cond_3
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v8

    .line 2375
    :cond_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2376
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v8, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2379
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v11, v10

    .local v11, "type":I
    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v10, v12, :cond_5

    if-eq v11, v13, :cond_5

    goto :goto_2

    .line 2384
    :cond_5
    if-eq v11, v12, :cond_6

    .line 2385
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    const/4 v0, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2388
    return-void

    .line 2391
    :cond_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 2392
    .local v10, "outerDepth":I
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v11, v12

    if-eq v12, v13, :cond_d

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    .line 2394
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v10, :cond_d

    .line 2395
    :cond_7
    if-eq v11, v12, :cond_c

    if-ne v11, v3, :cond_8

    .line 2397
    goto :goto_6

    .line 2400
    :cond_8
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2401
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2402
    const-string/jumbo v14, "name"

    invoke-interface {v8, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2403
    .local v14, "name":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 2404
    .local v15, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v15, :cond_9

    .line 2405
    invoke-virtual {v15, v13, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2406
    const-string v3, "1"

    const-string/jumbo v6, "nl"

    invoke-interface {v8, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2407
    invoke-virtual {v15, v13, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_4

    .line 2410
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package known for stopped package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :cond_a
    :goto_4
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2414
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_5

    .line 2415
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2415
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2419
    .end local v12    # "tagName":Ljava/lang/String;
    :goto_5
    nop

    .line 2392
    :cond_c
    :goto_6
    const/4 v3, 0x4

    goto :goto_3

    .line 2421
    :cond_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "outerDepth":I
    .end local v11    # "type":I
    goto :goto_7

    .line 2430
    :catch_1
    move-exception v0

    .line 2431
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading settings: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2433
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2423
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2424
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading stopped packages: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2427
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2436
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    nop

    .line 2437
    :goto_8
    return-void
.end method

.method readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outPs"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2290
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2292
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 2293
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 2294
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 2295
    goto :goto_0

    .line 2297
    :cond_2
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2298
    .local v3, "libName":Ljava/lang/String;
    const-string/jumbo v4, "version"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2300
    .local v1, "libVersionStr":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 2302
    .local v4, "libVersion":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 2305
    goto :goto_1

    .line 2303
    :catch_0
    move-exception v6

    .line 2307
    :goto_1
    if-eqz v3, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 2308
    const-class v6, Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2310
    iget-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v6, v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2314
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2315
    .end local v1    # "libVersionStr":Ljava/lang/String;
    .end local v3    # "libName":Ljava/lang/String;
    .end local v4    # "libVersion":J
    goto :goto_0

    .line 2316
    :cond_4
    return-void
.end method

.method registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z
    .locals 6
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 873
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_0

    .line 875
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 876
    const/4 v0, 0x1

    .local v0, "createdNew":Z
    goto :goto_0

    .line 879
    .end local v0    # "createdNew":Z
    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v0

    .line 881
    .restart local v0    # "createdNew":Z
    :goto_0
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v1, :cond_1

    .line 887
    return v0

    .line 882
    :cond_1
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be assigned a valid UID"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 884
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method removeAppIdLPw(I)V
    .locals 4
    .param p1, "appId"    # I

    .line 1162
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1164
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1165
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1166
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1169
    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1170
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 4188
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4191
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4192
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4195
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4196
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 4197
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4198
    .local v3, "sourceUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4199
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v5, 0x0

    .line 4200
    .local v5, "needsWriting":Z
    new-instance v6, Landroid/util/ArraySet;

    .line 4201
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4202
    .local v6, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4203
    .local v8, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_1

    .line 4204
    const/4 v5, 0x1

    .line 4205
    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 4207
    .end local v8    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_1
    goto :goto_1

    .line 4208
    :cond_2
    if-eqz v5, :cond_3

    .line 4209
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4196
    .end local v3    # "sourceUserId":I
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "needsWriting":Z
    .end local v6    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4212
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 4213
    return-void

    .line 4212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 1333
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "alsoResetStatus"    # Z

    .line 1310
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1311
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1312
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1317
    :cond_1
    if-eqz p3, :cond_2

    .line 1318
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1320
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1321
    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 1325
    const/4 v0, 0x0

    .line 1326
    .local v0, "result":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 1327
    .local v3, "userId":I
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1326
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1329
    :cond_0
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1076
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1077
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 1078
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1080
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 1082
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1085
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    .line 1088
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1089
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    .line 1092
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method removeUserLPw(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 4167
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4168
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4169
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    .line 4170
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 4171
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4172
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 4173
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4174
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 4175
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4176
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4178
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4180
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4184
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    .line 4185
    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "blockUninstall"    # Z

    .line 1813
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1814
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    .line 1815
    if-nez v0, :cond_0

    .line 1816
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1817
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1819
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1820
    :cond_1
    if-eqz v0, :cond_2

    .line 1821
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1822
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1823
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1826
    :cond_2
    :goto_0
    return-void
.end method

.method setDefaultRuntimePermissionsVersionLPr(II)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 1384
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersionLPr(II)V

    .line 1385
    return-void
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 4401
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4402
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 4405
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    .line 4406
    return-void

    .line 4403
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkgName"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 435
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 437
    if-eqz p2, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .locals 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .line 4368
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4369
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4370
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_5

    .line 4373
    if-nez p4, :cond_1

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4374
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4376
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4386
    :cond_1
    :goto_0
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p3, :cond_4

    .line 4387
    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4389
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4390
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4391
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4393
    :cond_2
    invoke-virtual {v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4395
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 4397
    :cond_4
    return v3

    .line 4371
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "fingerPrint"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1376
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V

    .line 1377
    return-void
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .line 1268
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1269
    .local v0, "current":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1270
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1277
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    .line 1278
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 1279
    .local v1, "alwaysGeneration":I
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1281
    .end local v1    # "alwaysGeneration":I
    :cond_2
    const/4 v1, 0x0

    .line 1284
    .restart local v1    # "alwaysGeneration":I
    :goto_0
    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1285
    return v2
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .locals 13
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 997
    const/16 v0, -0x2710

    if-eqz p1, :cond_d

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1004
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_1

    .line 1005
    return v0

    .line 1008
    :cond_1
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1010
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    const/16 v2, -0x2710

    .line 1012
    .local v2, "affectedUserId":I
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1013
    .local v4, "eachPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 1014
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_2

    .line 1015
    goto :goto_0

    .line 1019
    :cond_2
    const/4 v6, 0x0

    .line 1020
    .local v6, "used":Z
    iget-object v7, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1021
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1022
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1023
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1024
    const/4 v6, 0x1

    .line 1025
    goto :goto_2

    .line 1027
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_3
    goto :goto_1

    .line 1028
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 1029
    goto :goto_0

    .line 1032
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1033
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 1037
    .local v8, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_8

    .line 1038
    const/4 v9, 0x0

    .line 1039
    .local v9, "reqByDisabledSysPkg":Z
    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1040
    .local v11, "permission":Ljava/lang/String;
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1041
    const/4 v9, 0x1

    .line 1042
    goto :goto_4

    .line 1044
    .end local v11    # "permission":Ljava/lang/String;
    :cond_6
    goto :goto_3

    .line 1045
    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    .line 1046
    goto :goto_0

    .line 1052
    .end local v9    # "reqByDisabledSysPkg":Z
    :cond_8
    const v9, 0xfbff

    const/4 v10, 0x0

    invoke-virtual {v7, v5, p2, v9, v10}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1055
    invoke-virtual {v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1057
    const/4 v2, -0x1

    .line 1061
    :cond_9
    invoke-virtual {v7, v5, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v9

    if-ne v9, v10, :cond_b

    .line 1063
    if-ne v2, v0, :cond_a

    .line 1064
    move v2, p2

    goto :goto_5

    .line 1065
    :cond_a
    if-eq v2, p2, :cond_b

    .line 1067
    const/4 v2, -0x1

    .line 1070
    .end local v4    # "eachPerm":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "used":Z
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_b
    :goto_5
    goto/16 :goto_0

    .line 1072
    :cond_c
    return v2

    .line 998
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2    # "affectedUserId":I
    :cond_d
    :goto_6
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4359
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4360
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4363
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4361
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1927
    const-string v0, "all-intent-filter-verifications"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1928
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1929
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1930
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1931
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v5

    .line 1932
    .local v5, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v5, :cond_0

    .line 1933
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1929
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1936
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1937
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .locals 5

    .line 1365
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1366
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1365
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1368
    :cond_0
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    .line 1356
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1357
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_0

    return-void

    .line 1359
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1360
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1361
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 1362
    :cond_1
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1994
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1995
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 1996
    const-string v1, "block-uninstall-packages"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1997
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1998
    const-string v4, "block-uninstall"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "packageName"

    invoke-interface {p1, v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2000
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1997
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2002
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2004
    :cond_1
    return-void
.end method

.method writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
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

    .line 2276
    .local p2, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2277
    return-void

    .line 2279
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2280
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2281
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2282
    .local v2, "childPackageName":Ljava/lang/String;
    const-string v3, "child-package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2283
    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2284
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2280
    .end local v2    # "childPackageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2286
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1898
    const-string v0, "crossProfile-intent-filters"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1899
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1900
    .local v2, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v2, :cond_0

    .line 1901
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1902
    .local v4, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1903
    invoke-virtual {v4, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1904
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1905
    .end local v4    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_0

    .line 1907
    :cond_0
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1908
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1982
    const-string v0, "default-apps"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1983
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1984
    .local v2, "defaultBrowser":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1985
    const-string v3, "default-browser"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1986
    const-string/jumbo v4, "packageName"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1987
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1989
    :cond_0
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1990
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2813
    const-string/jumbo v0, "updated-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2814
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2815
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2816
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2818
    :cond_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2819
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2820
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2821
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2822
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2823
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2824
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2826
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2827
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2829
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2830
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2832
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2833
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2835
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2836
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2839
    :cond_5
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_6

    .line 2840
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2842
    :cond_6
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2845
    :goto_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 2846
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    const-string/jumbo v3, "parentPackageName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2849
    :cond_7
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2851
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2854
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_8

    .line 2855
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2856
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 2855
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2859
    :cond_8
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2860
    return-void
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "verificationInfo"    # Landroid/content/pm/IntentFilterVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1913
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1914
    const-string v0, "domain-verification"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1915
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1916
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 1917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote domain verification for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1917
    const-string v3, "PackageSettings"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_0
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1922
    :cond_1
    return-void
.end method

.method writeKernelMappingLPr()V
    .locals 6

    .line 2606
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2608
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2609
    .local v0, "known":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2610
    .local v1, "knownSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2611
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2610
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2614
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2616
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2617
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2618
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2621
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2622
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2625
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2626
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2621
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2628
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 2631
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2633
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    .line 2634
    return-void

    .line 2631
    :cond_1
    :goto_0
    return-void
.end method

.method writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "excludedUserIds"    # [I

    .line 2637
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 2638
    .local v0, "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2639
    .local v3, "firstTime":Z
    :goto_0
    if-nez v3, :cond_1

    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2640
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v1, v2

    .line 2643
    .local v1, "userIdsChanged":Z
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2645
    .local v2, "dir":Ljava/io/File;
    if-eqz v3, :cond_3

    .line 2646
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2648
    new-instance v4, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v4

    .line 2649
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2653
    :cond_3
    iget v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq v4, p2, :cond_4

    .line 2654
    new-instance v4, Ljava/io/File;

    const-string v5, "appid"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2655
    .local v4, "appIdFile":Ljava/io/File;
    invoke-direct {p0, v4, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2659
    .end local v4    # "appIdFile":Ljava/io/File;
    :cond_4
    if-eqz v1, :cond_a

    .line 2661
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p3

    if-ge v4, v5, :cond_7

    .line 2662
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, p3, v4

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2664
    :cond_5
    new-instance v5, Ljava/io/File;

    const-string v6, "excluded_userids"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v6, p3, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2661
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2670
    .end local v4    # "i":I
    :cond_7
    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v4, :cond_9

    .line 2671
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v5, v5

    if-ge v4, v5, :cond_9

    .line 2672
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v5, v5, v4

    invoke-static {p3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2673
    new-instance v5, Ljava/io/File;

    const-string v6, "clear_userid"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2671
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2681
    .end local v4    # "i":I
    :cond_9
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2683
    :cond_a
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2959
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2960
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v2, "defined-keyset"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2961
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "alias"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2962
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "identifier"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2963
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2964
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 2965
    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 22

    .line 2442
    move-object/from16 v1, p0

    const-string/jumbo v0, "renamed-package"

    const-string/jumbo v2, "restored-ivi"

    const-string/jumbo v3, "shared-user"

    const-string/jumbo v4, "permissions"

    const-string/jumbo v5, "version"

    const-string/jumbo v6, "read-external-storage"

    const-string/jumbo v7, "permission-trees"

    const-string/jumbo v8, "verifier"

    const-string/jumbo v9, "packages"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2446
    .local v10, "startTime":J
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    const-string v13, "PackageManager"

    if-eqz v12, :cond_1

    .line 2451
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2452
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2453
    const-string v0, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    return-void

    .line 2459
    :cond_0
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 2460
    const-string v12, "Preserving older settings backup"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    :cond_1
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2467
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2468
    .local v12, "fstr":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2471
    .local v14, "str":Ljava/io/BufferedOutputStream;
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2472
    .local v15, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v13

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2473
    const/4 v13, 0x1

    move-wide/from16 v18, v10

    .end local v10    # "startTime":J
    .local v18, "startTime":J
    :try_start_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2474
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v15, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2476
    invoke-interface {v15, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2478
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v10, v13, :cond_2

    .line 2479
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2480
    .local v13, "volumeUuid":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2482
    .local v11, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    move-object/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .local v20, "fstr":Ljava/io/FileOutputStream;
    invoke-interface {v15, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2483
    const-string/jumbo v12, "volumeUuid"

    invoke-static {v15, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2484
    const-string/jumbo v12, "sdkVersion"

    move-object/from16 v21, v13

    .end local v13    # "volumeUuid":Ljava/lang/String;
    .local v21, "volumeUuid":Ljava/lang/String;
    iget v13, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v15, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2485
    const-string v12, "databaseVersion"

    iget v13, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v15, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2486
    const-string v12, "fingerprint"

    iget-object v13, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v15, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2487
    const/4 v12, 0x0

    invoke-interface {v15, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2478
    nop

    .end local v11    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v21    # "volumeUuid":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, v20

    const/4 v11, 0x0

    goto :goto_0

    .end local v20    # "fstr":Ljava/io/FileOutputStream;
    .restart local v12    # "fstr":Ljava/io/FileOutputStream;
    :cond_2
    move-object/from16 v20, v12

    .line 2490
    .end local v10    # "i":I
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .restart local v20    # "fstr":Ljava/io/FileOutputStream;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v5, :cond_3

    .line 2491
    const/4 v5, 0x0

    invoke-interface {v15, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2492
    const-string v5, "device"

    iget-object v10, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v10}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v15, v11, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2493
    invoke-interface {v15, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2496
    :cond_3
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 2497
    const/4 v5, 0x0

    invoke-interface {v15, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2498
    const-string v5, "enforcement"

    .line 2499
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "1"

    goto :goto_1

    :cond_4
    const-string v8, "0"

    .line 2498
    :goto_1
    const/4 v10, 0x0

    invoke-interface {v15, v10, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2500
    invoke-interface {v15, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2503
    :cond_5
    const/4 v5, 0x0

    invoke-interface {v15, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2504
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v15}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2505
    const/4 v5, 0x0

    invoke-interface {v15, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2507
    invoke-interface {v15, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2508
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v15}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2509
    const/4 v5, 0x0

    invoke-interface {v15, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2511
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2512
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2513
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_2

    .line 2515
    :cond_6
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2516
    .restart local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2517
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_3

    .line 2519
    :cond_7
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 2520
    .local v5, "usr":Lcom/android/server/pm/SharedUserSetting;
    const/4 v6, 0x0

    invoke-interface {v15, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2521
    const-string/jumbo v7, "name"

    iget-object v8, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v15, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2522
    const-string/jumbo v6, "userId"

    iget v7, v5, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 2523
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2522
    const/4 v8, 0x0

    invoke-interface {v15, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2524
    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v7, "sigs"

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v15, v7, v8}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2525
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 2526
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v6

    .line 2525
    invoke-virtual {v1, v15, v6}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2527
    const/4 v6, 0x0

    invoke-interface {v15, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2528
    nop

    .end local v5    # "usr":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_4

    .line 2530
    :cond_8
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 2531
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2532
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {v15, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2533
    const-string/jumbo v5, "new"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v15, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2534
    const-string/jumbo v5, "old"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v15, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2535
    invoke-interface {v15, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2536
    nop

    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_5

    .line 2539
    :cond_9
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2540
    .local v0, "numIVIs":I
    const-string v3, "PackageSettings"

    if-lez v0, :cond_c

    .line 2541
    :try_start_3
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v4, :cond_a

    .line 2542
    const-string v4, "Writing restored-ivi entries to packages.xml"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_a
    const/4 v3, 0x0

    invoke-interface {v15, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2545
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v0, :cond_b

    .line 2546
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2547
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v1, v15, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2545
    .end local v4    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2549
    .end local v3    # "i":I
    :cond_b
    const/4 v3, 0x0

    invoke-interface {v15, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 2551
    :cond_c
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_d

    .line 2552
    const-string v2, "  no restored IVI entries to write"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_d
    :goto_7
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2558
    const/4 v2, 0x0

    invoke-interface {v15, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2560
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2562
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2563
    invoke-static/range {v20 .. v20}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2564
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 2568
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2569
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2575
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2576
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2578
    const-string/jumbo v2, "package"

    .line 2579
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    .line 2578
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2580
    return-void

    .line 2582
    .end local v0    # "numIVIs":I
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "fstr":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    goto :goto_8

    .end local v18    # "startTime":J
    .local v10, "startTime":J
    :catch_1
    move-exception v0

    move-wide/from16 v18, v10

    goto :goto_8

    :catch_2
    move-exception v0

    move-wide/from16 v18, v10

    move-object/from16 v17, v13

    .line 2583
    .end local v10    # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "startTime":J
    :goto_8
    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v3, v17

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2587
    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2588
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    :cond_e
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2864
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2865
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2866
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2867
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2869
    :cond_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2870
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2871
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2874
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2875
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2877
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2878
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2880
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2881
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2883
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2884
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2887
    :cond_5
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "publicFlags"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2888
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "privateFlags"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2889
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2890
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2891
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2892
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2893
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_6

    .line 2894
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2896
    :cond_6
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2898
    :goto_0
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    const-string/jumbo v3, "true"

    if-eqz v2, :cond_7

    .line 2899
    const-string/jumbo v2, "uidError"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2901
    :cond_7
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2902
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const-string v4, "installer"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2904
    :cond_8
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    if-eqz v2, :cond_9

    .line 2905
    const-string/jumbo v2, "isOrphaned"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2907
    :cond_9
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2908
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v4, "volumeUuid"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2910
    :cond_a
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    .line 2911
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 2912
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2911
    const-string v4, "categoryHint"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2914
    :cond_b
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 2915
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    const-string/jumbo v4, "parentPackageName"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2917
    :cond_c
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v2, :cond_d

    .line 2918
    const-string/jumbo v2, "updateAvailable"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2921
    :cond_d
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2923
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2925
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    const-string/jumbo v4, "sigs"

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2927
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2928
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 2927
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2930
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2931
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2932
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2933
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2935
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2936
    return-void
.end method

.method writePackageListLPr()V
    .locals 1

    .line 2695
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2696
    return-void
.end method

.method writePackageListLPr(I)V
    .locals 5
    .param p1, "creatingUserId"    # I

    .line 2699
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2700
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2701
    .local v1, "ctx":Ljava/lang/String;
    const-string v2, "PackageSettings"

    if-nez v1, :cond_0

    .line 2702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get SELinux context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 2703
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2702
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    :cond_0
    invoke-static {v1}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2707
    const-string v3, "Failed to set packages.list SELinux context"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2712
    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2713
    nop

    .line 2714
    return-void

    .line 2712
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    throw v3
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 26
    .param p1, "userId"    # I

    .line 2010
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "disabled-components"

    const-string v4, "enabled-components"

    const-string/jumbo v5, "suspended-launcher-extras"

    const-string/jumbo v6, "suspended-app-extras"

    const-string/jumbo v7, "suspended-dialog-info"

    const-string/jumbo v8, "pkg"

    const-string/jumbo v9, "package-restrictions"

    const-string/jumbo v10, "name"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 2014
    .local v11, "startTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v13

    .line 2015
    .local v13, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v14

    .line 2016
    .local v14, "backupFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2017
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v15, "PackageManager"

    if-eqz v0, :cond_1

    .line 2022
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2023
    invoke-virtual {v13, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2024
    const-string v0, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    return-void

    .line 2030
    :cond_0
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 2031
    const-string v0, "Preserving older stopped packages backup"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v16, v0

    .line 2037
    .local v16, "fstr":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    .end local v16    # "fstr":Ljava/io/FileOutputStream;
    .local v15, "fstr":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-direct {v0, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v16, v0

    .line 2039
    .local v16, "str":Ljava/io/BufferedOutputStream;
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object/from16 v18, v0

    .line 2040
    .local v18, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-wide/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v18

    .end local v16    # "str":Ljava/io/BufferedOutputStream;
    .end local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v11, "str":Ljava/io/BufferedOutputStream;
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v19, "startTime":J
    :try_start_2
    invoke-interface {v12, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 2041
    move-object/from16 v16, v13

    .end local v13    # "userPackagesStateFile":Ljava/io/File;
    .local v16, "userPackagesStateFile":Ljava/io/File;
    const/4 v13, 0x1

    :try_start_3
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v13, 0x0

    invoke-interface {v12, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2042
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2044
    const/4 v13, 0x0

    invoke-interface {v12, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2046
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v0, :cond_18

    :try_start_4
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v21, v0

    .line 2047
    .local v21, "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v22, v13

    move-object/from16 v13, v21

    .end local v21    # "pkg":Lcom/android/server/pm/PackageSetting;
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v21, v0

    .line 2050
    .local v21, "ustate":Landroid/content/pm/PackageUserState;
    move-object/from16 v23, v14

    const/4 v14, 0x0

    .end local v14    # "backupFile":Ljava/io/File;
    .local v23, "backupFile":Ljava/io/File;
    :try_start_5
    invoke-interface {v12, v14, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2051
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v12, v14, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2052
    move-object/from16 v14, v21

    .end local v21    # "ustate":Landroid/content/pm/PackageUserState;
    .local v14, "ustate":Landroid/content/pm/PackageUserState;
    iget-wide v0, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v24, 0x0

    cmp-long v0, v0, v24

    if-eqz v0, :cond_2

    .line 2053
    const-string v0, "ceDataInode"

    iget-wide v1, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v12, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2055
    :cond_2
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v0, :cond_3

    .line 2056
    const-string v0, "inst"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2058
    :cond_3
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->stopped:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const-string/jumbo v1, "true"

    if-eqz v0, :cond_4

    .line 2059
    :try_start_6
    const-string/jumbo v0, "stopped"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2061
    :cond_4
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v0, :cond_5

    .line 2062
    const-string/jumbo v0, "nl"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2064
    :cond_5
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_6

    .line 2065
    const-string v0, "hidden"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2067
    :cond_6
    iget v0, v14, Landroid/content/pm/PackageUserState;->distractionFlags:I

    if-eqz v0, :cond_7

    .line 2068
    const-string v0, "distraction_flags"

    iget v2, v14, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 2069
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2068
    move-object/from16 v21, v15

    const/4 v15, 0x0

    .end local v15    # "fstr":Ljava/io/FileOutputStream;
    .local v21, "fstr":Ljava/io/FileOutputStream;
    invoke-interface {v12, v15, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 2067
    .end local v21    # "fstr":Ljava/io/FileOutputStream;
    .restart local v15    # "fstr":Ljava/io/FileOutputStream;
    :cond_7
    move-object/from16 v21, v15

    .line 2071
    .end local v15    # "fstr":Ljava/io/FileOutputStream;
    .restart local v21    # "fstr":Ljava/io/FileOutputStream;
    :goto_1
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_b

    .line 2072
    const-string/jumbo v0, "suspended"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2073
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2074
    const-string/jumbo v0, "suspending-package"

    iget-object v2, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2077
    :cond_8
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v0, :cond_9

    .line 2078
    const/4 v2, 0x0

    invoke-interface {v12, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2079
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v0, v12}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2080
    const/4 v2, 0x0

    invoke-interface {v12, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2082
    :cond_9
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    const-string v2, "PackageSettings"

    if-eqz v0, :cond_a

    .line 2083
    const/4 v15, 0x0

    :try_start_7
    invoke-interface {v12, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2085
    :try_start_8
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 2089
    move-object/from16 v24, v7

    goto :goto_2

    .line 2086
    :catch_0
    move-exception v0

    .line 2087
    .local v0, "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v7

    const-string v7, "Exception while trying to write suspendedAppExtras for "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ". Will be lost on reboot"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2090
    .end local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    const/4 v7, 0x0

    invoke-interface {v12, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 2082
    :cond_a
    move-object/from16 v24, v7

    .line 2092
    :goto_3
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_c

    .line 2093
    const/4 v7, 0x0

    invoke-interface {v12, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 2095
    :try_start_a
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 2099
    goto :goto_4

    .line 2096
    :catch_1
    move-exception v0

    .line 2097
    .restart local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedLauncherExtras for "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Will be lost on reboot"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2100
    .end local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const/4 v2, 0x0

    invoke-interface {v12, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 2071
    :cond_b
    move-object/from16 v24, v7

    .line 2103
    :cond_c
    :goto_5
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_d

    .line 2104
    const-string v0, "instant-app"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2106
    :cond_d
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_e

    .line 2107
    const-string/jumbo v0, "virtual-preload"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2109
    :cond_e
    iget v0, v14, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v0, :cond_f

    .line 2110
    const-string v0, "enabled"

    iget v1, v14, Landroid/content/pm/PackageUserState;->enabled:I

    .line 2111
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2110
    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2112
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 2113
    const-string v0, "enabledCaller"

    iget-object v1, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2117
    :cond_f
    iget v0, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v0, :cond_10

    .line 2119
    const-string v0, "domainVerificationStatus"

    iget v1, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v12, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2122
    :cond_10
    iget v0, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v0, :cond_11

    .line 2123
    const-string v0, "app-link-generation"

    iget v1, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v12, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2126
    :cond_11
    iget v0, v14, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v0, :cond_12

    .line 2127
    const-string v0, "install-reason"

    iget v1, v14, Landroid/content/pm/PackageUserState;->installReason:I

    .line 2128
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2127
    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2130
    :cond_12
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 2131
    const-string v0, "harmful-app-warning"

    iget-object v1, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2134
    :cond_13
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    const-string/jumbo v1, "item"

    if-nez v0, :cond_15

    .line 2135
    const/4 v2, 0x0

    :try_start_c
    invoke-interface {v12, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2136
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2137
    .local v2, "name":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2138
    invoke-interface {v12, v7, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2139
    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2140
    nop

    .end local v2    # "name":Ljava/lang/String;
    goto :goto_6

    .line 2141
    :cond_14
    const/4 v2, 0x0

    invoke-interface {v12, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2143
    :cond_15
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2144
    const/4 v2, 0x0

    invoke-interface {v12, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2145
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2146
    .restart local v2    # "name":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2147
    invoke-interface {v12, v7, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2148
    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2149
    nop

    .end local v2    # "name":Ljava/lang/String;
    goto :goto_7

    .line 2150
    :cond_16
    const/4 v1, 0x0

    invoke-interface {v12, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2153
    :cond_17
    const/4 v1, 0x0

    invoke-interface {v12, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 2154
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v7, v24

    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "ustate":Landroid/content/pm/PackageUserState;
    goto/16 :goto_0

    .line 2183
    .end local v11    # "str":Ljava/io/BufferedOutputStream;
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v21    # "fstr":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto/16 :goto_9

    .end local v23    # "backupFile":Ljava/io/File;
    .local v14, "backupFile":Ljava/io/File;
    :catch_3
    move-exception v0

    move-object/from16 v23, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto :goto_8

    .line 2156
    .restart local v11    # "str":Ljava/io/BufferedOutputStream;
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v15    # "fstr":Ljava/io/FileOutputStream;
    :cond_18
    move-object/from16 v23, v14

    move-object/from16 v21, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "fstr":Ljava/io/FileOutputStream;
    .restart local v21    # "fstr":Ljava/io/FileOutputStream;
    .restart local v23    # "backupFile":Ljava/io/File;
    const/4 v3, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    :try_start_d
    invoke-virtual {v1, v12, v2, v3}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 2157
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2158
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2159
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2160
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2162
    const/4 v3, 0x0

    invoke-interface {v12, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2164
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2166
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2167
    invoke-static/range {v21 .. v21}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2168
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 2172
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 2173
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v19

    .line 2178
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 2182
    return-void

    .line 2183
    .end local v11    # "str":Ljava/io/BufferedOutputStream;
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v21    # "fstr":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    goto :goto_9

    .end local v23    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v23, v14

    .end local v14    # "backupFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    :goto_8
    goto :goto_9

    .end local v16    # "userPackagesStateFile":Ljava/io/File;
    .end local v23    # "backupFile":Ljava/io/File;
    .local v13, "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    :catch_6
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v23, v14

    .end local v13    # "userPackagesStateFile":Ljava/io/File;
    .end local v14    # "backupFile":Ljava/io/File;
    .restart local v16    # "userPackagesStateFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    goto :goto_9

    .end local v16    # "userPackagesStateFile":Ljava/io/File;
    .end local v19    # "startTime":J
    .end local v23    # "backupFile":Ljava/io/File;
    .local v11, "startTime":J
    .restart local v13    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    :catch_7
    move-exception v0

    move-wide/from16 v19, v11

    move-object/from16 v16, v13

    move-object/from16 v23, v14

    goto :goto_9

    :catch_8
    move-exception v0

    move-wide/from16 v19, v11

    move-object/from16 v16, v13

    move-object/from16 v23, v14

    move-object/from16 v17, v15

    .line 2184
    .end local v11    # "startTime":J
    .end local v13    # "userPackagesStateFile":Ljava/io/File;
    .end local v14    # "backupFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "userPackagesStateFile":Ljava/io/File;
    .restart local v19    # "startTime":J
    .restart local v23    # "backupFile":Ljava/io/File;
    :goto_9
    const-string v3, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    move-object/from16 v4, v17

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2190
    .end local v0    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2191
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clean up mangled file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    :cond_19
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 0
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2968
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2969
    return-void
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2257
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    return-void

    .line 2261
    :cond_0
    const-string/jumbo v0, "perms"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2263
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2264
    .local v3, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2265
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2266
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "granted"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2267
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "flags"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2268
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2269
    .end local v3    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 2271
    :cond_1
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2272
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1884
    const-string/jumbo v0, "persistent-preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1885
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1886
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1887
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1888
    .local v4, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1889
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1890
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1891
    .end local v4    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_0

    .line 1893
    :cond_0
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1894
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1870
    const-string/jumbo v0, "preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1871
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1872
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1873
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredActivity;

    .line 1874
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1875
    invoke-virtual {v4, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1876
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1877
    .end local v4    # "pa":Lcom/android/server/pm/PreferredActivity;
    goto :goto_0

    .line 1879
    :cond_0
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1880
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .line 5188
    if-eqz p2, :cond_0

    .line 5189
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_0

    .line 5191
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5193
    :goto_0
    return-void
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2940
    const-string/jumbo v0, "proper-signing-keyset"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2941
    nop

    .line 2942
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2941
    const-string v3, "identifier"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2943
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2944
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2948
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2949
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 2950
    .local v3, "id":J
    const-string/jumbo v5, "upgrade-keyset"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2951
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "identifier"

    invoke-interface {p1, v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2952
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2949
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2955
    :cond_0
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "newPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "oldPackage"    # Lcom/android/server/pm/PackageSetting;

    .line 896
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_0

    .line 897
    return-void

    .line 900
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 901
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_1

    .line 902
    return-void

    .line 904
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 905
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez p2, :cond_2

    .line 906
    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_1

    .line 907
    :cond_2
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    :goto_1
    nop

    .line 908
    .local v3, "oldUserState":Landroid/content/pm/PackageUserState;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 909
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 911
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "oldUserState":Landroid/content/pm/PackageUserState;
    :cond_3
    goto :goto_0

    .line 912
    :cond_4
    return-void
.end method

.method writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p3, "usesStaticLibraryVersions"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2320
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2324
    :cond_0
    array-length v0, p2

    .line 2325
    .local v0, "libCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2326
    aget-object v2, p2, v1

    .line 2327
    .local v2, "libName":Ljava/lang/String;
    aget-wide v3, p3, v1

    .line 2328
    .local v3, "libVersion":J
    const-string/jumbo v5, "uses-static-lib"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2329
    const-string/jumbo v7, "name"

    invoke-interface {p1, v6, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2330
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "version"

    invoke-interface {p1, v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2331
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2325
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "libVersion":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2333
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 2322
    .end local v0    # "libCount":I
    :cond_2
    :goto_1
    return-void
.end method
