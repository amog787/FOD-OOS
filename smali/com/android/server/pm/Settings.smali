.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$KeySetToValueMap;,
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

.field private static final ATTR_UNINSTALL_REASON:Ljava/lang/String; = "uninstall-reason"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

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

.field private static final TAG_MIME_GROUP:Ljava/lang/String; = "mime-group"

.field private static final TAG_MIME_TYPE:Ljava/lang/String; = "mime-type"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPENDED_DIALOG_INFO:Ljava/lang/String; = "suspended-dialog-info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_SUSPEND_PARAMS:Ljava/lang/String; = "suspend-params"

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

.field private final mInstallerPackages:Landroid/util/ArraySet;
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
    .locals 30

    .line 330
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3726
    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3727
    const/high16 v2, 0x10000000

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3728
    const/high16 v2, 0x40000000    # 2.0f

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4601
    const/16 v3, 0x1e

    new-array v4, v3, [Ljava/lang/Object;

    .line 4602
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "SYSTEM"

    aput-object v7, v4, v5

    .line 4603
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v9, "DEBUGGABLE"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    .line 4604
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v9

    const-string v11, "HAS_CODE"

    const/4 v12, 0x5

    aput-object v11, v4, v12

    .line 4605
    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v4, v14

    const-string v15, "PERSISTENT"

    const/16 v16, 0x7

    aput-object v15, v4, v16

    .line 4606
    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v11

    const-string v18, "FACTORY_TEST"

    const/16 v19, 0x9

    aput-object v18, v4, v19

    .line 4607
    const/16 v18, 0x20

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0xa

    aput-object v20, v4, v21

    const-string v22, "ALLOW_TASK_REPARENTING"

    const/16 v23, 0xb

    aput-object v22, v4, v23

    .line 4608
    const/16 v22, 0x40

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v24, 0xc

    aput-object v22, v4, v24

    const-string v25, "ALLOW_CLEAR_USER_DATA"

    const/16 v26, 0xd

    aput-object v25, v4, v26

    .line 4609
    const/16 v25, 0x80

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v27, 0xe

    aput-object v25, v4, v27

    const/16 v28, 0xf

    const-string v29, "UPDATED_SYSTEM_APP"

    aput-object v29, v4, v28

    .line 4610
    const/16 v28, 0x100

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v4, v15

    const/16 v28, 0x11

    const-string v29, "TEST_ONLY"

    aput-object v29, v4, v28

    .line 4611
    const/16 v28, 0x4000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x12

    aput-object v28, v4, v29

    const/16 v28, 0x13

    const-string v29, "VM_SAFE_MODE"

    aput-object v29, v4, v28

    .line 4612
    const v28, 0x8000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x14

    aput-object v28, v4, v29

    const/16 v28, 0x15

    const-string v29, "ALLOW_BACKUP"

    aput-object v29, v4, v28

    .line 4613
    const/high16 v28, 0x10000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x16

    aput-object v28, v4, v29

    const/16 v28, 0x17

    const-string v29, "KILL_AFTER_RESTORE"

    aput-object v29, v4, v28

    .line 4614
    const/high16 v28, 0x20000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x18

    aput-object v28, v4, v29

    const/16 v28, 0x19

    const-string v29, "RESTORE_ANY_VERSION"

    aput-object v29, v4, v28

    .line 4615
    const/high16 v28, 0x40000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1a

    aput-object v28, v4, v29

    const/16 v28, 0x1b

    const-string v29, "EXTERNAL_STORAGE"

    aput-object v29, v4, v28

    .line 4616
    const/high16 v28, 0x100000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1c

    aput-object v28, v4, v29

    const/16 v28, 0x1d

    const-string v29, "LARGE_HEAP"

    aput-object v29, v4, v28

    sput-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4619
    const/16 v4, 0x30

    new-array v4, v4, [Ljava/lang/Object;

    .line 4620
    const/16 v28, 0x400

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v4, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v4, v5

    .line 4621
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v4, v10

    .line 4622
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v4, v12

    .line 4623
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v14

    const-string v0, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    aput-object v0, v4, v16

    .line 4624
    const/high16 v0, 0x20000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v11

    const-string v0, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    aput-object v0, v4, v19

    .line 4625
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v21

    const-string v0, "BACKUP_IN_FOREGROUND"

    aput-object v0, v4, v23

    .line 4626
    aput-object v8, v4, v24

    const-string v0, "CANT_SAVE_STATE"

    aput-object v0, v4, v26

    .line 4627
    aput-object v20, v4, v27

    const/16 v0, 0xf

    const-string v1, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v1, v4, v0

    .line 4628
    aput-object v22, v4, v15

    const/16 v0, 0x11

    const-string v1, "DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4629
    const/16 v0, 0x12

    aput-object v17, v4, v0

    const/16 v0, 0x13

    const-string v1, "HAS_DOMAIN_URLS"

    aput-object v1, v4, v0

    .line 4630
    const/16 v0, 0x14

    aput-object v6, v4, v0

    const/16 v0, 0x15

    const-string v1, "HIDDEN"

    aput-object v1, v4, v0

    .line 4631
    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    const-string v1, "EPHEMERAL"

    aput-object v1, v4, v0

    .line 4632
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v4, v1

    const/16 v0, 0x19

    const-string v1, "ISOLATED_SPLIT_LOADING"

    aput-object v1, v4, v0

    .line 4633
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v4, v1

    const/16 v0, 0x1b

    const-string v1, "OEM"

    aput-object v1, v4, v0

    .line 4634
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, v4, v1

    const/16 v0, 0x1d

    const-string v1, "PARTIALLY_DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4635
    aput-object v13, v4, v3

    const/16 v0, 0x1f

    const-string v1, "PRIVILEGED"

    aput-object v1, v4, v0

    .line 4636
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v18

    const/16 v0, 0x21

    const-string v1, "REQUIRED_FOR_SYSTEM_USER"

    aput-object v1, v4, v0

    .line 4637
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v4, v1

    const/16 v0, 0x23

    const-string v1, "STATIC_SHARED_LIBRARY"

    aput-object v1, v4, v0

    .line 4638
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v4, v1

    const/16 v0, 0x25

    const-string v1, "VENDOR"

    aput-object v1, v4, v0

    .line 4639
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v4, v1

    const/16 v0, 0x27

    const-string v1, "PRODUCT"

    aput-object v1, v4, v0

    .line 4640
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, v4, v1

    const/16 v0, 0x29

    const-string v1, "SYSTEM_EXT"

    aput-object v1, v4, v0

    .line 4641
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v4, v1

    const/16 v0, 0x2b

    const-string v1, "VIRTUAL_PRELOAD"

    aput-object v1, v4, v0

    .line 4642
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, v4, v1

    const/16 v0, 0x2d

    const-string v1, "ODM"

    aput-object v1, v4, v0

    .line 4643
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, v4, v1

    const/16 v0, 0x2f

    const-string v1, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"

    aput-object v1, v4, v0

    sput-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4619
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .locals 4
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "permission"    # Lcom/android/server/pm/permission/PermissionSettings;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 309
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    .line 312
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    .line 315
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 319
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    .line 322
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 333
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 377
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 382
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 386
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 389
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 396
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 403
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 406
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 409
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 424
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 445
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 446
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 447
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 449
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 450
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 451
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 455
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 456
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 457
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 458
    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 460
    new-instance v0, Ljava/io/File;

    const-string v1, "/config/sdcardfs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
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

    .line 464
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 465
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped-backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 466
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 429
    .local p1, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 309
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    .line 312
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    .line 315
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 319
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    .line 322
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 333
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 377
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 382
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 386
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 389
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 396
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 403
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 406
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 409
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 424
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 430
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 433
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 434
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 435
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 436
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 437
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 438
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 439
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 440
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 441
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Settings;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I
    .locals 3
    .param p1, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 4392
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4393
    .local v0, "size":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4394
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4395
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4396
    add-int/lit16 v2, v1, 0x2710

    return v2

    .line 4393
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4401
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x270f

    if-le v0, v1, :cond_2

    .line 4402
    const/4 v1, -0x1

    return v1

    .line 4405
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4406
    add-int/lit16 v1, v0, 0x2710

    return v1
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 993
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    if-eqz p2, :cond_2

    .line 995
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_0

    .line 996
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

    .line 1000
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_0

    .line 1001
    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v4, :cond_1

    .line 1002
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

    .line 1009
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1010
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1011
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1016
    :cond_2
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 1017
    .local v0, "userIdPs":Ljava/lang/Object;
    if-nez p2, :cond_3

    .line 1018
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 1019
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    goto :goto_1

    .line 1022
    :cond_3
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 1023
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    .line 1027
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 1028
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v1, :cond_6

    .line 1029
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_5

    .line 1030
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

    .line 1032
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1035
    :cond_6
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 21
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    .line 3489
    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3491
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3490
    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    .line 3492
    .local v1, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v2, "PackageSettings"

    if-eqz v0, :cond_0

    .line 3493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queried "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " results: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    :cond_0
    const/4 v0, 0x0

    .line 3496
    .local v0, "systemMatch":I
    const/4 v3, 0x0

    .line 3497
    .local v3, "thirdPartyMatch":I
    if-nez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 3498
    .local v4, "numMatches":I
    :goto_0
    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    .line 3499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No potential matches found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " while setting preferred "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3500
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3499
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    return-void

    .line 3503
    :cond_2
    const/4 v6, 0x0

    .line 3504
    .local v6, "haveAct":Z
    const/4 v11, 0x0

    .line 3505
    .local v11, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/ComponentName;

    .line 3506
    .local v12, "set":[Landroid/content/ComponentName;
    const/4 v13, 0x0

    move/from16 v19, v6

    move v6, v0

    .end local v0    # "systemMatch":I
    .local v6, "systemMatch":I
    .local v13, "i":I
    .local v19, "haveAct":Z
    :goto_1
    if-ge v13, v4, :cond_9

    .line 3507
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3508
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v12, v13

    .line 3509
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v14, 0x1

    and-int/2addr v5, v14

    const-string v15, "/"

    const-string v14, "Result "

    if-nez v5, :cond_5

    .line 3510
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v5, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v5, v3, :cond_4

    .line 3514
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v5, :cond_3

    .line 3515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": non-system!"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_3
    aget-object v11, v12, v13

    .line 3518
    move/from16 v20, v4

    goto/16 :goto_3

    .line 3510
    :cond_4
    move/from16 v20, v4

    goto :goto_2

    .line 3520
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move/from16 v20, v4

    .end local v4    # "numMatches":I
    .local v20, "numMatches":I
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3521
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3522
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v4, :cond_6

    .line 3523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": default!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    :cond_6
    const/4 v4, 0x1

    .line 3526
    .end local v19    # "haveAct":Z
    .local v4, "haveAct":Z
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v5, v5, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v19, v4

    move v6, v5

    .end local v6    # "systemMatch":I
    .local v5, "systemMatch":I
    goto :goto_2

    .line 3528
    .end local v4    # "haveAct":Z
    .end local v5    # "systemMatch":I
    .restart local v6    # "systemMatch":I
    .restart local v19    # "haveAct":Z
    :cond_7
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v4, :cond_8

    .line 3529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_8
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v20

    const/4 v5, 0x1

    goto/16 :goto_1

    .end local v20    # "numMatches":I
    .local v4, "numMatches":I
    :cond_9
    move/from16 v20, v4

    .line 3533
    .end local v4    # "numMatches":I
    .end local v13    # "i":I
    .restart local v20    # "numMatches":I
    :goto_3
    if-eqz v11, :cond_a

    if-ge v3, v6, :cond_a

    .line 3538
    const/4 v11, 0x0

    .line 3540
    :cond_a
    if-eqz v19, :cond_13

    if-nez v11, :cond_13

    .line 3541
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 3542
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3543
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3545
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3546
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3547
    .local v5, "cat":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3548
    .end local v5    # "cat":Ljava/lang/String;
    goto :goto_4

    .line 3550
    :cond_c
    const/high16 v0, 0x10000

    and-int v0, p3, v0

    if-eqz v0, :cond_d

    .line 3551
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3553
    :cond_d
    if-eqz v8, :cond_e

    .line 3554
    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3556
    :cond_e
    if-eqz p6, :cond_f

    .line 3557
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3559
    :cond_f
    if-eqz v9, :cond_10

    .line 3560
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3562
    :cond_10
    if-eqz v10, :cond_11

    .line 3563
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3565
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3567
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3570
    move-object/from16 v15, p4

    goto :goto_5

    .line 3568
    :catch_0
    move-exception v0

    .line 3569
    .local v0, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Malformed mimetype "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " for "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3565
    .end local v0    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_12
    move-object/from16 v15, p4

    .line 3572
    :goto_5
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v18, 0x1

    move-object v13, v0

    move-object v14, v4

    move v15, v6

    move-object/from16 v16, v12

    move-object/from16 v17, p4

    invoke-direct/range {v13 .. v18}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3573
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v5, p0

    move/from16 v13, p9

    invoke-virtual {v5, v13}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 3574
    .end local v0    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    goto :goto_7

    .line 3540
    :cond_13
    move-object/from16 v5, p0

    move/from16 v13, p9

    .line 3574
    if-nez v11, :cond_16

    .line 3575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3576
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v4, "No component "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3578
    const-string v4, " found setting preferred "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3580
    const-string v4, "; possible matches are "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    array-length v14, v12

    if-ge v4, v14, :cond_15

    .line 3582
    if-lez v4, :cond_14

    const-string v14, ", "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3583
    :cond_14
    aget-object v14, v12, v4

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3585
    .end local v4    # "i":I
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_7

    .line 3587
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting preferred "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; found third party match "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3588
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3587
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    :goto_7
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 30
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 3375
    move-object/from16 v0, p2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_0

    .line 3376
    const-string v1, "PackageSettings"

    const-string v2, "Processing preferred:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    new-instance v2, Landroid/util/LogPrinter;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v2, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3379
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3380
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0xc0000

    .line 3382
    .local v2, "flags":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3383
    const/4 v4, 0x0

    move v15, v2

    .end local v2    # "flags":I
    .local v4, "i":I
    .local v15, "flags":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 3384
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    .line 3385
    .local v2, "cat":Ljava/lang/String;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3386
    const/high16 v5, 0x10000

    or-int/2addr v5, v15

    move v15, v5

    .end local v15    # "flags":I
    .local v5, "flags":I
    goto :goto_1

    .line 3388
    .end local v5    # "flags":I
    .restart local v15    # "flags":I
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3383
    .end local v2    # "cat":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3392
    .end local v4    # "i":I
    :cond_2
    const/4 v2, 0x1

    .line 3393
    .local v2, "doNonData":Z
    const/4 v4, 0x0

    .line 3395
    .local v4, "hasSchemes":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v14

    .line 3396
    .local v14, "dataSchemesCount":I
    const/4 v5, 0x0

    move/from16 v16, v4

    move v4, v5

    .local v4, "ischeme":I
    .local v16, "hasSchemes":Z
    :goto_2
    if-ge v4, v14, :cond_b

    .line 3397
    const/4 v5, 0x1

    .line 3398
    .local v5, "doScheme":Z
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3399
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3400
    const/4 v6, 0x1

    move/from16 v16, v6

    .line 3402
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v12

    .line 3403
    .local v12, "dataSchemeSpecificPartsCount":I
    const/4 v6, 0x0

    move/from16 v17, v5

    move v11, v6

    .end local v5    # "doScheme":Z
    .local v11, "issp":I
    .local v17, "doScheme":Z
    :goto_3
    if-ge v11, v12, :cond_4

    .line 3404
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3405
    .local v10, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3406
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v18

    .line 3407
    .local v18, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3408
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3409
    .local v9, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3410
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

    .line 3412
    const/16 v17, 0x0

    .line 3403
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

    .line 3414
    .end local v11    # "issp":I
    .end local v12    # "dataSchemeSpecificPartsCount":I
    .end local v13    # "scheme":Ljava/lang/String;
    .end local v14    # "dataSchemesCount":I
    .restart local v3    # "scheme":Ljava/lang/String;
    .restart local v20    # "dataSchemesCount":I
    .restart local v24    # "dataSchemeSpecificPartsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v14

    .line 3415
    .local v14, "dataAuthoritiesCount":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "iauth":I
    :goto_4
    if-ge v13, v14, :cond_9

    .line 3416
    const/4 v5, 0x1

    .line 3417
    .local v5, "doAuth":Z
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v18

    .line 3418
    .local v18, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v12

    .line 3419
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

    .line 3420
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3421
    .restart local v10    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3422
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3423
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3425
    :cond_5
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v22

    .line 3426
    .local v22, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3427
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3428
    .restart local v9    # "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3429
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

    .line 3431
    const/16 v19, 0x0

    move/from16 v21, v19

    move/from16 v17, v19

    .line 3419
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

    .line 3433
    .end local v11    # "ipath":I
    .end local v12    # "dataPathsCount":I
    .end local v13    # "iauth":I
    .end local v14    # "dataAuthoritiesCount":I
    .restart local v23    # "dataPathsCount":I
    .restart local v28    # "iauth":I
    .restart local v29    # "dataAuthoritiesCount":I
    if-eqz v17, :cond_8

    .line 3434
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3435
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3436
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3437
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3439
    :cond_7
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3440
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3441
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

    .line 3443
    const/4 v5, 0x0

    move/from16 v17, v5

    .end local v21    # "doScheme":Z
    .local v5, "doScheme":Z
    goto :goto_6

    .line 3433
    .end local v5    # "doScheme":Z
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    .end local v25    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "doScheme":Z
    :cond_8
    move/from16 v17, v21

    .line 3415
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

    .line 3446
    .end local v13    # "iauth":I
    .end local v14    # "dataAuthoritiesCount":I
    .restart local v29    # "dataAuthoritiesCount":I
    if-eqz v17, :cond_a

    .line 3447
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3448
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3449
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3450
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3451
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

    .line 3454
    .end local v18    # "builder":Landroid/net/Uri$Builder;
    .end local v21    # "finalIntent":Landroid/content/Intent;
    :cond_a
    const/4 v2, 0x0

    .line 3396
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v17    # "doScheme":Z
    .end local v24    # "dataSchemeSpecificPartsCount":I
    .end local v29    # "dataAuthoritiesCount":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v19

    move/from16 v14, v20

    goto/16 :goto_2

    .end local v20    # "dataSchemesCount":I
    .local v14, "dataSchemesCount":I
    :cond_b
    move/from16 v20, v14

    .line 3457
    .end local v4    # "ischeme":I
    .end local v14    # "dataSchemesCount":I
    .restart local v20    # "dataSchemesCount":I
    const/4 v3, 0x0

    move/from16 v17, v2

    .end local v2    # "doNonData":Z
    .local v3, "idata":I
    .local v17, "doNonData":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    if-ge v3, v2, :cond_f

    .line 3458
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v2

    .line 3459
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 3460
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3461
    .local v4, "builder":Landroid/net/Uri$Builder;
    const/4 v5, 0x0

    move v14, v5

    .local v14, "ischeme":I
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    if-ge v14, v5, :cond_d

    .line 3462
    invoke-virtual {v0, v14}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3463
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 3464
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v5

    .line 3465
    .local v12, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3466
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v12, v5, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3467
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

    .line 3463
    .end local v18    # "scheme":Ljava/lang/String;
    .end local v19    # "ischeme":I
    .end local v21    # "finalIntent":Landroid/content/Intent;
    .restart local v13    # "scheme":Ljava/lang/String;
    .restart local v14    # "ischeme":I
    :cond_c
    move-object/from16 v18, v13

    move/from16 v19, v14

    .line 3461
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

    .line 3471
    .end local v4    # "builder":Landroid/net/Uri$Builder;
    .end local v14    # "ischeme":I
    goto :goto_a

    .line 3472
    :cond_e
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3473
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3474
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

    .line 3477
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :goto_a
    const/16 v17, 0x0

    .line 3457
    .end local v2    # "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3480
    .end local v3    # "idata":I
    :cond_f
    if-eqz v17, :cond_10

    .line 3481
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

    .line 3484
    :cond_10
    return-void
.end method

.method private static createMimeGroups(Ljava/util/Set;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 787
    .local p0, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 788
    const/4 v0, 0x0

    return-object v0

    .line 791
    :cond_0
    new-instance v0, Lcom/android/server/pm/Settings$KeySetToValueMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$KeySetToValueMap;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[JLjava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .locals 40
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
    .param p18, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p19, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p20, "usesStaticLibrariesVersions"    # [J
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
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 654
    .local p21, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p4

    move/from16 v9, p12

    if-eqz v14, :cond_1

    .line 655
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is adopting original package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v0, v14, v15}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    .line 658
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v10, p5

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 659
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 660
    iput v9, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 661
    move/from16 v6, p13

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 662
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 663
    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 667
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 668
    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 670
    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 673
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 674
    move-wide/from16 v1, p10

    iput-wide v1, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 675
    move-object/from16 v13, p19

    iput-object v13, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 676
    move-object/from16 v8, p20

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 678
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    move-object/from16 v9, p18

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_9

    .line 680
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    move-object/from16 v10, p5

    move-object/from16 v4, p6

    move-object/from16 v7, p7

    move-object/from16 v5, p8

    move-object/from16 v3, p9

    move/from16 v6, p13

    move-object/from16 v13, p19

    move-object/from16 v8, p20

    new-instance v17, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v0, v17

    const/4 v1, 0x0

    move-object v8, v1

    const/4 v1, 0x0

    move v13, v1

    .line 684
    invoke-static/range {p21 .. p21}, Lcom/android/server/pm/Settings;->createMimeGroups(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    invoke-direct/range {v0 .. v16}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V

    .line 685
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 686
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 688
    and-int/lit8 v2, p12, 0x1

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-nez v2, :cond_a

    .line 694
    invoke-static/range {p18 .. p18}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 695
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p14, :cond_2

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v4

    .line 696
    .local v5, "installUserId":I
    :goto_0
    if-eqz v2, :cond_9

    if-eqz p15, :cond_9

    .line 697
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 704
    .local v7, "user":Landroid/content/pm/UserInfo;
    if-eqz p14, :cond_6

    const/4 v8, -0x1

    if-ne v5, v8, :cond_3

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 706
    move-object/from16 v9, p18

    invoke-static {v9, v8}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 704
    :cond_3
    move-object/from16 v9, p18

    .line 706
    :goto_2
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v8, :cond_5

    :cond_4
    goto :goto_3

    :cond_5
    move v8, v4

    goto :goto_4

    .line 704
    :cond_6
    move-object/from16 v9, p18

    .line 706
    :goto_3
    const/4 v8, 0x1

    .line 711
    .local v8, "installed":Z
    :goto_4
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v3, :cond_7

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 712
    invoke-static {v10}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 713
    const/4 v8, 0x0

    .line 716
    :cond_7
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v10

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v18, v0

    move/from16 v23, v8

    move/from16 v30, p16

    move/from16 v31, p17

    invoke-virtual/range {v18 .. v39}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIIILjava/lang/String;)V

    .line 734
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "installed":Z
    goto :goto_1

    .line 697
    :cond_8
    move-object/from16 v9, p18

    goto :goto_5

    .line 696
    :cond_9
    move-object/from16 v9, p18

    .line 736
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "installUserId":I
    :goto_5
    goto :goto_7

    .line 740
    :cond_a
    move-object/from16 v9, p18

    if-eqz p15, :cond_c

    .line 741
    invoke-static/range {p18 .. p18}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 742
    .restart local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 743
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v3, :cond_b

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 744
    invoke-static {v7}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 745
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 751
    :cond_b
    invoke-static {v0, v6}, Lcom/android/server/pm/OpShieldGuestInjector;->installNotInGuest(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/UserInfo;)V

    .line 753
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    goto :goto_6

    .line 756
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 757
    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v2, p2

    goto :goto_9

    .line 760
    :cond_d
    move-object/from16 v2, p2

    if-eqz v2, :cond_e

    .line 765
    new-instance v3, Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 766
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 768
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 770
    invoke-static/range {p18 .. p18}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v3

    .line 771
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_e

    .line 772
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 773
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 774
    .local v6, "userId":I
    nop

    .line 775
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 774
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 776
    nop

    .line 777
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 776
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 778
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    goto :goto_8

    .line 783
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_e
    :goto_9
    return-object v0
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5248
    if-nez p1, :cond_0

    .line 5249
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 5252
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5253
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5254
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_1

    .line 5255
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5257
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    .line 5258
    .local v0, "splitNames":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v2

    .line 5259
    .local v2, "splitRevisionCodes":[I
    if-eqz v0, :cond_3

    .line 5260
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 5261
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5262
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5263
    aget v4, v2, v3

    if-eqz v4, :cond_2

    .line 5264
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v4, v2, v3

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5260
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5268
    .end local v3    # "i":I
    :cond_3
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5270
    .end local v0    # "splitNames":[Ljava/lang/String;
    .end local v2    # "splitRevisionCodes":[I
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

    .line 4552
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 1394
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

    .line 1382
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1383
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 1389
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1390
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

    .line 4563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4565
    .local v0, "id":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4565
    return-object v2

    .line 4569
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4570
    throw v2

    .line 4566
    :catch_0
    move-exception v2

    .line 4569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4570
    nop

    .line 4571
    const/4 v2, 0x0

    return-object v2
.end method

.method private static invalidatePackageCache()V
    .locals 0

    .line 469
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 470
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 471
    return-void
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "userId"    # I

    .line 970
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 5298
    const/4 v0, 0x0

    .line 5299
    .local v0, "flagsString":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz p1, :cond_2

    .line 5300
    if-nez v0, :cond_0

    .line 5301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 5302
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5303
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5305
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 5306
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p1, v2

    .line 5307
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5308
    if-eqz p1, :cond_1

    .line 5309
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5312
    .end local v1    # "flag":I
    :cond_1
    goto :goto_0

    .line 5313
    :cond_2
    if-eqz v0, :cond_3

    .line 5314
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5317
    :cond_3
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .line 4590
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4591
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 4592
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4593
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 4594
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4595
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4591
    .end local v1    # "mask":I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4598
    .end local v0    # "i":I
    :cond_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4599
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

    .line 1916
    const/4 v0, 0x0

    .line 1918
    .local v0, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1920
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

    .line 1922
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 1923
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1925
    goto :goto_0

    .line 1927
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1928
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1929
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1930
    .local v4, "componentName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1931
    if-nez v0, :cond_3

    .line 1932
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 1934
    :cond_3
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1936
    .end local v4    # "componentName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 1938
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

    .line 1517
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1519
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

    .line 1520
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1521
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1522
    goto :goto_0

    .line 1524
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1525
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1526
    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1527
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 1528
    .end local v3    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_1

    .line 1529
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1531
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1532
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1534
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1535
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

    .line 3594
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3595
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3596
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3598
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

    .line 3599
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 3600
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 3601
    goto :goto_0

    .line 3604
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3605
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_4

    .line 3606
    new-instance v4, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v4, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3607
    .local v4, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v6, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 3608
    iget-object v5, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 3611
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3613
    invoke-virtual {v7}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3614
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3611
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3616
    .end local v4    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :goto_1
    goto :goto_2

    .line 3617
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3618
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3617
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3619
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3621
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 3622
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

    .line 4128
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4130
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

    .line 4131
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 4132
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 4133
    goto :goto_0

    .line 4136
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4137
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 4138
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4139
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 4140
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 4142
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4144
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4142
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4146
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 4147
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4148
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4147
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4150
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4151
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 4152
    :cond_5
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 36
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3626
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-string/jumbo v0, "name"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3627
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v0, "realName"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3628
    .local v21, "realName":Ljava/lang/String;
    const-string v0, "codePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3629
    .local v13, "codePathStr":Ljava/lang/String;
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3631
    .local v0, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3632
    .local v22, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v4, "nativeLibraryPath"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3634
    .local v23, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v4, "parentPackageName"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3636
    .local v24, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v4, "primaryCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3637
    .local v4, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v5, "secondaryCpuAbi"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3638
    .local v25, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string v5, "cpuAbiOverride"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3640
    .local v26, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v4, :cond_0

    if-eqz v22, :cond_0

    .line 3641
    move-object/from16 v4, v22

    move-object/from16 v27, v4

    goto :goto_0

    .line 3644
    :cond_0
    move-object/from16 v27, v4

    .end local v4    # "primaryCpuAbiStr":Ljava/lang/String;
    .local v27, "primaryCpuAbiStr":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 3645
    move-object v0, v13

    move-object v14, v0

    goto :goto_1

    .line 3644
    :cond_1
    move-object v14, v0

    .line 3647
    .end local v0    # "resourcePathStr":Ljava/lang/String;
    .local v14, "resourcePathStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "version"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3648
    .local v28, "version":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 3649
    .local v4, "versionCode":J
    if-eqz v28, :cond_2

    .line 3651
    :try_start_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 3653
    move-wide/from16 v29, v4

    goto :goto_2

    .line 3652
    :catch_0
    move-exception v0

    .line 3656
    :cond_2
    move-wide/from16 v29, v4

    .end local v4    # "versionCode":J
    .local v29, "versionCode":J
    :goto_2
    const/4 v0, 0x0

    .line 3657
    .local v0, "pkgFlags":I
    const/4 v4, 0x0

    .line 3658
    .local v4, "pkgPrivateFlags":I
    const/4 v12, 0x1

    or-int/lit8 v31, v0, 0x1

    .line 3659
    .end local v0    # "pkgFlags":I
    .local v31, "pkgFlags":I
    const-string v0, "/priv-app/"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3660
    or-int/lit8 v4, v4, 0x8

    move/from16 v32, v4

    goto :goto_3

    .line 3659
    :cond_3
    move/from16 v32, v4

    .line 3662
    .end local v4    # "pkgPrivateFlags":I
    .local v32, "pkgPrivateFlags":I
    :goto_3
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    move-object v4, v0

    new-instance v5, Ljava/io/File;

    move-object v7, v5

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    move-object v8, v5

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v5, v15

    move-object/from16 v6, v21

    move-object/from16 v9, v23

    move-object/from16 v10, v27

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    .end local v13    # "codePathStr":Ljava/lang/String;
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .local v33, "codePathStr":Ljava/lang/String;
    .local v34, "resourcePathStr":Ljava/lang/String;
    move-wide/from16 v13, v29

    move-object/from16 v35, v15

    .end local v15    # "name":Ljava/lang/String;
    .local v35, "name":Ljava/lang/String;
    move/from16 v15, v31

    move/from16 v16, v32

    invoke-direct/range {v4 .. v20}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V

    .line 3666
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v0, "ft"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3667
    .local v5, "timeStampStr":Ljava/lang/String;
    const/16 v6, 0x10

    if-eqz v5, :cond_4

    .line 3669
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 3670
    .local v7, "timeStamp":J
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7    # "timeStamp":J
    goto :goto_4

    .line 3671
    :catch_1
    move-exception v0

    .line 3672
    :goto_4
    goto :goto_5

    .line 3674
    :cond_4
    const-string/jumbo v0, "ts"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3675
    if-eqz v5, :cond_5

    .line 3677
    :try_start_2
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3678
    .restart local v7    # "timeStamp":J
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3680
    .end local v7    # "timeStamp":J
    goto :goto_5

    .line 3679
    :catch_2
    move-exception v0

    .line 3683
    :cond_5
    :goto_5
    const-string/jumbo v0, "it"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3684
    if-eqz v5, :cond_6

    .line 3686
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3688
    goto :goto_6

    .line 3687
    :catch_3
    move-exception v0

    .line 3690
    :cond_6
    :goto_6
    const-string/jumbo v0, "ut"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3691
    if-eqz v5, :cond_7

    .line 3693
    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3695
    goto :goto_7

    .line 3694
    :catch_4
    move-exception v0

    .line 3697
    :cond_7
    :goto_7
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3698
    .local v0, "idStr":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_8

    :cond_8
    move v7, v6

    :goto_8
    iput v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3699
    iget v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v7, :cond_a

    .line 3700
    const-string/jumbo v7, "sharedUserId"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3701
    .local v3, "sharedIdStr":Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_9
    iput v6, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3704
    .end local v3    # "sharedIdStr":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3706
    .local v3, "outerDepth":I
    :cond_b
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    const/4 v8, 0x1

    .local v7, "type":I
    if-eq v6, v8, :cond_10

    const/4 v6, 0x3

    if-ne v7, v6, :cond_c

    .line 3707
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_10

    .line 3708
    :cond_c
    if-eq v7, v6, :cond_b

    const/4 v6, 0x4

    if-ne v7, v6, :cond_d

    .line 3709
    goto :goto_9

    .line 3712
    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3713
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_9

    .line 3714
    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "uses-static-lib"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3715
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_9

    .line 3717
    :cond_f
    const/4 v6, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <updated-package>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3718
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3717
    invoke-static {v6, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3719
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 3723
    :cond_10
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v8, v35

    .end local v35    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3724
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

    .line 1539
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1540
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1544
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

    .line 4156
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4158
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

    .line 4159
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 4160
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 4161
    goto :goto_0

    .line 4164
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4165
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    .line 4166
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4167
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 4168
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 4170
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4172
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4170
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4174
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 4175
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4176
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4175
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4178
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4179
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 4180
    :cond_5
    return-void
.end method

.method private readMimeGroupLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4067
    .local p2, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4068
    .local v1, "groupName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4069
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4070
    return-object p2

    .line 4073
    :cond_0
    if-nez p2, :cond_1

    .line 4074
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object p2, v2

    .line 4077
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 4078
    .local v2, "mimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 4079
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 4080
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4082
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4084
    .local v3, "outerDepth":I
    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    const/4 v4, 0x3

    if-ne v5, v4, :cond_4

    .line 4085
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_8

    .line 4086
    :cond_4
    if-eq v5, v4, :cond_3

    const/4 v4, 0x4

    if-ne v5, v4, :cond_5

    .line 4087
    goto :goto_0

    .line 4090
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4091
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "mime-type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4092
    const-string/jumbo v6, "value"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4093
    .local v6, "typeName":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 4094
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4096
    .end local v6    # "typeName":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 4097
    :cond_7
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <mime-group>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4097
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4099
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4101
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 4103
    :cond_8
    return-object p2
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 84
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3731
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    const-string v11, " has bad userId "

    const-string v12, " at "

    const-string v10, "Error in package manager settings: package "

    const-string/jumbo v7, "true"

    const/4 v1, 0x0

    .line 3732
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3733
    .local v2, "realName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3734
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3735
    .local v4, "sharedIdStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3736
    .local v5, "codePathStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3737
    .local v6, "resourcePathStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3738
    .local v8, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3739
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3740
    .local v15, "primaryCpuAbiString":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3741
    .local v16, "secondaryCpuAbiString":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3742
    .local v17, "cpuAbiOverrideString":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3743
    .local v18, "systemStr":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3744
    .local v19, "installerPackageName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3745
    .local v20, "isOrphaned":Ljava/lang/String;
    const/16 v21, 0x0

    .line 3746
    .local v21, "installOriginatingPackageName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3747
    .local v22, "installInitiatingPackageName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 3748
    .local v23, "installInitiatorUninstalled":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3749
    .local v24, "volumeUuid":Ljava/lang/String;
    const/16 v25, 0x0

    .line 3750
    .local v25, "categoryHintString":Ljava/lang/String;
    const/16 v26, 0x0

    .line 3751
    .local v26, "updateAvailable":Ljava/lang/String;
    const/16 v27, -0x1

    .line 3752
    .local v27, "categoryHint":I
    const/16 v28, 0x0

    .line 3753
    .local v28, "uidError":Ljava/lang/String;
    const/16 v29, 0x0

    .line 3754
    .local v29, "pkgFlags":I
    const/16 v30, 0x0

    .line 3755
    .local v30, "pkgPrivateFlags":I
    const-wide/16 v31, 0x0

    .line 3756
    .local v31, "timeStamp":J
    const-wide/16 v33, 0x0

    .line 3757
    .local v33, "firstInstallTime":J
    const-wide/16 v35, 0x0

    .line 3758
    .local v35, "lastUpdateTime":J
    const/16 v37, 0x0

    .line 3759
    .local v37, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const/16 v38, 0x0

    .line 3760
    .local v38, "version":Ljava/lang/String;
    const-wide/16 v39, 0x0

    .line 3761
    .local v39, "versionCode":J
    const/16 v41, 0x0

    .line 3763
    .local v41, "installedForceQueryable":Ljava/lang/String;
    move-object/from16 v42, v15

    .end local v15    # "primaryCpuAbiString":Ljava/lang/String;
    .local v42, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v15, 0x0

    :try_start_0
    const-string/jumbo v0, "name"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_36

    move-object v1, v0

    .line 3764
    :try_start_1
    const-string/jumbo v0, "realName"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 3765
    const-string/jumbo v0, "userId"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_35

    move-object v3, v0

    .line 3766
    :try_start_2
    const-string/jumbo v0, "uidError"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    .line 3767
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 3768
    const-string v0, "codePath"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_34

    move-object v5, v0

    .line 3769
    :try_start_3
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_33

    move-object/from16 v44, v0

    .line 3771
    .end local v6    # "resourcePathStr":Ljava/lang/String;
    .local v44, "resourcePathStr":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_32

    move-object/from16 v45, v0

    .line 3773
    .end local v8    # "legacyCpuAbiString":Ljava/lang/String;
    .local v45, "legacyCpuAbiString":Ljava/lang/String;
    :try_start_5
    const-string/jumbo v0, "nativeLibraryPath"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_31

    .line 3774
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :try_start_6
    const-string/jumbo v0, "primaryCpuAbi"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    .line 3775
    const-string/jumbo v0, "secondaryCpuAbi"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_30

    .line 3776
    .end local v16    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    :try_start_7
    const-string v0, "cpuAbiOverride"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2f

    .line 3777
    .end local v17    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    :try_start_8
    const-string/jumbo v0, "updateAvailable"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    .line 3778
    const-string v0, "forceQueryable"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v41, v0

    .line 3780
    if-nez v42, :cond_0

    if-eqz v45, :cond_0

    .line 3781
    move-object/from16 v0, v45

    move-object/from16 v42, v0

    .line 3784
    :cond_0
    const-string/jumbo v0, "version"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2e

    move-object/from16 v38, v0

    .line 3785
    if-eqz v38, :cond_1

    .line 3787
    :try_start_9
    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0

    move-wide/from16 v39, v16

    .line 3789
    goto :goto_0

    .line 3788
    :catch_0
    move-exception v0

    .line 3791
    :cond_1
    :goto_0
    :try_start_a
    const-string/jumbo v0, "installer"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 3792
    const-string/jumbo v0, "isOrphaned"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 3793
    const-string/jumbo v0, "installInitiator"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 3794
    const-string/jumbo v0, "installOriginator"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 3795
    const-string/jumbo v0, "installInitiatorUninstalled"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 3797
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 3798
    const-string v0, "categoryHint"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2e

    move-object/from16 v25, v0

    .line 3799
    if-eqz v25, :cond_2

    .line 3801
    :try_start_b
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1

    move/from16 v27, v0

    .line 3803
    goto :goto_1

    .line 3802
    :catch_1
    move-exception v0

    .line 3806
    :cond_2
    :goto_1
    :try_start_c
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2e

    move-object/from16 v18, v0

    .line 3807
    if-eqz v18, :cond_4

    .line 3809
    :try_start_d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_2

    move/from16 v29, v0

    .line 3811
    goto :goto_2

    .line 3810
    :catch_2
    move-exception v0

    .line 3812
    :goto_2
    :try_start_e
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4

    move-object/from16 v16, v0

    .line 3813
    .end local v18    # "systemStr":Ljava/lang/String;
    .local v16, "systemStr":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 3815
    :try_start_f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_3

    move/from16 v30, v0

    .line 3817
    move-object/from16 v18, v16

    goto/16 :goto_5

    .line 3816
    :catch_3
    move-exception v0

    .line 3852
    :cond_3
    move-object/from16 v18, v16

    goto/16 :goto_5

    .line 3945
    .end local v16    # "systemStr":Ljava/lang/String;
    .restart local v18    # "systemStr":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v77, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    const/4 v13, 0x5

    move-object v12, v3

    move-object v9, v6

    move-object v3, v11

    move-object v11, v14

    move-object/from16 v6, v44

    goto/16 :goto_17

    .line 3821
    :cond_4
    :try_start_10
    const-string v0, "flags"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_2e

    move-object/from16 v18, v0

    .line 3822
    if-eqz v18, :cond_8

    .line 3824
    :try_start_11
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5

    move/from16 v29, v0

    .line 3826
    goto :goto_3

    .line 3825
    :catch_5
    move-exception v0

    .line 3827
    :goto_3
    :try_start_12
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v0, v29, v0

    if-eqz v0, :cond_5

    .line 3828
    or-int/lit8 v30, v30, 0x1

    .line 3830
    :cond_5
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v0, v29, v0

    if-eqz v0, :cond_6

    .line 3831
    or-int/lit8 v0, v30, 0x2

    move/from16 v30, v0

    .line 3833
    :cond_6
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v0, v29, v0

    if-eqz v0, :cond_7

    .line 3834
    or-int/lit8 v0, v30, 0x8

    move/from16 v30, v0

    .line 3836
    :cond_7
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_4

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v29, v0

    move/from16 v29, v0

    .end local v29    # "pkgFlags":I
    .local v0, "pkgFlags":I
    goto :goto_5

    .line 3841
    .end local v0    # "pkgFlags":I
    .restart local v29    # "pkgFlags":I
    :cond_8
    :try_start_13
    const-string/jumbo v0, "system"

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_2e

    move-object/from16 v16, v0

    .line 3842
    .end local v18    # "systemStr":Ljava/lang/String;
    .restart local v16    # "systemStr":Ljava/lang/String;
    move-object/from16 v15, v16

    .end local v16    # "systemStr":Ljava/lang/String;
    .local v15, "systemStr":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 3843
    :try_start_14
    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_6

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    .line 3844
    :cond_9
    const/4 v0, 0x0

    :goto_4
    or-int v0, v29, v0

    move/from16 v29, v0

    move-object/from16 v18, v15

    .end local v29    # "pkgFlags":I
    .restart local v0    # "pkgFlags":I
    goto :goto_5

    .line 3945
    .end local v0    # "pkgFlags":I
    .restart local v29    # "pkgFlags":I
    :catch_6
    move-exception v0

    move-object/from16 v77, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v18, v15

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    const/4 v13, 0x5

    move-object v12, v3

    move-object v9, v6

    move-object v3, v11

    move-object v11, v14

    move-object/from16 v6, v44

    goto/16 :goto_17

    .line 3848
    :cond_a
    or-int/lit8 v0, v29, 0x1

    move/from16 v29, v0

    move-object/from16 v18, v15

    .line 3852
    .end local v15    # "systemStr":Ljava/lang/String;
    .restart local v18    # "systemStr":Ljava/lang/String;
    :goto_5
    :try_start_15
    const-string v0, "ft"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_2e

    move-object v15, v0

    .line 3853
    .local v15, "timeStampStr":Ljava/lang/String;
    move-object/from16 v47, v7

    const/16 v7, 0x10

    if-eqz v15, :cond_b

    .line 3855
    :try_start_16
    invoke-static {v15, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_7

    move-wide/from16 v31, v16

    goto :goto_6

    .line 3856
    :catch_7
    move-exception v0

    .line 3857
    :goto_6
    move-wide/from16 v63, v31

    goto :goto_7

    .line 3859
    :cond_b
    :try_start_17
    const-string/jumbo v0, "ts"

    const/4 v7, 0x0

    invoke-interface {v13, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2d

    move-object v15, v0

    .line 3860
    if-eqz v15, :cond_c

    .line 3862
    :try_start_18
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_8

    move-wide/from16 v31, v48

    .line 3864
    move-wide/from16 v63, v31

    goto :goto_7

    .line 3863
    :catch_8
    move-exception v0

    .line 3867
    :cond_c
    move-wide/from16 v63, v31

    .end local v31    # "timeStamp":J
    .local v63, "timeStamp":J
    :goto_7
    :try_start_19
    const-string/jumbo v0, "it"

    const/4 v7, 0x0

    invoke-interface {v13, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_2c

    move-object v7, v0

    .line 3868
    .end local v15    # "timeStampStr":Ljava/lang/String;
    .local v7, "timeStampStr":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 3870
    const/16 v15, 0x10

    :try_start_1a
    invoke-static {v7, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v31
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_9

    move-wide/from16 v33, v31

    .line 3872
    move-wide/from16 v65, v33

    goto :goto_8

    .line 3871
    :catch_9
    move-exception v0

    .line 3874
    :cond_d
    move-wide/from16 v65, v33

    .end local v33    # "firstInstallTime":J
    .local v65, "firstInstallTime":J
    :goto_8
    :try_start_1b
    const-string/jumbo v0, "ut"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_2b

    move-object v7, v0

    .line 3875
    if-eqz v7, :cond_e

    .line 3877
    const/16 v15, 0x10

    :try_start_1c
    invoke-static {v7, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_a

    move-wide/from16 v35, v15

    .line 3879
    move-wide/from16 v67, v35

    goto :goto_9

    .line 3878
    :catch_a
    move-exception v0

    .line 3881
    :cond_e
    move-wide/from16 v67, v35

    .end local v35    # "lastUpdateTime":J
    .local v67, "lastUpdateTime":J
    :goto_9
    :try_start_1d
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_2a

    const-string v15, "PackageManager"

    if-eqz v0, :cond_f

    .line 3882
    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v7

    .end local v7    # "timeStampStr":Ljava/lang/String;
    .local v31, "timeStampStr":Ljava/lang/String;
    const-string v7, "Reading package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " userId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sharedUserId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3881
    .end local v31    # "timeStampStr":Ljava/lang/String;
    .restart local v7    # "timeStampStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v31, v7

    .line 3884
    .end local v7    # "timeStampStr":Ljava/lang/String;
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    :goto_a
    if-eqz v3, :cond_10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_b

    .line 3945
    .end local v31    # "timeStampStr":Ljava/lang/String;
    :catch_b
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v77, v47

    move-wide/from16 v31, v63

    move-wide/from16 v33, v65

    move-wide/from16 v35, v67

    const/4 v13, 0x5

    move-object v12, v3

    move-object v9, v6

    move-object v3, v11

    move-object v11, v14

    move-object/from16 v6, v44

    goto/16 :goto_17

    .line 3884
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    :cond_10
    const/4 v0, 0x0

    .line 3885
    .local v0, "userId":I
    :goto_b
    if-eqz v4, :cond_11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_b

    goto :goto_c

    :cond_11
    const/4 v7, 0x0

    .line 3886
    .local v7, "sharedUserId":I
    :goto_c
    if-nez v44, :cond_12

    .line 3887
    move-object/from16 v16, v5

    move-object/from16 v81, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v81

    .end local v44    # "resourcePathStr":Ljava/lang/String;
    .local v16, "resourcePathStr":Ljava/lang/String;
    goto :goto_d

    .line 3886
    .end local v16    # "resourcePathStr":Ljava/lang/String;
    .restart local v44    # "resourcePathStr":Ljava/lang/String;
    :cond_12
    move-object/from16 v16, v15

    move-object/from16 v15, v44

    .line 3889
    .end local v44    # "resourcePathStr":Ljava/lang/String;
    .local v15, "resourcePathStr":Ljava/lang/String;
    :goto_d
    if-eqz v2, :cond_13

    .line 3890
    :try_start_1f
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_c

    move-object/from16 v2, v17

    move-object/from16 v32, v2

    goto :goto_e

    .line 3945
    .end local v0    # "userId":I
    .end local v7    # "sharedUserId":I
    .end local v31    # "timeStampStr":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v8, v45

    move-object/from16 v77, v47

    move-wide/from16 v31, v63

    move-wide/from16 v33, v65

    move-wide/from16 v35, v67

    const/4 v13, 0x5

    move-object v12, v3

    move-object v9, v6

    move-object v3, v11

    move-object v11, v14

    move-object v6, v15

    move-object/from16 v15, v42

    goto/16 :goto_17

    .line 3889
    .restart local v0    # "userId":I
    .restart local v7    # "sharedUserId":I
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    :cond_13
    move-object/from16 v32, v2

    .line 3892
    .end local v2    # "realName":Ljava/lang/String;
    .local v32, "realName":Ljava/lang/String;
    :goto_e
    if-nez v1, :cond_14

    .line 3893
    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_e

    move-object/from16 v48, v3

    .end local v3    # "idStr":Ljava/lang/String;
    .local v48, "idStr":Ljava/lang/String;
    :try_start_21
    const-string v3, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_f

    .line 3893
    const/4 v3, 0x5

    :try_start_22
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_d

    move-object v7, v1

    move-object/from16 v75, v5

    move-object/from16 v78, v10

    move-object v2, v12

    move-object/from16 v73, v15

    move-object/from16 v77, v47

    move-object/from16 v72, v48

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    const/4 v1, 0x5

    goto/16 :goto_12

    .line 3945
    .end local v0    # "userId":I
    .end local v7    # "sharedUserId":I
    .end local v31    # "timeStampStr":Ljava/lang/String;
    :catch_d
    move-exception v0

    move v13, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v3, v11

    move-object v10, v12

    move-object v11, v14

    move-object/from16 v2, v32

    move-object/from16 v8, v45

    move-object/from16 v77, v47

    move-object/from16 v12, v48

    move-wide/from16 v31, v63

    move-wide/from16 v33, v65

    move-wide/from16 v35, v67

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    goto/16 :goto_17

    .end local v48    # "idStr":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v48, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v3, v11

    move-object v10, v12

    move-object v11, v14

    move-object/from16 v2, v32

    move-object/from16 v8, v45

    move-object/from16 v77, v47

    move-object/from16 v12, v48

    move-wide/from16 v31, v63

    move-wide/from16 v33, v65

    move-wide/from16 v35, v67

    const/4 v13, 0x5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v48    # "idStr":Ljava/lang/String;
    goto/16 :goto_17

    .line 3896
    .end local v48    # "idStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v7    # "sharedUserId":I
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    :cond_14
    move-object/from16 v48, v3

    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v48    # "idStr":Ljava/lang/String;
    if-nez v5, :cond_15

    .line 3897
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3899
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_f

    .line 3897
    const/4 v3, 0x5

    :try_start_24
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_d

    move-object v7, v1

    move v1, v3

    move-object/from16 v75, v5

    move-object/from16 v78, v10

    move-object v2, v12

    move-object/from16 v73, v15

    move-object/from16 v77, v47

    move-object/from16 v72, v48

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    goto/16 :goto_12

    .line 3945
    .end local v0    # "userId":I
    .end local v7    # "sharedUserId":I
    .end local v31    # "timeStampStr":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v3, v11

    move-object v10, v12

    move-object v11, v14

    move-object/from16 v2, v32

    move-object/from16 v8, v45

    move-object/from16 v77, v47

    move-object/from16 v12, v48

    move-wide/from16 v31, v63

    move-wide/from16 v33, v65

    move-wide/from16 v35, v67

    const/4 v13, 0x5

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v15, v42

    goto/16 :goto_17

    .line 3900
    .restart local v0    # "userId":I
    .restart local v7    # "sharedUserId":I
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x5

    const-string v2, " pkg="

    move-object/from16 v43, v6

    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v43, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string v6, "Reading package "

    if-lez v0, :cond_19

    .line 3901
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v33
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_19

    move-object/from16 v49, v4

    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .local v49, "sharedIdStr":Ljava/lang/String;
    :try_start_26
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_18

    move-object/from16 v50, v5

    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v50, "codePathStr":Ljava/lang/String;
    :try_start_27
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_17

    const/16 v17, 0x0

    move-object v3, v15

    move-object/from16 v69, v16

    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .local v3, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v15, v17

    const/16 v16, 0x0

    move-object/from16 v70, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v70, "name":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v71, v2

    move-object/from16 v2, v33

    move-object/from16 v73, v3

    move-object/from16 v72, v48

    .end local v3    # "resourcePathStr":Ljava/lang/String;
    .end local v48    # "idStr":Ljava/lang/String;
    .local v72, "idStr":Ljava/lang/String;
    .local v73, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v3, v32

    move-object/from16 v74, v49

    .end local v49    # "sharedIdStr":Ljava/lang/String;
    .local v74, "sharedIdStr":Ljava/lang/String;
    move-object/from16 v75, v50

    .end local v50    # "codePathStr":Ljava/lang/String;
    .local v75, "codePathStr":Ljava/lang/String;
    move/from16 v76, v7

    move-object/from16 v77, v47

    .end local v7    # "sharedUserId":I
    .local v76, "sharedUserId":I
    move-object/from16 v7, v42

    move-object/from16 v78, v10

    move v10, v0

    move-object/from16 v80, v11

    move-object/from16 v79, v12

    move-wide/from16 v11, v39

    move/from16 v13, v29

    move/from16 v14, v30

    move/from16 v33, v0

    move-object v0, v6

    move-object/from16 v6, v43

    .end local v0    # "userId":I
    .end local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v33, "userId":I
    :try_start_28
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_16

    .line 3906
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_29
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_15

    if-eqz v2, :cond_16

    .line 3907
    :try_start_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_10

    move-object/from16 v7, v70

    .end local v70    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    :try_start_2b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": userId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v33

    .end local v33    # "userId":I
    .local v3, "userId":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v71

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v69

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3945
    .end local v3    # "userId":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v31    # "timeStampStr":Ljava/lang/String;
    .end local v76    # "sharedUserId":I
    .restart local v70    # "name":Ljava/lang/String;
    :catch_10
    move-exception v0

    move-object/from16 v7, v70

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object/from16 v37, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-wide/from16 v31, v63

    move-wide/from16 v33, v65

    move-wide/from16 v35, v67

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v10, v79

    move-object/from16 v3, v80

    move-object v9, v6

    move-object/from16 v6, v73

    .end local v70    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    goto/16 :goto_17

    .line 3906
    .end local v7    # "name":Ljava/lang/String;
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    .restart local v33    # "userId":I
    .restart local v70    # "name":Ljava/lang/String;
    .restart local v76    # "sharedUserId":I
    :cond_16
    move/from16 v3, v33

    move-object/from16 v7, v70

    .line 3909
    .end local v33    # "userId":I
    .end local v70    # "name":Ljava/lang/String;
    .restart local v3    # "userId":I
    .restart local v7    # "name":Ljava/lang/String;
    :goto_f
    if-nez v1, :cond_17

    .line 3910
    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure adding uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3912
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3910
    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_11

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    goto :goto_10

    .line 3945
    .end local v3    # "userId":I
    .end local v31    # "timeStampStr":Ljava/lang/String;
    .end local v76    # "sharedUserId":I
    :catch_11
    move-exception v0

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object/from16 v37, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-wide/from16 v31, v63

    move-wide/from16 v33, v65

    move-wide/from16 v35, v67

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v10, v79

    move-object/from16 v3, v80

    move-object v9, v6

    move-object/from16 v6, v73

    goto/16 :goto_17

    .line 3914
    .restart local v3    # "userId":I
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    .restart local v76    # "sharedUserId":I
    :cond_17
    move-wide/from16 v10, v63

    .end local v63    # "timeStamp":J
    .local v10, "timeStamp":J
    :try_start_2c
    invoke-virtual {v1, v10, v11}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_14

    .line 3915
    move-wide/from16 v12, v65

    .end local v65    # "firstInstallTime":J
    .local v12, "firstInstallTime":J
    :try_start_2d
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_13

    .line 3916
    move-wide/from16 v14, v67

    .end local v67    # "lastUpdateTime":J
    .local v14, "lastUpdateTime":J
    :try_start_2e
    iput-wide v14, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_12

    .line 3949
    .end local v3    # "userId":I
    .end local v31    # "timeStampStr":Ljava/lang/String;
    .end local v76    # "sharedUserId":I
    :cond_18
    :goto_10
    move-object/from16 v37, v1

    move-object/from16 v4, v74

    move-object/from16 v2, v79

    const/4 v1, 0x5

    goto/16 :goto_12

    .line 3945
    :catch_12
    move-exception v0

    move-object/from16 v37, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    goto/16 :goto_17

    .end local v14    # "lastUpdateTime":J
    .restart local v67    # "lastUpdateTime":J
    :catch_13
    move-exception v0

    move-wide/from16 v14, v67

    move-object/from16 v37, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v67    # "lastUpdateTime":J
    .restart local v14    # "lastUpdateTime":J
    goto/16 :goto_17

    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    :catch_14
    move-exception v0

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    move-object/from16 v37, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v65    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .restart local v12    # "firstInstallTime":J
    .restart local v14    # "lastUpdateTime":J
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    .restart local v70    # "name":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    move-object/from16 v7, v70

    move-object/from16 v37, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v63    # "timeStamp":J
    .end local v65    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .end local v70    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v14    # "lastUpdateTime":J
    goto/16 :goto_17

    .end local v1    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .restart local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    .restart local v70    # "name":Ljava/lang/String;
    :catch_16
    move-exception v0

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    move-object/from16 v7, v70

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v63    # "timeStamp":J
    .end local v65    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .end local v70    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v14    # "lastUpdateTime":J
    goto/16 :goto_17

    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v48    # "idStr":Ljava/lang/String;
    .restart local v49    # "sharedIdStr":Ljava/lang/String;
    .restart local v50    # "codePathStr":Ljava/lang/String;
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    :catch_17
    move-exception v0

    move-object v7, v1

    move-object/from16 v78, v10

    move-object/from16 v80, v11

    move-object/from16 v79, v12

    move-object/from16 v73, v15

    move-object/from16 v6, v43

    move-object/from16 v77, v47

    move-object/from16 v72, v48

    move-object/from16 v74, v49

    move-object/from16 v75, v50

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move v13, v3

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v3, v80

    move-object/from16 v11, p0

    .end local v1    # "name":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v48    # "idStr":Ljava/lang/String;
    .end local v49    # "sharedIdStr":Ljava/lang/String;
    .end local v50    # "codePathStr":Ljava/lang/String;
    .end local v63    # "timeStamp":J
    .end local v65    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .restart local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v14    # "lastUpdateTime":J
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v74    # "sharedIdStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v48    # "idStr":Ljava/lang/String;
    .restart local v49    # "sharedIdStr":Ljava/lang/String;
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    :catch_18
    move-exception v0

    move-object v7, v1

    move-object/from16 v75, v5

    move-object/from16 v78, v10

    move-object/from16 v80, v11

    move-object/from16 v79, v12

    move-object/from16 v73, v15

    move-object/from16 v6, v43

    move-object/from16 v77, v47

    move-object/from16 v72, v48

    move-object/from16 v74, v49

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v7, v78

    move v13, v3

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v3, v80

    move-object/from16 v11, p0

    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v48    # "idStr":Ljava/lang/String;
    .end local v49    # "sharedIdStr":Ljava/lang/String;
    .end local v63    # "timeStamp":J
    .end local v65    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .restart local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v14    # "lastUpdateTime":J
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v74    # "sharedIdStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v48    # "idStr":Ljava/lang/String;
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    :catch_19
    move-exception v0

    move-object v7, v1

    move-object/from16 v74, v4

    move-object/from16 v75, v5

    move-object/from16 v78, v10

    move-object/from16 v80, v11

    move-object/from16 v79, v12

    move-object/from16 v73, v15

    move-object/from16 v6, v43

    move-object/from16 v77, v47

    move-object/from16 v72, v48

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v7, v78

    move v13, v3

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v3, v80

    move-object/from16 v11, p0

    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v48    # "idStr":Ljava/lang/String;
    .end local v63    # "timeStamp":J
    .end local v65    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .restart local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v14    # "lastUpdateTime":J
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v74    # "sharedIdStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .line 3918
    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v7, "sharedUserId":I
    .restart local v15    # "resourcePathStr":Ljava/lang/String;
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    .restart local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v48    # "idStr":Ljava/lang/String;
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    :cond_19
    move v3, v0

    move-object/from16 v74, v4

    move-object/from16 v75, v5

    move-object v0, v6

    move/from16 v76, v7

    move-object/from16 v78, v10

    move-object/from16 v80, v11

    move-object/from16 v79, v12

    move-object/from16 v73, v15

    move-object/from16 v6, v43

    move-object/from16 v77, v47

    move-object/from16 v72, v48

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    move-object v7, v1

    move-object v4, v2

    move-object/from16 v2, v16

    .end local v0    # "userId":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v15    # "resourcePathStr":Ljava/lang/String;
    .end local v43    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v48    # "idStr":Ljava/lang/String;
    .end local v63    # "timeStamp":J
    .end local v65    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .restart local v3    # "userId":I
    .restart local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v14    # "lastUpdateTime":J
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v74    # "sharedIdStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    .restart local v76    # "sharedUserId":I
    move-object/from16 v1, v74

    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 3919
    move/from16 v5, v76

    .end local v76    # "sharedUserId":I
    .local v5, "sharedUserId":I
    if-lez v5, :cond_1a

    .line 3920
    :try_start_2f
    new-instance v16, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v47

    move/from16 v33, v3

    .end local v3    # "userId":I
    .restart local v33    # "userId":I
    new-instance v3, Ljava/io/File;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_1f

    move-object/from16 v74, v1

    move-object/from16 v1, v75

    .end local v75    # "codePathStr":Ljava/lang/String;
    .local v1, "codePathStr":Ljava/lang/String;
    .restart local v74    # "sharedIdStr":Ljava/lang/String;
    :try_start_30
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_1e

    move-object/from16 v75, v1

    .end local v1    # "codePathStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    :try_start_31
    new-instance v1, Ljava/io/File;
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_31} :catch_1d

    move-object/from16 v69, v2

    move-object/from16 v2, v73

    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .local v2, "resourcePathStr":Ljava/lang/String;
    :try_start_32
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v46, v16

    move-object/from16 v48, v32

    move-object/from16 v49, v3

    move-object/from16 v50, v1

    move-object/from16 v51, v6

    move-object/from16 v52, v42

    move-object/from16 v53, v8

    move-object/from16 v54, v9

    move-wide/from16 v55, v39

    move/from16 v57, v29

    move/from16 v58, v30

    move/from16 v59, v5

    invoke-direct/range {v46 .. v62}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_1c

    move-object/from16 v1, v16

    .line 3927
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_33
    invoke-virtual {v1, v10, v11}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3928
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3929
    iput-wide v14, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_1b

    .line 3930
    move-object/from16 v3, p0

    move-object/from16 v73, v2

    .end local v2    # "resourcePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    :try_start_34
    iget-object v2, v3, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3931
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v2, :cond_18

    .line 3932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": sharedUserId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v69

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_1a

    goto/16 :goto_10

    .line 3945
    .end local v5    # "sharedUserId":I
    .end local v31    # "timeStampStr":Ljava/lang/String;
    .end local v33    # "userId":I
    :catch_1a
    move-exception v0

    move-object/from16 v37, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object v11, v3

    move-object/from16 v3, v80

    goto/16 :goto_17

    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v2    # "resourcePathStr":Ljava/lang/String;
    :catch_1b
    move-exception v0

    move-object/from16 v73, v2

    move-object/from16 v37, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v2    # "resourcePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v1    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v2    # "resourcePathStr":Ljava/lang/String;
    .restart local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catch_1c
    move-exception v0

    move-object/from16 v73, v2

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v2    # "resourcePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_17

    :catch_1d
    move-exception v0

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    goto/16 :goto_17

    .end local v75    # "codePathStr":Ljava/lang/String;
    .local v1, "codePathStr":Ljava/lang/String;
    :catch_1e
    move-exception v0

    move-object/from16 v75, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v1    # "codePathStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    :catch_1f
    move-exception v0

    move-object/from16 v74, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v4, v74

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v1    # "sharedIdStr":Ljava/lang/String;
    .restart local v74    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_17

    .line 3935
    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "sharedIdStr":Ljava/lang/String;
    .restart local v3    # "userId":I
    .restart local v5    # "sharedUserId":I
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    :cond_1a
    move-object/from16 v74, v1

    move/from16 v33, v3

    move-object/from16 v3, p0

    .end local v1    # "sharedIdStr":Ljava/lang/String;
    .end local v3    # "userId":I
    .restart local v33    # "userId":I
    .restart local v74    # "sharedIdStr":Ljava/lang/String;
    :try_start_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_24

    move-object/from16 v1, v78

    :try_start_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has bad sharedId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_23

    move-object/from16 v4, v74

    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    :try_start_37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_37} :catch_22

    move-object/from16 v2, v79

    :try_start_38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3938
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_21

    .line 3935
    const/4 v3, 0x5

    :try_start_39
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_20

    move-object/from16 v78, v1

    move v1, v3

    goto/16 :goto_12

    .line 3945
    .end local v5    # "sharedUserId":I
    .end local v31    # "timeStampStr":Ljava/lang/String;
    .end local v33    # "userId":I
    :catch_20
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    move v13, v3

    move-object v9, v6

    move-object/from16 v6, v73

    move-object/from16 v3, v80

    goto/16 :goto_14

    :catch_21
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    move-object/from16 v3, v80

    goto/16 :goto_13

    :catch_22
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    move-object/from16 v81, v7

    move-object v7, v1

    move-object/from16 v1, v81

    goto/16 :goto_17

    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v74    # "sharedIdStr":Ljava/lang/String;
    :catch_23
    move-exception v0

    move-object/from16 v4, v74

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    move-object/from16 v81, v7

    move-object v7, v1

    move-object/from16 v1, v81

    goto :goto_11

    :catch_24
    move-exception v0

    move-object/from16 v4, v74

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v2, v32

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    move-object/from16 v3, v80

    const/4 v13, 0x5

    move-object v9, v6

    move-wide/from16 v31, v10

    move-object/from16 v6, v73

    move-object/from16 v10, v79

    move-object/from16 v11, p0

    .end local v74    # "sharedIdStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    :goto_11
    goto/16 :goto_17

    .line 3941
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "sharedIdStr":Ljava/lang/String;
    .restart local v3    # "userId":I
    .restart local v31    # "timeStampStr":Ljava/lang/String;
    .restart local v76    # "sharedUserId":I
    :cond_1b
    move-object v4, v1

    move/from16 v33, v3

    move/from16 v5, v76

    move-object/from16 v1, v78

    move-object/from16 v2, v79

    const/4 v3, 0x5

    .end local v1    # "sharedIdStr":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v76    # "sharedUserId":I
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "sharedUserId":I
    .restart local v33    # "userId":I
    :try_start_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_29

    move-object/from16 v3, v80

    :try_start_3b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3b} :catch_28

    move-object/from16 v78, v1

    move-object/from16 v1, v72

    .end local v72    # "idStr":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    :try_start_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_27

    .line 3943
    move-object/from16 v72, v1

    .end local v1    # "idStr":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    :try_start_3d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_3d} :catch_26

    .line 3941
    const/4 v1, 0x5

    :try_start_3e
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_3e} :catch_25

    .line 3949
    .end local v5    # "sharedUserId":I
    .end local v31    # "timeStampStr":Ljava/lang/String;
    .end local v33    # "userId":I
    :goto_12
    move-object/from16 v79, v2

    move-object/from16 v16, v4

    move-object v1, v6

    move-object/from16 v17, v9

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v14

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v9, v21

    move-object/from16 v12, v22

    move-object/from16 v14, v23

    move-object/from16 v13, v24

    move-object/from16 v4, v26

    move/from16 v5, v27

    move-object/from16 v15, v28

    move-object/from16 v11, v37

    move-object/from16 v10, v41

    move-object/from16 v3, v42

    move-object/from16 v21, v72

    move-object/from16 v20, v73

    move-object/from16 v19, v75

    move-object/from16 v22, v7

    move-object/from16 v7, v78

    goto/16 :goto_18

    .line 3945
    :catch_25
    move-exception v0

    goto/16 :goto_15

    :catch_26
    move-exception v0

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    const/4 v13, 0x5

    move-object v9, v6

    move-object/from16 v6, v73

    goto/16 :goto_16

    .end local v72    # "idStr":Ljava/lang/String;
    .restart local v1    # "idStr":Ljava/lang/String;
    :catch_27
    move-exception v0

    move-object/from16 v72, v1

    move-object v1, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    move-object/from16 v7, v78

    const/4 v13, 0x5

    move-object v9, v6

    move-object/from16 v6, v73

    move-wide/from16 v81, v10

    move-object/from16 v11, p0

    move-object v10, v2

    move-object/from16 v2, v32

    move-wide/from16 v31, v81

    .end local v1    # "idStr":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    goto/16 :goto_17

    :catch_28
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    :goto_13
    const/4 v13, 0x5

    move-object v9, v6

    move-object/from16 v6, v73

    :goto_14
    move-wide/from16 v81, v10

    move-object/from16 v11, p0

    move-object v10, v2

    move-object/from16 v2, v32

    move-wide/from16 v31, v81

    move-object/from16 v83, v7

    move-object v7, v1

    move-object/from16 v1, v83

    goto/16 :goto_17

    :catch_29
    move-exception v0

    move-object/from16 v78, v1

    move v1, v3

    move-object/from16 v3, v80

    :goto_15
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v5, v75

    move v13, v1

    move-object v9, v6

    move-object v1, v7

    move-object/from16 v6, v73

    move-object/from16 v7, v78

    :goto_16
    move-wide/from16 v81, v10

    move-object/from16 v11, p0

    move-object v10, v2

    move-object/from16 v2, v32

    move-wide/from16 v31, v81

    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .end local v32    # "realName":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .local v5, "codePathStr":Ljava/lang/String;
    .restart local v44    # "resourcePathStr":Ljava/lang/String;
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    :catch_2a
    move-exception v0

    move-object v7, v1

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v78, v10

    move-object v3, v11

    move-object v5, v12

    move-object/from16 v77, v47

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v14, v67

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v31, v10

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v7, v78

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object v10, v5

    move-object v9, v6

    move-object/from16 v6, v44

    move-object/from16 v5, v75

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v63    # "timeStamp":J
    .end local v65    # "firstInstallTime":J
    .end local v67    # "lastUpdateTime":J
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v14    # "lastUpdateTime":J
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v14    # "lastUpdateTime":J
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v35    # "lastUpdateTime":J
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    :catch_2b
    move-exception v0

    move-object v7, v1

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v78, v10

    move-object v3, v11

    move-object v5, v12

    move-object/from16 v77, v47

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v31, v10

    move-wide/from16 v33, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v7, v78

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object v10, v5

    move-object v9, v6

    move-object/from16 v6, v44

    move-object/from16 v5, v75

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v63    # "timeStamp":J
    .end local v65    # "firstInstallTime":J
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "firstInstallTime":J
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "firstInstallTime":J
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v33, "firstInstallTime":J
    .restart local v63    # "timeStamp":J
    :catch_2c
    move-exception v0

    move-object v7, v1

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v78, v10

    move-object v3, v11

    move-object/from16 v77, v47

    move-wide/from16 v10, v63

    const/4 v13, 0x5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v31, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object/from16 v7, v78

    move-object/from16 v11, p0

    move-object v9, v6

    move-object/from16 v6, v44

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v63    # "timeStamp":J
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v31, "timeStamp":J
    :catch_2d
    move-exception v0

    move-object v7, v1

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object v3, v11

    move-object/from16 v77, v47

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object v9, v6

    move-object/from16 v6, v44

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v77, v7

    move-object v3, v11

    move-object v7, v1

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    move-object v9, v6

    move-object/from16 v6, v44

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v17    # "cpuAbiOverrideString":Ljava/lang/String;
    :catch_2f
    move-exception v0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v77, v7

    move-object v3, v11

    move-object v7, v1

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object v9, v6

    move-object/from16 v16, v8

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v6, v44

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v16, "secondaryCpuAbiString":Ljava/lang/String;
    :catch_30
    move-exception v0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v77, v7

    move-object v3, v11

    move-object v7, v1

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object v9, v6

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v6, v44

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v77, v7

    move-object v3, v11

    move-object v7, v1

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v6, v44

    move-object/from16 v8, v45

    move-object/from16 v12, v72

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v45    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v8, "legacyCpuAbiString":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v77, v7

    move-object v3, v11

    move-object v7, v1

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v6, v44

    move-object/from16 v12, v72

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v44    # "resourcePathStr":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    :catch_33
    move-exception v0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v77, v7

    move-object v3, v11

    move-object v7, v1

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v15, v42

    move-object/from16 v12, v72

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    :catch_34
    move-exception v0

    move-object/from16 v72, v3

    move-object/from16 v77, v7

    move-object/from16 v78, v10

    move-object v3, v11

    move-object v10, v12

    move-object v7, v1

    const/4 v13, 0x5

    move-object/from16 v11, p0

    move-object/from16 v15, v42

    move-object/from16 v12, v72

    move-object/from16 v7, v78

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v72    # "idStr":Ljava/lang/String;
    goto :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v72    # "idStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    :catch_35
    move-exception v0

    move-object/from16 v77, v7

    move-object/from16 v78, v10

    move-object v10, v12

    const/4 v13, 0x5

    move-object v7, v1

    move-object v12, v3

    move-object v3, v11

    move-object v11, v14

    move-object/from16 v15, v42

    move-object/from16 v7, v78

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .local v12, "idStr":Ljava/lang/String;
    goto :goto_17

    .end local v7    # "name":Ljava/lang/String;
    .end local v12    # "idStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    :catch_36
    move-exception v0

    move-object/from16 v77, v7

    move-object v7, v10

    move-object v10, v12

    const/4 v13, 0x5

    move-object v12, v3

    move-object v3, v11

    move-object v11, v14

    move-object/from16 v15, v42

    .line 3946
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v42    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "idStr":Ljava/lang/String;
    .local v15, "primaryCpuAbiString":Ljava/lang/String;
    :goto_17
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3946
    invoke-static {v13, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v45, v8

    move-object/from16 v79, v10

    move-object v3, v15

    move-object/from16 v8, v16

    move-object/from16 v14, v23

    move-object/from16 v13, v24

    move-object/from16 v15, v28

    move-wide/from16 v63, v31

    move-wide/from16 v65, v33

    move-wide/from16 v67, v35

    move-object/from16 v11, v37

    move-object/from16 v10, v41

    move-object/from16 v32, v2

    move-object/from16 v16, v4

    move-object/from16 v2, v19

    move-object/from16 v4, v26

    move-object/from16 v19, v5

    move/from16 v5, v27

    move-object/from16 v81, v22

    move-object/from16 v22, v1

    move-object v1, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v81

    move-object/from16 v82, v20

    move-object/from16 v20, v6

    move-object/from16 v6, v82

    .line 3950
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "installInitiatorUninstalled":Ljava/lang/String;
    .end local v24    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "updateAvailable":Ljava/lang/String;
    .end local v27    # "categoryHint":I
    .end local v28    # "uidError":Ljava/lang/String;
    .end local v31    # "timeStamp":J
    .end local v33    # "firstInstallTime":J
    .end local v35    # "lastUpdateTime":J
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v41    # "installedForceQueryable":Ljava/lang/String;
    .local v1, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v2, "installerPackageName":Ljava/lang/String;
    .local v3, "primaryCpuAbiString":Ljava/lang/String;
    .local v4, "updateAvailable":Ljava/lang/String;
    .local v5, "categoryHint":I
    .local v6, "isOrphaned":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "installOriginatingPackageName":Ljava/lang/String;
    .local v10, "installedForceQueryable":Ljava/lang/String;
    .local v11, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v12, "installInitiatingPackageName":Ljava/lang/String;
    .local v13, "volumeUuid":Ljava/lang/String;
    .local v14, "installInitiatorUninstalled":Ljava/lang/String;
    .local v15, "uidError":Ljava/lang/String;
    .local v16, "sharedIdStr":Ljava/lang/String;
    .local v19, "codePathStr":Ljava/lang/String;
    .local v20, "resourcePathStr":Ljava/lang/String;
    .local v21, "idStr":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    .restart local v32    # "realName":Ljava/lang/String;
    .restart local v45    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v63    # "timeStamp":J
    .restart local v65    # "firstInstallTime":J
    .restart local v67    # "lastUpdateTime":J
    :goto_18
    if-eqz v11, :cond_32

    .line 3951
    move-object/from16 v78, v7

    move-object/from16 v7, v77

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->uidError:Z

    .line 3952
    nop

    .line 3954
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3955
    move-object/from16 v23, v6

    .end local v6    # "isOrphaned":Ljava/lang/String;
    .local v23, "isOrphaned":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3952
    invoke-static {v12, v9, v2, v0, v6}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v6

    .line 3956
    .local v6, "installSource":Lcom/android/server/pm/InstallSource;
    iput-object v6, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 3957
    iput-object v13, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3958
    iput v5, v11, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 3959
    iput-object v1, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3960
    iput-object v3, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 3961
    iput-object v8, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3962
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 3963
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    .line 3965
    const-string v0, "enabled"

    move-object/from16 v24, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v2, 0x0

    move-object/from16 v1, p1

    .end local v1    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    .end local v3    # "primaryCpuAbiString":Ljava/lang/String;
    .local v24, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v26, "installerPackageName":Ljava/lang/String;
    .local v27, "primaryCpuAbiString":Ljava/lang/String;
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3966
    .local v3, "enabledStr":Ljava/lang/String;
    if-eqz v3, :cond_1f

    .line 3968
    :try_start_3f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_3f} :catch_38

    move-object/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "updateAvailable":Ljava/lang/String;
    .local v28, "updateAvailable":Ljava/lang/String;
    :try_start_40
    invoke-virtual {v11, v0, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_40} :catch_37

    .line 3982
    move-object/from16 v4, v21

    move-object/from16 v21, v22

    goto/16 :goto_1b

    .line 3969
    :catch_37
    move-exception v0

    goto :goto_19

    .end local v28    # "updateAvailable":Ljava/lang/String;
    .restart local v4    # "updateAvailable":Ljava/lang/String;
    :catch_38
    move-exception v0

    move-object/from16 v28, v4

    const/4 v4, 0x0

    .line 3970
    .end local v4    # "updateAvailable":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v28    # "updateAvailable":Ljava/lang/String;
    :goto_19
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 3971
    const/4 v7, 0x1

    invoke-virtual {v11, v7, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    goto :goto_1a

    .line 3972
    :cond_1c
    const/4 v7, 0x1

    const-string v7, "false"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 3973
    const/4 v7, 0x2

    invoke-virtual {v11, v7, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    goto :goto_1a

    .line 3974
    :cond_1d
    const-string v7, "default"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 3975
    invoke-virtual {v11, v4, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    goto :goto_1a

    .line 3977
    :cond_1e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v78

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    .end local v22    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has bad enabled value: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    .end local v21    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v2

    move-object/from16 v2, v79

    .end local v2    # "name":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3980
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3977
    const/4 v7, 0x5

    invoke-static {v7, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3982
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1a
    goto :goto_1b

    .line 3984
    .end local v28    # "updateAvailable":Ljava/lang/String;
    .local v4, "updateAvailable":Ljava/lang/String;
    .local v21, "idStr":Ljava/lang/String;
    .restart local v22    # "name":Ljava/lang/String;
    :cond_1f
    move-object/from16 v28, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v22

    .end local v22    # "name":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    .restart local v28    # "updateAvailable":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11, v2, v2, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3987
    :goto_1b
    move-object/from16 v2, p0

    move-object v7, v11

    .end local v11    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v7, "packageSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 3989
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3991
    .local v0, "outerDepth":I
    :goto_1c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move/from16 v22, v11

    move-object/from16 v31, v3

    const/4 v3, 0x1

    .end local v3    # "enabledStr":Ljava/lang/String;
    .local v22, "type":I
    .local v31, "enabledStr":Ljava/lang/String;
    if-eq v11, v3, :cond_31

    const/4 v3, 0x3

    move/from16 v11, v22

    .end local v22    # "type":I
    .local v11, "type":I
    if-ne v11, v3, :cond_21

    .line 3992
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_20

    goto :goto_1d

    :cond_20
    move-object/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    goto/16 :goto_22

    .line 3993
    :cond_21
    :goto_1d
    const/4 v3, 0x3

    if-eq v11, v3, :cond_30

    const/4 v3, 0x4

    if-ne v11, v3, :cond_22

    .line 3994
    move-object/from16 v3, v31

    goto :goto_1c

    .line 3997
    :cond_22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3999
    .local v3, "tagName":Ljava/lang/String;
    move/from16 v22, v0

    .end local v0    # "outerDepth":I
    .local v22, "outerDepth":I
    const-string v0, "disabled-components"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4000
    move-object/from16 v33, v4

    const/4 v4, 0x0

    .end local v4    # "idStr":Ljava/lang/String;
    .local v33, "idStr":Ljava/lang/String;
    invoke-direct {v2, v7, v1, v4}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_21

    .line 4001
    .end local v33    # "idStr":Ljava/lang/String;
    .restart local v4    # "idStr":Ljava/lang/String;
    :cond_23
    move-object/from16 v33, v4

    const/4 v4, 0x0

    .end local v4    # "idStr":Ljava/lang/String;
    .restart local v33    # "idStr":Ljava/lang/String;
    const-string v0, "enabled-components"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4002
    invoke-direct {v2, v7, v1, v4}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_21

    .line 4003
    :cond_24
    const-string/jumbo v0, "sigs"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4004
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v2, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_21

    .line 4005
    :cond_25
    const-string/jumbo v0, "perms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4006
    nop

    .line 4007
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4006
    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4008
    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move/from16 v42, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    const/4 v4, 0x5

    goto/16 :goto_21

    .line 4009
    :cond_26
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "identifier"

    if-eqz v0, :cond_28

    .line 4010
    move/from16 v34, v5

    const/4 v5, 0x0

    .end local v5    # "categoryHint":I
    .local v34, "categoryHint":I
    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4011
    .local v4, "id":J
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v35, v6

    .end local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .local v35, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4012
    .local v0, "refCt":Ljava/lang/Integer;
    if-eqz v0, :cond_27

    .line 4013
    iget-object v6, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v36, v8

    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v36, "secondaryCpuAbiString":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v41, 0x1

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v42, v0

    .end local v0    # "refCt":Ljava/lang/Integer;
    .local v42, "refCt":Ljava/lang/Integer;
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 4015
    .end local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v42    # "refCt":Ljava/lang/Integer;
    .restart local v0    # "refCt":Ljava/lang/Integer;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    :cond_27
    move-object/from16 v42, v0

    move-object/from16 v36, v8

    const/16 v41, 0x1

    .end local v0    # "refCt":Ljava/lang/Integer;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v42    # "refCt":Ljava/lang/Integer;
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4017
    :goto_1e
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .end local v4    # "id":J
    .end local v42    # "refCt":Ljava/lang/Integer;
    goto :goto_1f

    .line 4018
    .end local v34    # "categoryHint":I
    .end local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v5    # "categoryHint":I
    .restart local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    :cond_28
    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    .end local v5    # "categoryHint":I
    .end local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v34    # "categoryHint":I
    .restart local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    const-string/jumbo v0, "signing-keyset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_1f
    move-object/from16 v37, v9

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_21

    .line 4020
    :cond_29
    const-string/jumbo v0, "upgrade-keyset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4021
    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4022
    .restart local v4    # "id":J
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    .line 4023
    .end local v4    # "id":J
    move-object/from16 v37, v9

    const/4 v4, 0x5

    const/16 v42, 0x1

    goto/16 :goto_21

    :cond_2a
    const-string v0, "defined-keyset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4024
    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 4025
    .local v5, "id":J
    const-string v0, "alias"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4026
    .local v0, "alias":Ljava/lang/String;
    iget-object v8, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4027
    .local v4, "refCt":Ljava/lang/Integer;
    if-eqz v4, :cond_2b

    .line 4028
    iget-object v8, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v37, v9

    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .local v37, "installOriginatingPackageName":Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v41

    const/16 v42, 0x1

    add-int/lit8 v41, v41, 0x1

    move-object/from16 v43, v4

    .end local v4    # "refCt":Ljava/lang/Integer;
    .local v43, "refCt":Ljava/lang/Integer;
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 4030
    .end local v37    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v43    # "refCt":Ljava/lang/Integer;
    .restart local v4    # "refCt":Ljava/lang/Integer;
    .restart local v9    # "installOriginatingPackageName":Ljava/lang/String;
    :cond_2b
    move-object/from16 v43, v4

    move-object/from16 v37, v9

    const/16 v42, 0x1

    .end local v4    # "refCt":Ljava/lang/Integer;
    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v37    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v43    # "refCt":Ljava/lang/Integer;
    iget-object v4, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4032
    :goto_20
    iget-object v4, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 4033
    .end local v0    # "alias":Ljava/lang/String;
    .end local v5    # "id":J
    .end local v43    # "refCt":Ljava/lang/Integer;
    const/4 v4, 0x5

    goto :goto_21

    .end local v37    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v9    # "installOriginatingPackageName":Ljava/lang/String;
    :cond_2c
    move-object/from16 v37, v9

    const/16 v42, 0x1

    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v37    # "installOriginatingPackageName":Ljava/lang/String;
    const-string/jumbo v0, "install-initiator-sigs"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4034
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 4035
    .local v0, "signatures":Lcom/android/server/pm/PackageSignatures;
    iget-object v4, v2, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 4036
    iget-object v4, v7, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 4037
    invoke-virtual {v4, v0}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 4038
    .end local v0    # "signatures":Lcom/android/server/pm/PackageSignatures;
    const/4 v4, 0x5

    goto :goto_21

    :cond_2d
    const-string v0, "domain-verification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4039
    invoke-direct {v2, v1, v7}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    const/4 v4, 0x5

    goto :goto_21

    .line 4040
    :cond_2e
    const-string/jumbo v0, "mime-group"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4041
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-direct {v2, v1, v0}, Lcom/android/server/pm/Settings;->readMimeGroupLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    const/4 v4, 0x5

    goto :goto_21

    .line 4043
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <package>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4044
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4043
    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4045
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4047
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_21
    move/from16 v0, v22

    move-object/from16 v3, v31

    move-object/from16 v4, v33

    move/from16 v5, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v9, v37

    goto/16 :goto_1c

    .line 3993
    .end local v22    # "outerDepth":I
    .end local v33    # "idStr":Ljava/lang/String;
    .end local v34    # "categoryHint":I
    .end local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v37    # "installOriginatingPackageName":Ljava/lang/String;
    .local v0, "outerDepth":I
    .local v4, "idStr":Ljava/lang/String;
    .local v5, "categoryHint":I
    .restart local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v9    # "installOriginatingPackageName":Ljava/lang/String;
    :cond_30
    move/from16 v22, v0

    move-object/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    const/4 v4, 0x5

    const/16 v42, 0x1

    .end local v0    # "outerDepth":I
    .end local v4    # "idStr":Ljava/lang/String;
    .end local v5    # "categoryHint":I
    .end local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v22    # "outerDepth":I
    .restart local v33    # "idStr":Ljava/lang/String;
    .restart local v34    # "categoryHint":I
    .restart local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v37    # "installOriginatingPackageName":Ljava/lang/String;
    move-object/from16 v3, v31

    move-object/from16 v4, v33

    goto/16 :goto_1c

    .line 3991
    .end local v11    # "type":I
    .end local v33    # "idStr":Ljava/lang/String;
    .end local v34    # "categoryHint":I
    .end local v35    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v37    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v4    # "idStr":Ljava/lang/String;
    .restart local v5    # "categoryHint":I
    .restart local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .local v22, "type":I
    :cond_31
    move-object/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    move/from16 v11, v22

    move/from16 v22, v0

    .line 4048
    .end local v0    # "outerDepth":I
    .end local v4    # "idStr":Ljava/lang/String;
    .end local v5    # "categoryHint":I
    .end local v6    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v31    # "enabledStr":Ljava/lang/String;
    .restart local v33    # "idStr":Ljava/lang/String;
    .restart local v34    # "categoryHint":I
    .restart local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v37    # "installOriginatingPackageName":Ljava/lang/String;
    :goto_22
    goto :goto_23

    .line 4049
    .end local v7    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "isOrphaned":Ljava/lang/String;
    .end local v24    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v26    # "installerPackageName":Ljava/lang/String;
    .end local v27    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v28    # "updateAvailable":Ljava/lang/String;
    .end local v33    # "idStr":Ljava/lang/String;
    .end local v34    # "categoryHint":I
    .end local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v37    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v1    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v2, "installerPackageName":Ljava/lang/String;
    .local v3, "primaryCpuAbiString":Ljava/lang/String;
    .local v4, "updateAvailable":Ljava/lang/String;
    .restart local v5    # "categoryHint":I
    .local v6, "isOrphaned":Ljava/lang/String;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .local v11, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v21, "idStr":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    :cond_32
    move-object/from16 v24, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v34, v5

    move-object/from16 v23, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    move-object v7, v11

    move-object/from16 v33, v21

    move-object/from16 v21, v22

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    .end local v1    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    .end local v3    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v4    # "updateAvailable":Ljava/lang/String;
    .end local v5    # "categoryHint":I
    .end local v6    # "isOrphaned":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v11    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "name":Ljava/lang/String;
    .restart local v7    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v21, "name":Ljava/lang/String;
    .restart local v23    # "isOrphaned":Ljava/lang/String;
    .restart local v24    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v26    # "installerPackageName":Ljava/lang/String;
    .restart local v27    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v28    # "updateAvailable":Ljava/lang/String;
    .restart local v33    # "idStr":Ljava/lang/String;
    .restart local v34    # "categoryHint":I
    .restart local v36    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v37    # "installOriginatingPackageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4051
    :goto_23
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

    .line 1495
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1497
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

    .line 1498
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1499
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1500
    goto :goto_0

    .line 1502
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1503
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1504
    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1505
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 1506
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_1

    .line 1507
    :cond_3
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1507
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1510
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1512
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1513
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

    .line 1548
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1550
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

    .line 1551
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1552
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1553
    goto :goto_0

    .line 1555
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "PackageSettings"

    if-eqz v3, :cond_4

    .line 1557
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1558
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v5, :cond_3

    .line 1559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored IVI for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1559
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_1

    .line 1564
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1567
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1568
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

    .line 4183
    const-string v0, " at "

    const-string v1, " has bad userId "

    const/4 v2, 0x0

    .line 4184
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4185
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4186
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    .line 4187
    .local v5, "pkgPrivateFlags":I
    const/4 v6, 0x0

    .line 4189
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v7, 0x5

    :try_start_0
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 4190
    const-string/jumbo v8, "userId"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 4191
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 4192
    .local v8, "userId":I
    :goto_0
    const-string/jumbo v10, "true"

    const-string/jumbo v11, "system"

    invoke-interface {p1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4193
    or-int/lit8 v4, v4, 0x1

    .line 4195
    :cond_1
    if-nez v2, :cond_2

    .line 4196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4198
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4196
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 4199
    :cond_2
    if-nez v8, :cond_3

    .line 4200
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: shared-user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4203
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4200
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 4205
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    move-object v6, v9

    if-nez v9, :cond_4

    .line 4207
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4209
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4208
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4216
    .end local v8    # "userId":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 4212
    :catch_0
    move-exception v8

    .line 4213
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4215
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4213
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4218
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    if-eqz v6, :cond_b

    .line 4219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4221
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

    .line 4222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v0, :cond_a

    .line 4223
    :cond_6
    if-eq v8, v1, :cond_5

    const/4 v1, 0x4

    if-ne v8, v1, :cond_7

    .line 4224
    goto :goto_3

    .line 4227
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4228
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "sigs"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4229
    iget-object v9, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 4230
    :cond_8
    const-string/jumbo v9, "perms"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4231
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_4

    .line 4233
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4233
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4235
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4237
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .line 4238
    .end local v0    # "outerDepth":I
    .end local v8    # "type":I
    :cond_a
    goto :goto_5

    .line 4239
    :cond_b
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4241
    :goto_5
    return-void
.end method

.method private registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "appId"    # I
    .param p2, "obj"    # Lcom/android/server/pm/SettingBase;
    .param p3, "name"    # Ljava/lang/Object;

    .line 1161
    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_0

    .line 1162
    return v0

    .line 1165
    :cond_0
    const-string v1, " name="

    const/4 v2, 0x6

    const/16 v3, 0x2710

    if-lt p1, v3, :cond_3

    .line 1166
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1167
    .local v3, "size":I
    add-int/lit16 v4, p1, -0x2710

    .line 1169
    .local v4, "index":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 1170
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1173
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1174
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

    .line 1177
    return v0

    .line 1179
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1180
    .end local v3    # "size":I
    .end local v4    # "index":I
    goto :goto_1

    .line 1181
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1182
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

    .line 1185
    return v0

    .line 1187
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1189
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1150
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    return-void

    .line 1153
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeInstallerPackage(Ljava/lang/String;)V

    .line 1153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1156
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1157
    return-void
.end method

.method private replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 1216
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1218
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1219
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1220
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1223
    :goto_0
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 4384
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_0

    .line 4385
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 4387
    :cond_0
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[JLjava/util/Set;)V
    .locals 19
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
    .param p10, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p11, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p12, "usesStaticLibrariesVersions"    # [J
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
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 808
    .local p13, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 809
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v8, " to "

    if-eq v7, v1, :cond_2

    .line 810
    const/4 v7, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shared user changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v11, "<nothing>"

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v10, v11

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    if-eqz v1, :cond_1

    iget-object v11, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 810
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 814
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    const/4 v8, -0x8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating application package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 818
    :cond_2
    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v7, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v10, "; Retain data and using new"

    const-string v11, " package "

    const-string v12, " system"

    const-string v13, ""

    const-string v14, "Update"

    const-string v15, "PackageManager"

    if-nez v7, :cond_a

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    .line 820
    .local v7, "isSystem":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    if-eqz v7, :cond_3

    move-object v1, v12

    goto :goto_1

    :cond_3
    move-object v1, v13

    :goto_1
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " code path from "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    if-nez v7, :cond_9

    .line 830
    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    .line 831
    invoke-static/range {p10 .. p10}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    .line 832
    .local v1, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_7

    .line 833
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v17, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, v16

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 842
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v16, v7

    .end local v7    # "isSystem":Z
    .local v16, "isSystem":Z
    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v18, v9

    const/16 v9, 0x3e7

    if-ne v7, v9, :cond_4

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 843
    invoke-static {v7}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 844
    :cond_4
    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 845
    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v7}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 848
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    move/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v9, v18

    goto :goto_2

    .line 833
    .end local v16    # "isSystem":Z
    .end local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v1, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "isSystem":Z
    :cond_6
    move-object/from16 v17, v1

    move/from16 v16, v7

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "isSystem":Z
    .restart local v16    # "isSystem":Z
    .restart local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .line 832
    .end local v16    # "isSystem":Z
    .end local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "isSystem":Z
    :cond_7
    move-object/from16 v17, v1

    move/from16 v16, v7

    .end local v1    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "isSystem":Z
    .restart local v16    # "isSystem":Z
    .restart local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .line 830
    .end local v16    # "isSystem":Z
    .end local v17    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "isSystem":Z
    :cond_8
    move/from16 v16, v7

    .line 855
    .end local v7    # "isSystem":Z
    .restart local v16    # "isSystem":Z
    :goto_3
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_4

    .line 826
    .end local v16    # "isSystem":Z
    .restart local v7    # "isSystem":Z
    :cond_9
    move-object/from16 v1, p5

    move/from16 v16, v7

    .line 857
    .end local v7    # "isSystem":Z
    .restart local v16    # "isSystem":Z
    :goto_4
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 858
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    goto :goto_5

    .line 818
    .end local v16    # "isSystem":Z
    :cond_a
    move-object/from16 v1, p5

    .line 864
    :goto_5
    and-int/lit8 v7, p8, 0x1

    if-eqz v7, :cond_b

    .line 865
    const/16 v7, 0x3e7

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 866
    invoke-static {v9}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 867
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 871
    :cond_b
    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v7, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    .line 873
    .restart local v7    # "isSystem":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    move-object v12, v13

    :goto_6
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " resource path from "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 873
    invoke-static {v15, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 880
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 885
    .end local v7    # "isSystem":Z
    :cond_d
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 886
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v8, -0x402e0009

    and-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 892
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, p8, 0x1

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 893
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v8, p9, 0x8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 895
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x20000

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 897
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x40000

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 899
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x80000

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 901
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x200000

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 903
    iget v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int v8, p9, v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 905
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 906
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 908
    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    array-length v9, v4

    array-length v10, v5

    if-ne v9, v10, :cond_e

    .line 910
    iput-object v4, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 911
    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_7

    .line 913
    :cond_e
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 914
    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 916
    :goto_7
    move-object/from16 v9, p13

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    .line 917
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "value"    # I

    .line 2753
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2754
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2753
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2757
    goto :goto_0

    .line 2755
    :catch_0
    move-exception v0

    .line 2756
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

    .line 2758
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2663
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2665
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2668
    .local v0, "removeUserIdFile":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2669
    return-void
.end method

.method private writeMimeGroupLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4108
    .local p2, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez p2, :cond_0

    .line 4109
    return-void

    .line 4112
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4113
    .local v1, "mimeGroup":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "mime-group"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4114
    const-string/jumbo v4, "name"

    invoke-interface {p1, v2, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4116
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4117
    .local v5, "mimeType":Ljava/lang/String;
    const-string/jumbo v6, "mime-type"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4118
    const-string/jumbo v7, "value"

    invoke-interface {p1, v2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4119
    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4120
    .end local v5    # "mimeType":Ljava/lang/String;
    goto :goto_1

    .line 4122
    :cond_1
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4123
    .end local v1    # "mimeGroup":Ljava/lang/String;
    goto :goto_0

    .line 4124
    :cond_2
    return-void
.end method

.method private writePackageListLPrInternal(I)V
    .locals 18
    .param p1, "creatingUserId"    # I

    .line 2784
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "PackageSettings"

    const-string v0, " "

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v4

    .line 2785
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2786
    .local v5, "userIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 2787
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v5, v6

    .line 2786
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2789
    .end local v6    # "i":I
    :cond_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 2790
    invoke-static {v5, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 2794
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2795
    .local v6, "tempFile":Ljava/io/File;
    new-instance v7, Lcom/android/internal/util/JournaledFile;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2797
    .local v7, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    .line 2799
    .local v8, "writeTarget":Ljava/io/File;
    const/4 v9, 0x0

    .line 2801
    .local v9, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2802
    .local v10, "fstr":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, v10, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v9, v11

    .line 2803
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const/16 v12, 0x1a0

    const/16 v13, 0x3e8

    const/16 v14, 0x408

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2805
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2806
    .local v11, "sb":Ljava/lang/StringBuilder;
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 2808
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v15, 0x0

    if-nez v14, :cond_2

    const/4 v14, 0x0

    goto :goto_2

    .line 2810
    :cond_2
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2809
    invoke-static {v14, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v14

    .line 2810
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    :goto_2
    nop

    .line 2812
    .local v14, "dataPath":Ljava/lang/String;
    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v15, :cond_9

    if-nez v14, :cond_3

    move-object/from16 v16, v4

    move-object v4, v0

    goto/16 :goto_7

    .line 2819
    :cond_3
    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v15

    .line 2820
    .local v15, "isDebug":Z
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v1

    .line 2823
    .local v1, "gids":[I
    const/16 v2, 0x20

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 2824
    move-object/from16 v1, p0

    move/from16 v2, p1

    goto :goto_1

    .line 2843
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2844
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2847
    if-eqz v15, :cond_5

    :try_start_1
    const-string v2, " 1 "
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2872
    .end local v1    # "gids":[I
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v15    # "isDebug":Z
    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 2847
    .restart local v1    # "gids":[I
    .restart local v10    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "dataPath":Ljava/lang/String;
    .restart local v15    # "isDebug":Z
    :cond_5
    :try_start_2
    const-string v2, " 0 "

    :goto_3
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v2, v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    .line 2853
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2854
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4
    move-object/from16 v16, v4

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_3
    array-length v4, v1

    if-ge v2, v4, :cond_6

    .line 2855
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2856
    aget v4, v1, v2

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2854
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v16

    goto :goto_4

    .end local v2    # "i":I
    :cond_6
    goto :goto_5

    .line 2852
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    move-object/from16 v16, v4

    .line 2859
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const-string/jumbo v2, "none"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    :goto_5
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "1"

    goto :goto_6

    :cond_8
    const-string v2, "0"

    :goto_6
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v4, v0

    move-object/from16 v17, v1

    .end local v1    # "gids":[I
    .local v17, "gids":[I
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2865
    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2866
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2867
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v16

    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v15    # "isDebug":Z
    .end local v17    # "gids":[I
    goto/16 :goto_1

    .line 2812
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "dataPath":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v4

    move-object v4, v0

    .line 2813
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_7
    const-string v0, "android"

    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " due to missing metadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v16

    goto/16 :goto_1

    .line 2813
    :cond_a
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v16

    goto/16 :goto_1

    .line 2868
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "dataPath":Ljava/lang/String;
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    move-object/from16 v16, v4

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    .line 2869
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2870
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 2871
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2876
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    goto :goto_9

    .line 2872
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    goto :goto_8

    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_2
    move-exception v0

    move-object/from16 v16, v4

    .line 2873
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_8
    const-string v1, "Failed to write packages.list"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2874
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2875
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2877
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method


# virtual methods
.method addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V
    .locals 2
    .param p1, "installSource"    # Lcom/android/server/pm/InstallSource;

    .line 4054
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4055
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4057
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4058
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4060
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4061
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4063
    :cond_2
    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;)Lcom/android/server/pm/PackageSetting;
    .locals 21
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
    .param p14, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p15, "usesStaticLibraryNames"    # [J
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
            "IJII[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 575
    .local p16, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v13, p9

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 576
    .local v12, "p":Lcom/android/server/pm/PackageSetting;
    const/16 v18, 0x0

    if-eqz v12, :cond_1

    .line 577
    iget v1, v12, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v13, :cond_0

    .line 578
    return-object v12

    .line 580
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

    .line 582
    return-object v18

    .line 584
    :cond_1
    new-instance v19, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v1, v19

    const/4 v14, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p10

    move-object/from16 v20, v12

    .end local v12    # "p":Lcom/android/server/pm/PackageSetting;
    .local v20, "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V

    .line 589
    .end local v20    # "p":Lcom/android/server/pm/PackageSetting;
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v2, p9

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 590
    move-object/from16 v3, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 591
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    return-object v1

    .line 594
    :cond_2
    return-object v18
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "origPkgName"    # Ljava/lang/String;

    .line 482
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

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 599
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 600
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_0

    .line 601
    return-object v0

    .line 603
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

    .line 605
    return-object v1

    .line 607
    :cond_1
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    .line 608
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 609
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    return-object v0

    .line 613
    :cond_2
    return-object v1
.end method

.method applyDefaultPreferredAppsLPw(I)V
    .locals 21
    .param p1, "userId"    # I

    .line 3289
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Error reading apps file "

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3290
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 3291
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

    .line 3292
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget v7, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3293
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3294
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3295
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v6

    .line 3296
    .local v6, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 3297
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 3298
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/content/IntentFilter;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v9, v10, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 3296
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3302
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    .end local v7    # "i":I
    :cond_0
    goto :goto_0

    .line 3305
    :cond_1
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 3306
    .local v5, "size":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "index":I
    :goto_2
    if-ge v7, v5, :cond_e

    .line 3307
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 3308
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/pm/PackageManagerService$ScanPartition;

    .line 3310
    .local v8, "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService$ScanPartition;->getFolder()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/preferred-apps"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 3311
    .local v9, "preferredDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3312
    move-object/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_c

    .line 3315
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v10, " cannot be read"

    const-string v11, "PackageSettings"

    if-nez v0, :cond_3

    .line 3316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Directory "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    move-object/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_c

    .line 3321
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 3322
    .local v12, "files":[Ljava/io/File;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3323
    move-object/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_c

    .line 3326
    :cond_4
    array-length v13, v12

    const/4 v0, 0x0

    move v14, v0

    :goto_3
    if-ge v14, v13, :cond_c

    aget-object v15, v12, v14

    .line 3327
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, ".xml"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-xml file "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " directory, ignoring"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    goto/16 :goto_b

    .line 3332
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v6, "Preferred apps file "

    if-nez v0, :cond_6

    .line 3333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    goto/16 :goto_b

    .line 3336
    :cond_6
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_7

    .line 3337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v17, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    const-string v4, "Reading default preferred "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3336
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_7
    move-object/from16 v17, v4

    .line 3340
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :goto_4
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v0

    .line 3341
    .local v4, "str":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3342
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move/from16 v18, v5

    .end local v5    # "size":I
    .local v18, "size":I
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3345
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v19, v5

    move-object/from16 v20, v8

    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v19, "type":I
    .local v20, "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    const/4 v8, 0x2

    if-eq v5, v8, :cond_8

    move/from16 v5, v19

    const/4 v8, 0x1

    .end local v19    # "type":I
    .local v5, "type":I
    if-eq v5, v8, :cond_9

    move-object/from16 v8, v20

    goto :goto_5

    .end local v5    # "type":I
    .restart local v19    # "type":I
    :cond_8
    move/from16 v5, v19

    const/4 v8, 0x1

    .line 3350
    .end local v19    # "type":I
    .restart local v5    # "type":I
    :cond_9
    const/4 v8, 0x2

    if-eq v5, v8, :cond_a

    .line 3351
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not have start tag"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3360
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3352
    goto/16 :goto_b

    .line 3354
    :cond_a
    :try_start_5
    const-string/jumbo v8, "preferred-activities"

    move/from16 v16, v5

    .end local v5    # "type":I
    .local v16, "type":I
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 3355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not start with \'preferred-activities\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3360
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3357
    goto :goto_b

    .line 3359
    :cond_b
    :try_start_7
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3360
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_a

    .line 3340
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_6

    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v8

    move-object v5, v0

    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    goto :goto_6

    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v5, "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catchall_2
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v8

    move-object v5, v0

    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :goto_6
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_a
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "index":I
    .end local v9    # "preferredDir":Ljava/io/File;
    .end local v12    # "files":[Ljava/io/File;
    .end local v15    # "f":Ljava/io/File;
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .end local p0    # "this":Lcom/android/server/pm/Settings;
    .end local p1    # "userId":I
    :goto_7
    throw v5
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 3362
    .end local v4    # "str":Ljava/io/InputStream;
    .restart local v7    # "index":I
    .restart local v9    # "preferredDir":Ljava/io/File;
    .restart local v12    # "files":[Ljava/io/File;
    .restart local v15    # "f":Ljava/io/File;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local p0    # "this":Lcom/android/server/pm/Settings;
    .restart local p1    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_8

    .line 3360
    :catch_1
    move-exception v0

    goto :goto_9

    .line 3362
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catch_2
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v8

    .line 3363
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 3360
    .end local v0    # "e":Ljava/io/IOException;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :catch_3
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v8

    .line 3361
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3364
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_a
    nop

    .line 3326
    .end local v15    # "f":Ljava/io/File;
    :goto_b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v8, v20

    const/4 v6, 0x1

    goto/16 :goto_3

    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .local v4, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :cond_c
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "size":I
    .restart local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    goto :goto_c

    .line 3311
    .end local v12    # "files":[Ljava/io/File;
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .end local v20    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    .restart local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    :cond_d
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v20, v8

    .line 3306
    .end local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "size":I
    .end local v8    # "partition":Lcom/android/server/pm/PackageManagerService$ScanPartition;
    .end local v9    # "preferredDir":Ljava/io/File;
    .restart local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "size":I
    :goto_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 3367
    .end local v7    # "index":I
    .end local v17    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v18    # "size":I
    .restart local v4    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v5    # "size":I
    :cond_e
    return-void
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method clearBlockUninstallLPw(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1903
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1904
    return-void
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

    .line 1272
    .local p2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1273
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v1, "PackageManager"

    if-nez v0, :cond_1

    .line 1274
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1279
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v2

    .line 1280
    .local v2, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v2, :cond_2

    .line 1281
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    move-object v2, v3

    .line 1282
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1283
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_3

    .line 1284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1288
    :cond_2
    invoke-virtual {v2, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    .line 1289
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_3

    .line 1290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting domains to existing IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and with domains: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v2}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomainsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1290
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_3
    :goto_0
    return-object v2
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    .locals 24
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4246
    .local p4, "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v2, "PackageSettingsTiming"

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    move-object v12, v0

    .line 4248
    .local v12, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNewUser-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4255
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez v11, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v13, v3

    .line 4256
    .local v13, "skipPackageWhitelist":Z
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4257
    :try_start_0
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 4258
    .local v4, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    move v14, v5

    .line 4259
    .local v14, "packagesCount":I
    new-array v5, v14, [Ljava/lang/String;

    move-object v15, v5

    .line 4260
    .local v15, "volumeUuids":[Ljava/lang/String;
    new-array v5, v14, [Ljava/lang/String;

    move-object/from16 v16, v5

    .line 4261
    .local v16, "names":[Ljava/lang/String;
    new-array v5, v14, [I

    move-object/from16 v17, v5

    .line 4262
    .local v17, "appIds":[I
    new-array v5, v14, [Ljava/lang/String;

    move-object/from16 v18, v5

    .line 4263
    .local v18, "seinfos":[Ljava/lang/String;
    new-array v5, v14, [I

    move-object/from16 v19, v5

    .line 4264
    .local v19, "targetSdkVersions":[I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4265
    .local v5, "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v14, :cond_c

    .line 4266
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 4267
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v8, :cond_1

    .line 4268
    move/from16 v20, v14

    move-object/from16 v14, p5

    goto/16 :goto_7

    .line 4273
    :cond_1
    const/16 v8, 0x3e7

    if-ne v10, v8, :cond_2

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4274
    invoke-static {v8}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4275
    invoke-virtual {v7, v2, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4276
    move/from16 v20, v14

    move-object/from16 v14, p5

    goto/16 :goto_7

    .line 4287
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 4288
    .local v8, "tempPartialDecision":Z
    new-array v9, v0, [I

    const/16 v20, 0xf

    aput v20, v9, v2

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4289
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4290
    invoke-static {v9}, Lcom/android/server/pm/OpReserveAppInjector;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move v9, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v0

    :goto_3
    or-int/2addr v8, v9

    .line 4292
    :cond_5
    if-eqz v8, :cond_6

    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4293
    move/from16 v20, v14

    move-object/from16 v14, p5

    .end local v14    # "packagesCount":I
    .local v20, "packagesCount":I
    :try_start_1
    invoke-static {v14, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 4294
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v9

    if-nez v9, :cond_7

    move v9, v0

    goto :goto_4

    .line 4292
    .end local v20    # "packagesCount":I
    .restart local v14    # "packagesCount":I
    :cond_6
    move/from16 v20, v14

    move-object/from16 v14, p5

    .line 4294
    .end local v14    # "packagesCount":I
    .restart local v20    # "packagesCount":I
    :cond_7
    move v9, v2

    .line 4296
    .local v9, "shouldMaybeInstall":Z
    :goto_4
    if-eqz v9, :cond_9

    if-nez v13, :cond_8

    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4297
    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    move v0, v2

    .line 4299
    .local v0, "shouldReallyInstall":Z
    :goto_5
    invoke-virtual {v7, v0, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4303
    if-eqz v9, :cond_a

    if-nez v0, :cond_a

    .line 4304
    const/16 v22, 0x1

    goto :goto_6

    :cond_a
    move/from16 v22, v2

    :goto_6
    move/from16 v23, v22

    .line 4305
    .local v23, "uninstallReason":I
    move/from16 v2, v23

    .end local v23    # "uninstallReason":I
    .local v2, "uninstallReason":I
    invoke-virtual {v7, v2, v10}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 4306
    if-nez v0, :cond_b

    .line 4307
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 4311
    :cond_b
    move/from16 v23, v0

    .end local v0    # "shouldReallyInstall":Z
    .local v23, "shouldReallyInstall":Z
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    aput-object v0, v15, v6

    .line 4312
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v0, v16, v6

    .line 4313
    iget v0, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v0, v17, v6

    .line 4314
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v18, v6

    .line 4315
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    aput v0, v19, v6

    .line 4265
    .end local v2    # "uninstallReason":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "tempPartialDecision":Z
    .end local v9    # "shouldMaybeInstall":Z
    .end local v23    # "shouldReallyInstall":Z
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v14, v20

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    .end local v20    # "packagesCount":I
    .restart local v14    # "packagesCount":I
    :cond_c
    move/from16 v20, v14

    move-object/from16 v14, p5

    .line 4317
    .end local v4    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v5    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v6    # "i":I
    .end local v14    # "packagesCount":I
    .restart local v20    # "packagesCount":I
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4318
    const-string v0, "createAppData"

    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4319
    const/16 v21, 0x3

    .line 4321
    .local v21, "flags":I
    const/4 v6, 0x3

    move-object/from16 v2, p2

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, p3

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    :try_start_2
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppDataBatched([Ljava/lang/String;[Ljava/lang/String;II[I[Ljava/lang/String;[I)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4325
    goto :goto_8

    .line 4323
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 4324
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4326
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_8
    invoke-virtual {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4327
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4328
    :try_start_3
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4329
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4330
    invoke-virtual {v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4331
    return-void

    .line 4329
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 4317
    .end local v15    # "volumeUuids":[Ljava/lang/String;
    .end local v16    # "names":[Ljava/lang/String;
    .end local v17    # "appIds":[I
    .end local v18    # "seinfos":[Ljava/lang/String;
    .end local v19    # "targetSdkVersions":[I
    .end local v20    # "packagesCount":I
    .end local v21    # "flags":I
    :catchall_1
    move-exception v0

    move-object/from16 v14, p5

    :goto_9
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "replaced"    # Z

    .line 516
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 517
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 518
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

    .line 519
    return v1

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 523
    .local v2, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 524
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 525
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 527
    if-eqz p2, :cond_1

    .line 532
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .local v1, "disabled":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 534
    .end local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_1
    move-object v1, v0

    .line 536
    .restart local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    return v3

    .line 540
    .end local v1    # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v1
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 5341
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string v1, "activities:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5342
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "services:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5343
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "receivers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5344
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "providers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5345
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "instrumentations:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5346
    return-void
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            ">;)V"
        }
    .end annotation

    .line 5350
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/parsing/component/ParsedComponent;>;"
    invoke-static {p4}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 5351
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 5352
    return-void

    .line 5354
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5356
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedComponent;

    .line 5357
    .local v2, "component":Landroid/content/pm/parsing/component/ParsedComponent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5358
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5355
    .end local v2    # "component":Landroid/content/pm/parsing/component/ParsedComponent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5360
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    .line 5273
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5274
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5275
    const-string v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5276
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 5275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5278
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

    .line 5323
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 5324
    .local v0, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "install permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5327
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_0

    .line 5328
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5329
    goto :goto_0

    .line 5331
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5332
    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5333
    nop

    .line 5334
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    .line 5333
    const-string v4, ", flags="

    invoke-static {v4, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5335
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 5337
    :cond_1
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .locals 25
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

    .line 4672
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    iget-object v13, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4673
    .local v13, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v9, :cond_d

    .line 4674
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4675
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4676
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4677
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4678
    iget v1, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4679
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4680
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4681
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4682
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4683
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4684
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4685
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4686
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_1

    .line 4687
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 4686
    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4688
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4689
    const-string v1, "-"

    if-eqz v13, :cond_2

    .line 4690
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "splt,"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4691
    const-string v4, "base,"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4692
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4693
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4694
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v4

    .line 4695
    .local v4, "splitRevisionCodes":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-ge v5, v14, :cond_2

    .line 4696
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4697
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4698
    aget v14, v4, v5

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 4695
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4702
    .end local v4    # "splitRevisionCodes":[I
    .end local v5    # "i":I
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4703
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4704
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4705
    const-string/jumbo v5, "usr"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4706
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4707
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4708
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4709
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

    .line 4710
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

    .line 4711
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

    .line 4712
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

    .line 4713
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

    .line 4714
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

    .line 4715
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

    .line 4716
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v5

    .line 4717
    .local v5, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v5, :cond_a

    const-string v14, "HA"

    goto :goto_b

    :cond_a
    const-string v14, "ha"

    :goto_b
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4718
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4719
    iget v14, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v14}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 4720
    iget v14, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v14}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v14

    .line 4721
    .local v14, "lastDisabledAppCaller":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4722
    if-eqz v14, :cond_b

    move-object v15, v14

    goto :goto_c

    :cond_b
    move-object v15, v2

    :goto_c
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4723
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4724
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4725
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "harmfulAppWarning":Ljava/lang/String;
    .end local v14    # "lastDisabledAppCaller":Ljava/lang/String;
    goto/16 :goto_3

    .line 4726
    :cond_c
    return-void

    .line 4729
    :cond_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4730
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_d

    :cond_e
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_d
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4731
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4732
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4733
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 4736
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4737
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4740
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4742
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_10

    .line 4743
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4745
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4746
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4747
    if-nez v10, :cond_11

    .line 4748
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4749
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4750
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4751
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4752
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4754
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4755
    if-eqz v13, :cond_12

    .line 4756
    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinSdkVersion()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4757
    const-string v0, " targetSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4759
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4760
    const-string v14, "    "

    if-eqz v13, :cond_30

    .line 4761
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4762
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7, v13}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4763
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 4764
    .local v0, "apkSigningVersion":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  apkSigningVersion="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4766
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  applicationInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4767
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4768
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  flags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4769
    invoke-static {v13, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v1

    sget-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4770
    invoke-static {v13, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v1

    .line 4771
    .local v1, "privateFlags":I
    if-eqz v1, :cond_13

    .line 4772
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  privateFlags="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4773
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4775
    :cond_13
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4776
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  hasPreserveLegacyExternalStorage=true"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4777
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4779
    :cond_14
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  forceQueryable="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 4780
    iget-boolean v2, v11, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-eqz v2, :cond_15

    .line 4781
    const-string v2, " (override=true)"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4783
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4784
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4785
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  queriesPackages="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4787
    :cond_16
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 4788
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  queriesIntents="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4790
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v13, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v2

    .line 4791
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  dataDir="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4792
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  supportsScreens=["

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4793
    const/4 v3, 0x1

    .line 4794
    .local v3, "first":Z
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsSmallScreens()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_19

    .line 4795
    if-nez v3, :cond_18

    .line 4796
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4797
    :cond_18
    const/4 v3, 0x0

    .line 4798
    const-string/jumbo v4, "small"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4800
    :cond_19
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsNormalScreens()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 4801
    if-nez v3, :cond_1a

    .line 4802
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4803
    :cond_1a
    const/4 v3, 0x0

    .line 4804
    const-string/jumbo v4, "medium"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4806
    :cond_1b
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsLargeScreens()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 4807
    if-nez v3, :cond_1c

    .line 4808
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4809
    :cond_1c
    const/4 v3, 0x0

    .line 4810
    const-string/jumbo v4, "large"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4812
    :cond_1d
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSupportsExtraLargeScreens()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 4813
    if-nez v3, :cond_1e

    .line 4814
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4815
    :cond_1e
    const/4 v3, 0x0

    .line 4816
    const-string/jumbo v4, "xlarge"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4818
    :cond_1f
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4819
    if-nez v3, :cond_20

    .line 4820
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4821
    :cond_20
    const/4 v3, 0x0

    .line 4822
    const-string/jumbo v4, "resizeable"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4824
    :cond_21
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 4825
    if-nez v3, :cond_22

    .line 4826
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4827
    :cond_22
    const/4 v3, 0x0

    .line 4828
    const-string v4, "anyDensity"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4830
    :cond_23
    const-string v4, "]"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4831
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    .line 4832
    .local v4, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_24

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_24

    .line 4833
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  dynamic libraries:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4834
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_24

    .line 4835
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4836
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4834
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 4839
    .end local v5    # "i":I
    :cond_24
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    const-string v15, " version:"

    if-eqz v5, :cond_25

    .line 4840
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  static library:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4841
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4842
    const-string/jumbo v5, "name:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4843
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v5, v0

    move/from16 v16, v1

    .end local v0    # "apkSigningVersion":I
    .end local v1    # "privateFlags":I
    .local v5, "apkSigningVersion":I
    .local v16, "privateFlags":I
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_f

    .line 4839
    .end local v5    # "apkSigningVersion":I
    .end local v16    # "privateFlags":I
    .restart local v0    # "apkSigningVersion":I
    .restart local v1    # "privateFlags":I
    :cond_25
    move v5, v0

    move/from16 v16, v1

    .line 4846
    .end local v0    # "apkSigningVersion":I
    .end local v1    # "privateFlags":I
    .restart local v5    # "apkSigningVersion":I
    .restart local v16    # "privateFlags":I
    :goto_f
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    .line 4847
    .local v0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 4848
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  usesLibraries:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4849
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    move-object/from16 v17, v2

    .end local v2    # "dataDir":Ljava/io/File;
    .local v17, "dataDir":Ljava/io/File;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 4850
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4849
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v17

    goto :goto_10

    .line 4847
    .end local v1    # "i":I
    .end local v17    # "dataDir":Ljava/io/File;
    .restart local v2    # "dataDir":Ljava/io/File;
    :cond_26
    move-object/from16 v17, v2

    .line 4854
    .end local v2    # "dataDir":Ljava/io/File;
    .restart local v17    # "dataDir":Ljava/io/File;
    :cond_27
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v1

    .line 4855
    .local v1, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    .line 4856
    .local v2, "usesStaticLibrariesVersions":[J
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_29

    .line 4857
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v18, v0

    .end local v0    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "  usesStaticLibraries:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    move/from16 v19, v3

    .end local v3    # "first":Z
    .local v19, "first":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 4859
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4860
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4861
    move-object/from16 v20, v4

    .end local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    aget-wide v3, v2, v0

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 4858
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_11

    .end local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28
    move-object/from16 v20, v4

    .end local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_12

    .line 4856
    .end local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "first":Z
    .end local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "first":Z
    .restart local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    move-object/from16 v18, v0

    move/from16 v19, v3

    move-object/from16 v20, v4

    .line 4865
    .end local v0    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "first":Z
    .end local v4    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "first":Z
    .restart local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    .line 4866
    .local v0, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 4867
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  usesOptionalLibraries:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4868
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 4869
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4870
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4868
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 4874
    .end local v3    # "i":I
    :cond_2a
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v3

    .line 4875
    .local v3, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2b

    .line 4876
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesLibraryFiles:"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4877
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_2b

    .line 4878
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4877
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 4881
    .end local v4    # "i":I
    :cond_2b
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v4

    .line 4882
    .local v4, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2f

    .line 4883
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "  processes:"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4884
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_15
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/parsing/component/ParsedProcess;

    .line 4885
    .local v21, "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v22, v0

    .end local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4886
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/parsing/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 4887
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/parsing/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    .line 4888
    .local v0, "deniedPermission":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v23, v1

    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "      deny: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    .end local v0    # "deniedPermission":Ljava/lang/String;
    move-object/from16 v1, v23

    move-object/from16 v0, v24

    goto :goto_16

    .line 4887
    .end local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    move-object/from16 v23, v1

    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_17

    .line 4886
    .end local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2d
    move-object/from16 v23, v1

    .line 4892
    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    .restart local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_17
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    goto :goto_15

    .line 4884
    .end local v22    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .end local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_18

    .line 4882
    .end local v22    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .line 4895
    .end local v0    # "usesOptionalLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "usesStaticLibrariesVersions":[J
    .end local v3    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    .end local v5    # "apkSigningVersion":I
    .end local v16    # "privateFlags":I
    .end local v17    # "dataDir":Ljava/io/File;
    .end local v18    # "usesLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "first":Z
    .end local v20    # "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_30
    :goto_18
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4896
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4897
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4898
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4899
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4900
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4901
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4902
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4903
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4904
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 4905
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4906
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4908
    :cond_31
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 4909
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4910
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4912
    :cond_32
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4913
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4914
    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4915
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4916
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4917
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4919
    if-eqz v13, :cond_33

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 4920
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4921
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4924
    :cond_33
    if-eqz v13, :cond_38

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 4925
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 4926
    .local v0, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedPermission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4927
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 4928
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 4929
    .local v2, "perm":Landroid/content/pm/parsing/component/ParsedPermission;
    if-eqz v10, :cond_34

    .line 4930
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 4931
    goto :goto_1a

    .line 4933
    :cond_34
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4934
    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4935
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4936
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    .line 4937
    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4939
    :cond_35
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_36

    .line 4940
    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4942
    :cond_36
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_37

    .line 4943
    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4945
    :cond_37
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4927
    .end local v2    # "perm":Landroid/content/pm/parsing/component/ParsedPermission;
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 4949
    .end local v0    # "perms":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedPermission;>;"
    .end local v1    # "i":I
    :cond_38
    if-nez v10, :cond_39

    if-eqz p9, :cond_3c

    :cond_39
    if-eqz v13, :cond_3c

    .line 4950
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4951
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 4952
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 4953
    .local v0, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4954
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 4955
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4956
    .local v2, "perm":Ljava/lang/String;
    if-eqz v10, :cond_3a

    .line 4957
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 4958
    goto :goto_1c

    .line 4960
    :cond_3a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4961
    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 4962
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 4963
    const-string v4, ": restricted=true"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    .line 4965
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4954
    .end local v2    # "perm":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 4970
    .end local v0    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_3c
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v15, "  "

    if-eqz v0, :cond_3d

    if-nez v10, :cond_3d

    if-eqz p9, :cond_3e

    .line 4971
    :cond_3d
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4972
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v10, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4975
    .end local v0    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_3e
    if-eqz p10, :cond_3f

    .line 4976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v11}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 4979
    :cond_3f
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4980
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4981
    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4982
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4983
    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4984
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4985
    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4986
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4987
    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4988
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4989
    const-string v0, " distractionFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4990
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getDistractionFlags(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4991
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4992
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4993
    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4994
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4995
    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4996
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4997
    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4998
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4999
    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5000
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5002
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 5003
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5004
    const-string v0, "  Suspend params:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5005
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 5006
    .local v0, "pus":Landroid/content/pm/PackageUserState;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1e
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 5007
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5008
    const-string v2, "    suspendingPackage="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5009
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5010
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 5011
    .local v2, "params":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v2, :cond_40

    .line 5012
    const-string v3, " dialogInfo="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5013
    iget-object v3, v2, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5015
    :cond_40
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5006
    .end local v2    # "params":Landroid/content/pm/PackageUserState$SuspendParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 5019
    .end local v0    # "pus":Landroid/content/pm/PackageUserState;
    .end local v1    # "i":I
    :cond_41
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v4

    .line 5020
    .local v4, "overlayPaths":[Ljava/lang/String;
    if-eqz v4, :cond_42

    array-length v1, v4

    if-lez v1, :cond_42

    .line 5021
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  overlay paths:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5022
    array-length v1, v4

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_42

    aget-object v3, v4, v2

    .line 5023
    .local v3, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5022
    .end local v3    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 5027
    :cond_42
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    .line 5028
    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getOverlayPathsForLibrary(I)Ljava/util/Map;

    move-result-object v17

    .line 5029
    .local v17, "sharedLibraryOverlayPaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v17, :cond_45

    .line 5031
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5032
    .local v2, "libOverlayPaths":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_43

    .line 5033
    goto :goto_20

    .line 5035
    :cond_43
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5036
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " overlay paths:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v0, v3

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_44

    move/from16 v20, v0

    aget-object v0, v3, v1

    .line 5038
    .local v0, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    .end local v0    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v20

    goto :goto_21

    .line 5040
    .end local v2    # "libOverlayPaths":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_44
    move-object/from16 v1, v19

    goto :goto_20

    .line 5043
    :cond_45
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    .line 5044
    .local v3, "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 5045
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5046
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5049
    :cond_46
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_47

    .line 5050
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 5051
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    .line 5053
    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v19

    .line 5052
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    .end local v2    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v20, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v2, v18

    move-object/from16 v18, v3

    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .local v18, "lastDisabledAppCaller":Ljava/lang/String;
    move-object/from16 v3, p4

    move-object/from16 v21, v4

    .end local v4    # "overlayPaths":[Ljava/lang/String;
    .local v21, "overlayPaths":[Ljava/lang/String;
    move-object/from16 v4, v19

    move-object v6, v5

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .local v6, "user":Landroid/content/pm/UserInfo;
    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    goto :goto_22

    .line 5049
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v21    # "overlayPaths":[Ljava/lang/String;
    .restart local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v4    # "overlayPaths":[Ljava/lang/String;
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_47
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move-object v6, v5

    .line 5056
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v4    # "overlayPaths":[Ljava/lang/String;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v6    # "user":Landroid/content/pm/UserInfo;
    .restart local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v21    # "overlayPaths":[Ljava/lang/String;
    :goto_22
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    .line 5057
    .local v0, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v0, :cond_48

    .line 5058
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5059
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5062
    :cond_48
    if-nez v10, :cond_4a

    .line 5063
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 5064
    .local v1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, "      "

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_49

    .line 5065
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    disabledComponents:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5067
    .local v4, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5068
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_23

    .line 5070
    :cond_49
    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 5071
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_4a

    .line 5072
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    enabledComponents:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5073
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5074
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5075
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_24

    .line 5078
    .end local v0    # "harmfulAppWarning":Ljava/lang/String;
    .end local v1    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v17    # "sharedLibraryOverlayPaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v18    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v21    # "overlayPaths":[Ljava/lang/String;
    :cond_4a
    move-object/from16 v6, p0

    goto/16 :goto_1d

    .line 5079
    :cond_4b
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

    .line 5083
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5084
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 5085
    .local v7, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 5086
    .local v0, "printedSomething":Z
    nop

    .line 5087
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v19

    .line 5088
    .local v19, "dumpAllComponents":Z
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v20

    .line 5089
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

    .line 5090
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_0

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 5091
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5092
    goto :goto_0

    .line 5094
    :cond_0
    if-eqz v12, :cond_1

    .line 5095
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5096
    goto :goto_0

    .line 5099
    :cond_1
    if-nez p5, :cond_2

    if-eqz v13, :cond_2

    .line 5100
    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 5103
    :cond_2
    if-nez p5, :cond_4

    if-nez v0, :cond_4

    .line 5104
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5105
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5106
    :cond_3
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5107
    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_1

    .line 5109
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

    .line 5111
    .end local v18    # "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, v17

    goto :goto_0

    .line 5113
    .end local v17    # "printedSomething":Z
    .restart local v0    # "printedSomething":Z
    :cond_7
    const/4 v0, 0x0

    .line 5114
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_d

    if-nez v12, :cond_d

    .line 5115
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

    .line 5116
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 5117
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 5118
    goto :goto_3

    .line 5120
    :cond_8
    if-nez p5, :cond_b

    .line 5121
    if-nez v0, :cond_a

    .line 5122
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 5123
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5124
    :cond_9
    const-string v8, "Renamed packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5125
    const/4 v0, 0x1

    .line 5127
    :cond_a
    const-string v8, "  "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 5129
    :cond_b
    const-string/jumbo v8, "ren,"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5131
    :goto_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5132
    if-eqz p5, :cond_c

    const-string v8, " -> "

    goto :goto_5

    :cond_c
    const-string v8, ","

    :goto_5
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5133
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5134
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 5137
    :cond_d
    const/4 v0, 0x0

    .line 5138
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_13

    if-nez v12, :cond_13

    .line 5139
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

    .line 5140
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_e

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 5141
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 5142
    goto :goto_6

    .line 5144
    :cond_e
    if-nez p5, :cond_10

    if-nez v0, :cond_10

    .line 5145
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 5146
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5147
    :cond_f
    const-string v8, "Hidden system packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5148
    const/4 v0, 0x1

    .line 5150
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

    .line 5152
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v11, p4

    goto :goto_6

    .line 5154
    :cond_13
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5157
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 5159
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5160
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5161
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5162
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    .line 5160
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5164
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

    .line 5168
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

    .line 5170
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5243
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5244
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5245
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

    .line 5282
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_2

    .line 5283
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5284
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5285
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_1

    .line 5286
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5287
    goto :goto_0

    .line 5289
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5290
    const-string v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5291
    nop

    .line 5292
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    .line 5291
    const-string v3, ", flags="

    invoke-static {v3, v2}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5293
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 5295
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

    .line 5174
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 5175
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

    .line 5176
    .local v10, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_0

    .line 5177
    goto :goto_0

    .line 5179
    :cond_0
    if-eqz v8, :cond_1

    .line 5180
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5181
    goto :goto_0

    .line 5183
    :cond_1
    if-nez p5, :cond_b

    .line 5184
    if-nez v0, :cond_3

    .line 5185
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5186
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5187
    :cond_2
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5188
    const/4 v0, 0x1

    move v11, v0

    goto :goto_1

    .line 5184
    :cond_3
    move v11, v0

    .line 5191
    .end local v0    # "printedSomething":Z
    .local v11, "printedSomething":Z
    :goto_1
    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5192
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5193
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5194
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5195
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5197
    const-string v12, "    "

    .line 5198
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5200
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Packages"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5201
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 5202
    .local v13, "numPackages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const-string v14, "  "

    if-ge v0, v13, :cond_5

    .line 5203
    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5204
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_4

    .line 5205
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

    .line 5207
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

    .line 5202
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5211
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x4

    move-object/from16 v15, p4

    invoke-virtual {v15, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5212
    move v0, v11

    goto/16 :goto_0

    .line 5215
    :cond_6
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 5216
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v6, v7, v12, v8, v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 5218
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

    .line 5219
    .local v1, "userId":I
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v0

    .line 5220
    .local v0, "gids":[I
    nop

    .line 5221
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v17

    .line 5222
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

    .line 5223
    :cond_8
    :goto_5
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v18, v2

    const-string v2, "User "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v0}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5225
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

    .line 5218
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

    .line 5229
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "numPackages":I
    move v0, v11

    goto :goto_8

    .line 5230
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

    .line 5232
    .end local v10    # "su":Lcom/android/server/pm/SharedUserSetting;
    :goto_8
    goto/16 :goto_0

    .line 5233
    :cond_c
    move-object/from16 v15, p4

    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5236
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5237
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5238
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5240
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4647
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4648
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4649
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4650
    .local v1, "volumeUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4651
    .local v2, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4652
    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4653
    :cond_0
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4654
    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4656
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

    .line 4658
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4659
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "sdkVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4660
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "databaseVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4661
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4662
    iget-object v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    const-string v4, "fingerprint"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4663
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4664
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4648
    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4666
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4667
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1244
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1245
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_0

    .line 1246
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    .line 1247
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1249
    :cond_0
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1235
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1236
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1237
    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1238
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1240
    :cond_0
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .line 1226
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1227
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1228
    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1229
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1231
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 19
    .param p1, "name"    # Ljava/lang/String;

    .line 544
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 545
    .local v15, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v15, :cond_0

    .line 546
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

    .line 547
    const/4 v2, 0x0

    return-object v2

    .line 549
    :cond_0
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 550
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

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v17, v2

    move-object v2, v15

    .end local v15    # "p":Lcom/android/server/pm/PackageSetting;
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    move-object v15, v0

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v18, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v18

    .end local v2    # "p":Lcom/android/server/pm/PackageSetting;
    .local v17, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[JLjava/util/Map;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 555
    .local v0, "ret":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 558
    :cond_1
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 1434
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1435
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_0

    .line 1436
    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    .line 1437
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
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

    .line 512
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4469
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4470
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4473
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    .line 4471
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1907
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1908
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1909
    const/4 v1, 0x0

    return v1

    .line 1911
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4478
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4479
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4480
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 4483
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4484
    .local v2, "classNameStr":Ljava/lang/String;
    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 4481
    .end local v2    # "classNameStr":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getDefaultRuntimePermissionsVersionLPr(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1422
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersionLPr(I)I

    move-result v0

    return v0
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "enabledPackageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 4435
    if-nez p1, :cond_0

    .line 4436
    const/4 v0, 0x0

    return-object v0

    .line 4438
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 4425
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4426
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .line 1447
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

    .line 4539
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4540
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4543
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4541
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

    .line 1259
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1260
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1261
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1266
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1299
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1300
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1301
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1306
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

    .line 1336
    if-nez p1, :cond_0

    .line 1337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1339
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1340
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

    .line 1341
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    .line 1342
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1343
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1344
    goto :goto_0

    .line 1346
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_0

    .line 1348
    :cond_3
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .line 1443
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

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .locals 3
    .param p1, "appId"    # I

    .line 1194
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1196
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1197
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

    .line 1199
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

    .line 496
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 497
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 498
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 499
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 500
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_0

    .line 505
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

    .line 506
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 502
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

    .line 508
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .line 4410
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    .line 4411
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4413
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4416
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

    .line 4579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4580
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4581
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4582
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4583
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4580
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4586
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 978
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 983
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_1

    .line 984
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 986
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 987
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 563
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

    .line 4442
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4443
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4445
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4446
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method public isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "component"    # Landroid/content/pm/parsing/component/ParsedMainComponent;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 4452
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4453
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4455
    :cond_0
    invoke-virtual {v0, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4456
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Landroid/content/pm/PackageUserState;->isMatch(ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v2

    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4460
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4461
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4464
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-boolean v1, v1, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    return v1

    .line 4462
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

.method isPermissionUpgradeNeededLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1414
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->isPermissionUpgradeNeeded(I)Z

    move-result v0

    return v0
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    return-void
.end method

.method pruneSharedUsersLPw()V
    .locals 8

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
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

    .line 619
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 620
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_0

    .line 621
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    goto :goto_0

    .line 625
    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 626
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 627
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 628
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 630
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    goto :goto_1

    .line 631
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 632
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_3
    goto :goto_0

    .line 635
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 636
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 638
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

    .line 2026
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2028
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2030
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

    .line 2031
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6

    .line 2032
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 2033
    goto :goto_0

    .line 2036
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2037
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2038
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2039
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2040
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2041
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v6, " status="

    const-string v7, "PackageSettings"

    if-eqz v5, :cond_3

    .line 2043
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2044
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_4

    .line 2045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restored IVI for existing app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2045
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2049
    :cond_3
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_4

    .line 2051
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restored IVI for pending app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2051
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    :goto_1
    goto :goto_2

    .line 2056
    :cond_5
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2056
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2059
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2061
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 2062
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

    .line 1596
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1598
    .local v0, "outerDepth":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1599
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

    .line 1600
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1601
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1602
    goto :goto_0

    .line 1604
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1605
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1606
    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1607
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1608
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 1609
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1611
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1612
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1614
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1615
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1616
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 1618
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1620
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

    .line 1572
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1574
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

    .line 1575
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1576
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1577
    goto :goto_0

    .line 1579
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1580
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1581
    const/4 v3, 0x0

    const-string/jumbo v4, "packageName"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1582
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1583
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_3
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1586
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1588
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1589
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1591
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1592
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

    .line 2274
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2276
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

    .line 2278
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v9, p0

    goto/16 :goto_7

    .line 2279
    :cond_1
    :goto_1
    if-eq v4, v3, :cond_b

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    .line 2281
    goto :goto_0

    .line 2283
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2284
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "PackageManager"

    if-eqz v6, :cond_a

    .line 2285
    const/4 v6, 0x0

    const-string/jumbo v8, "name"

    invoke-interface {v0, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2287
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v10

    .line 2288
    .local v10, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v10, :cond_3

    .line 2289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2291
    goto :goto_0

    .line 2294
    :cond_3
    const-string v11, "granted"

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2295
    .local v11, "grantedStr":Ljava/lang/String;
    const/4 v12, 0x0

    if-eqz v11, :cond_5

    .line 2296
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

    .line 2298
    .local v5, "granted":Z
    :goto_3
    const-string v13, "flags"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2299
    .local v6, "flagsStr":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 2300
    const/16 v12, 0x10

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_4

    :cond_6
    nop

    .line 2302
    .local v12, "flags":I
    :goto_4
    const-string v13, "Permission already added: "

    const/4 v15, -0x1

    if-eqz v5, :cond_8

    .line 2303
    invoke-virtual {v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v14

    if-ne v14, v15, :cond_7

    .line 2305
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 2308
    :cond_7
    const v7, 0x3fbff

    invoke-virtual {v1, v10, v15, v7, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_5

    .line 2312
    :cond_8
    invoke-virtual {v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v14

    if-ne v14, v15, :cond_9

    .line 2314
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 2317
    :cond_9
    const v7, 0x3fbff

    invoke-virtual {v1, v10, v15, v7, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2321
    .end local v5    # "granted":Z
    .end local v6    # "flagsStr":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "grantedStr":Ljava/lang/String;
    .end local v12    # "flags":I
    :goto_5
    goto :goto_6

    .line 2322
    :cond_a
    move-object/from16 v9, p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <permissions>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2322
    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2326
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_6
    goto/16 :goto_0

    .line 2279
    :cond_b
    move-object/from16 v9, p0

    goto/16 :goto_0

    .line 2276
    :cond_c
    move-object/from16 v9, p0

    .line 2327
    :goto_7
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 3046
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, p0

    const-string v2, "No start tag found in package manager settings"

    const/4 v3, 0x0

    .line 3047
    .local v3, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x4

    const-string v5, "PackageManager"

    if-eqz v0, :cond_1

    .line 3049
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 3050
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v6, "Reading from backup settings file\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    const-string v0, "Need to read from backup settings file"

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3053
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up settings file "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3063
    :cond_0
    goto :goto_0

    .line 3061
    :catch_0
    move-exception v0

    .line 3066
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3067
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3068
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3069
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3072
    const-string v6, "Error reading package manager settings"

    const-string v7, "Error reading settings: "

    const-string v8, "Error reading: "

    const-string/jumbo v9, "primary_physical"

    const/4 v10, 0x1

    const/4 v12, 0x0

    if-nez v3, :cond_3

    .line 3073
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3074
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No settings file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    const-string v0, "No settings file; creating initial state"

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3079
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3080
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3081
    return v12

    .line 3083
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v13, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 3085
    :cond_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v13, v0

    .line 3086
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3089
    :goto_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    .local v14, "type":I
    const/4 v15, 0x2

    if-eq v0, v15, :cond_4

    if-eq v14, v10, :cond_4

    goto :goto_1

    .line 3094
    :cond_4
    if-eq v14, v15, :cond_5

    .line 3095
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    const/4 v0, 0x5

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3098
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    return v12

    .line 3103
    :cond_5
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v2, v0

    .line 3104
    .local v2, "outerDepth":I
    :goto_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    if-eq v0, v10, :cond_1d

    const/4 v0, 0x3

    if-ne v14, v0, :cond_6

    .line 3105
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v2, :cond_1d

    .line 3106
    :cond_6
    if-eq v14, v0, :cond_1c

    if-ne v14, v4, :cond_7

    .line 3107
    goto/16 :goto_6

    .line 3110
    :cond_7
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 3111
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3112
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3113
    :cond_8
    const-string/jumbo v0, "permissions"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3114
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3115
    :cond_9
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3116
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3117
    :cond_a
    const-string/jumbo v0, "shared-user"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3118
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3119
    :cond_b
    const-string/jumbo v0, "preferred-packages"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_5

    .line 3121
    :cond_c
    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3124
    invoke-virtual {v1, v13, v12}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_5

    .line 3125
    :cond_d
    const-string/jumbo v0, "persistent-preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3128
    invoke-direct {v1, v13, v12}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_5

    .line 3129
    :cond_e
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3132
    invoke-direct {v1, v13, v12}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_5

    .line 3133
    :cond_f
    const-string v0, "default-browser"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3134
    invoke-virtual {v1, v13, v12}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_5

    .line 3135
    :cond_10
    const-string/jumbo v0, "updated-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3136
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3137
    :cond_11
    const-string/jumbo v0, "renamed-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_13

    .line 3138
    const-string/jumbo v0, "new"

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3139
    .local v0, "nname":Ljava/lang/String;
    const-string/jumbo v10, "old"

    invoke-interface {v13, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3140
    .local v4, "oname":Ljava/lang/String;
    if-eqz v0, :cond_12

    if-eqz v4, :cond_12

    .line 3141
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3143
    .end local v0    # "nname":Ljava/lang/String;
    .end local v4    # "oname":Ljava/lang/String;
    :cond_12
    goto/16 :goto_5

    :cond_13
    const-string/jumbo v0, "restored-ivi"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3144
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 3145
    :cond_14
    const-string/jumbo v0, "last-platform-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v10, "fingerprint"

    const-string v11, "external"

    const-string/jumbo v4, "internal"

    if-eqz v0, :cond_15

    .line 3147
    :try_start_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3149
    .local v0, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v16

    move-object/from16 v17, v16

    .line 3152
    .local v17, "external":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-static {v13, v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3153
    invoke-static {v13, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v11, v17

    .end local v17    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .local v11, "external":Lcom/android/server/pm/Settings$VersionInfo;
    iput v4, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3154
    nop

    .line 3155
    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3157
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v11    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_5

    :cond_15
    const-string v0, "database-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3159
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3161
    .restart local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v10

    .line 3164
    .local v10, "external":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-static {v13, v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3165
    invoke-static {v13, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, v10, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3167
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v10    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_5

    :cond_16
    const-string/jumbo v0, "verifier"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3168
    const-string v0, "device"

    const/4 v4, 0x0

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v0

    .line 3170
    .local v4, "deviceIdentity":Ljava/lang/String;
    :try_start_3
    invoke-static {v4}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3174
    goto :goto_3

    .line 3171
    :catch_1
    move-exception v0

    .line 3172
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Discard invalid verifier device id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3173
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3172
    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "deviceIdentity":Ljava/lang/String;
    :goto_3
    goto/16 :goto_5

    :cond_17
    const-string/jumbo v0, "read-external-storage"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3176
    const-string v0, "enforcement"

    const/4 v4, 0x0

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3177
    .local v0, "enforcement":Ljava/lang/String;
    nop

    .line 3178
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

    .line 3179
    .end local v0    # "enforcement":Ljava/lang/String;
    goto :goto_5

    :cond_19
    const-string/jumbo v0, "keyset-settings"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3180
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_5

    .line 3181
    :cond_1a
    const-string/jumbo v0, "version"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3182
    const-string/jumbo v0, "volumeUuid"

    invoke-static {v13, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3184
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 3185
    .local v4, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v11, "sdkVersion"

    invoke-static {v13, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    iput v11, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3186
    const-string v11, "databaseVersion"

    invoke-static {v13, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    iput v11, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3187
    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3188
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v4    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    goto :goto_5

    .line 3189
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <packages>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3189
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3193
    .end local v15    # "tagName":Ljava/lang/String;
    :goto_5
    nop

    .line 3104
    :cond_1c
    :goto_6
    const/4 v4, 0x4

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 3195
    :cond_1d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    goto :goto_7

    .line 3202
    :catch_2
    move-exception v0

    .line 3203
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

    .line 3204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3205
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 3197
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 3198
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

    .line 3199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3200
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3206
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    nop

    .line 3219
    :goto_8
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3221
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_20

    .line 3222
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3223
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v5

    .line 3224
    .local v5, "sharedUserId":I
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v6

    .line 3225
    .local v6, "idObj":Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_1e

    .line 3226
    move-object v7, v6

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    .line 3227
    .local v7, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    iput-object v7, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3228
    iget v8, v7, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v8, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3229
    invoke-direct {v1, v4, v7}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 3230
    .end local v7    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    const/4 v8, 0x6

    goto :goto_a

    :cond_1e
    const-string v7, " has shared uid "

    const-string v8, "Bad package setting: package "

    if-eqz v6, :cond_1f

    .line 3231
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

    .line 3233
    .local v7, "msg":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3234
    const/4 v8, 0x6

    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3235
    .end local v7    # "msg":Ljava/lang/String;
    const/4 v8, 0x6

    goto :goto_a

    .line 3236
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

    .line 3238
    .restart local v7    # "msg":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3239
    const/4 v8, 0x6

    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3221
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "sharedUserId":I
    .end local v6    # "idObj":Ljava/lang/Object;
    .end local v7    # "msg":Ljava/lang/String;
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3242
    .end local v2    # "i":I
    :cond_20
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3244
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3245
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_c

    .line 3253
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

    .line 3254
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 3255
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_b

    .line 3247
    :cond_22
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3248
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3249
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3251
    invoke-virtual {v1, v12}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3258
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

    .line 3259
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3260
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_d

    .line 3266
    :cond_24
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3267
    .local v2, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3269
    .local v4, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 3270
    .local v5, "id":Ljava/lang/Object;
    if-eqz v5, :cond_25

    instance-of v6, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_25

    .line 3271
    move-object v6, v5

    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    iput-object v6, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3273
    .end local v4    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "id":Ljava/lang/Object;
    :cond_25
    goto :goto_e

    .line 3275
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

    .line 3276
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " shared uids\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 3280
    const/4 v4, 0x1

    return v4
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 60
    .param p1, "userId"    # I

    .line 1626
    move-object/from16 v1, p0

    move/from16 v3, p1

    const-string/jumbo v13, "suspending-package"

    const-string/jumbo v12, "pkg"

    const/4 v2, 0x0

    .line 1627
    .local v2, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v15

    .line 1628
    .local v15, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v14

    .line 1629
    .local v14, "backupFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v11, "PackageManager"

    const/4 v6, 0x4

    if-eqz v0, :cond_1

    .line 1631
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 1632
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1635
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    :cond_0
    move-object/from16 v24, v2

    goto :goto_0

    .line 1643
    :catch_0
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_0

    .line 1629
    :cond_1
    move-object/from16 v24, v2

    .line 1649
    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v24, "str":Ljava/io/FileInputStream;
    :goto_0
    const-string v10, "Error reading package manager stopped packages"

    const/4 v9, 0x6

    const-string v8, "Error reading: "

    if-nez v24, :cond_4

    .line 1650
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    if-nez v0, :cond_3

    .line 1651
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1659
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

    .line 1660
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v12, 0x0

    move-object v13, v8

    move v8, v12

    move v9, v12

    move-object/from16 v25, v10

    move v10, v12

    move-object/from16 v26, v11

    move v11, v12

    const/16 v16, 0x0

    move-object/from16 v27, v13

    move-object/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 v28, v14

    .end local v14    # "backupFile":Ljava/io/File;
    .local v28, "backupFile":Ljava/io/File;
    move/from16 v14, v16

    move-object/from16 v29, v15

    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v29, "userPackagesStateFile":Ljava/io/File;
    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v3, p1

    :try_start_3
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIIILjava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1678
    .end local v2    # "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v3, p1

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v8, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    const/4 v9, 0x6

    goto :goto_1

    .line 1878
    :catch_1
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v6, v26

    move-object/from16 v31, v29

    goto/16 :goto_20

    .line 1871
    :catch_2
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v31, v29

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1679
    .end local v28    # "backupFile":Ljava/io/File;
    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_2
    return-void

    .line 1878
    :catch_3
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v25, v10

    move-object/from16 v28, v14

    move/from16 v4, p1

    move-object v6, v11

    move-object/from16 v31, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1871
    .end local v28    # "backupFile":Ljava/io/File;
    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object/from16 v28, v14

    move/from16 v4, p1

    move-object v5, v8

    move v3, v9

    move-object v2, v10

    move-object v6, v11

    move-object/from16 v31, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1681
    .end local v28    # "backupFile":Ljava/io/File;
    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_3
    move-object/from16 v27, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v3, v29

    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .local v3, "userPackagesStateFile":Ljava/io/File;
    :try_start_5
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v24, v0

    move-object/from16 v2, v24

    goto/16 :goto_2

    .line 1878
    :catch_5
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v31, v3

    move-object/from16 v6, v26

    goto/16 :goto_20

    .line 1871
    :catch_6
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v31, v3

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1878
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    :catch_7
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v6, v26

    move-object/from16 v31, v29

    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1871
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v29    # "userPackagesStateFile":Ljava/io/File;
    :catch_8
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v31, v29

    const/4 v3, 0x6

    .end local v29    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1878
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v28    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_9
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v25, v10

    move-object/from16 v28, v14

    move/from16 v4, p1

    move-object v6, v11

    move-object/from16 v31, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1871
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v28    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object/from16 v28, v14

    move/from16 v4, p1

    move-object v5, v8

    move v3, v9

    move-object v2, v10

    move-object v6, v11

    move-object/from16 v31, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1649
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v28    # "backupFile":Ljava/io/File;
    .restart local v14    # "backupFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_4
    move-object/from16 v27, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v14

    move-object v3, v15

    .end local v14    # "backupFile":Ljava/io/File;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v28    # "backupFile":Ljava/io/File;
    move-object/from16 v2, v24

    .line 1683
    .end local v24    # "str":Ljava/io/FileInputStream;
    .local v2, "str":Ljava/io/FileInputStream;
    :goto_2
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2a

    .line 1684
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_7
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1687
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2a

    move v5, v4

    .local v5, "type":I
    const/4 v15, 0x2

    const/4 v14, 0x1

    if-eq v4, v15, :cond_5

    if-eq v5, v14, :cond_5

    goto :goto_3

    .line 1692
    :cond_5
    const/4 v11, 0x5

    if-eq v5, v15, :cond_6

    .line 1693
    :try_start_8
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v6, "No start tag found in package restrictions file\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    const-string v4, "No start tag found in package manager stopped packages"

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 1696
    return-void

    .line 1878
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_b
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v6, v26

    goto/16 :goto_20

    .line 1871
    :catch_c
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1699
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_6
    const/4 v4, 0x0

    .line 1701
    .local v4, "maxAppLinkGeneration":I
    :try_start_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    move v10, v7

    .line 1702
    .local v10, "outerDepth":I
    const/4 v7, 0x0

    move v9, v4

    .line 1703
    .end local v4    # "maxAppLinkGeneration":I
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    .local v9, "maxAppLinkGeneration":I
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_29
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2a

    move v8, v4

    .end local v5    # "type":I
    .local v8, "type":I
    if-eq v4, v14, :cond_27

    const/4 v4, 0x3

    if-ne v8, v4, :cond_8

    .line 1705
    :try_start_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    if-le v5, v10, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move v2, v9

    move/from16 v35, v10

    move-object/from16 v6, v26

    move/from16 v26, v8

    goto/16 :goto_19

    .line 1706
    :cond_8
    :goto_5
    if-eq v8, v4, :cond_26

    if-ne v8, v6, :cond_9

    .line 1708
    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v52, v6

    move v2, v9

    move/from16 v35, v10

    move/from16 v40, v11

    move-object/from16 v55, v12

    move-object/from16 v56, v13

    move/from16 v51, v14

    move/from16 v44, v15

    move-object/from16 v6, v26

    move/from16 v26, v8

    goto/16 :goto_18

    .line 1711
    :cond_9
    :try_start_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1712
    .local v5, "tagName":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2a

    if-eqz v16, :cond_20

    .line 1713
    :try_start_c
    const-string/jumbo v4, "name"

    const/4 v14, 0x0

    invoke-interface {v0, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1714
    .local v4, "name":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1f

    move-object/from16 v24, v6

    .line 1715
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v24, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v24, :cond_a

    .line 1716
    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No package known for stopped package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    move-object/from16 v7, v26

    :try_start_e
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 1719
    move-object/from16 v26, v7

    move v5, v8

    move-object/from16 v7, v24

    const/4 v6, 0x4

    const/4 v14, 0x1

    goto :goto_4

    .line 1878
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v10    # "outerDepth":I
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    :catch_d
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object v6, v7

    goto/16 :goto_20

    .line 1871
    :catch_e
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object v6, v7

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1722
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v10    # "outerDepth":I
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a
    move-object/from16 v7, v26

    :try_start_f
    const-string v6, "ceDataInode"

    move-object/from16 v20, v12

    const-wide/16 v11, 0x0

    invoke-static {v0, v6, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v30, v4

    move-object v6, v5

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    .local v6, "tagName":Ljava/lang/String;
    .local v30, "name":Ljava/lang/String;
    move-wide v4, v11

    .line 1724
    .local v4, "ceDataInode":J
    const-string/jumbo v11, "inst"

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1d

    move-object/from16 v32, v7

    move v7, v11

    .line 1726
    .local v7, "installed":Z
    :try_start_10
    const-string/jumbo v11, "stopped"

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    move/from16 v26, v8

    .end local v8    # "type":I
    .local v26, "type":I
    move v8, v11

    .line 1728
    .local v8, "stopped":Z
    const-string/jumbo v11, "nl"

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    move/from16 v33, v9

    .end local v9    # "maxAppLinkGeneration":I
    .local v33, "maxAppLinkGeneration":I
    move v9, v11

    .line 1733
    .local v9, "notLaunched":Z
    const-string v11, "blocked"

    invoke-interface {v0, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v29, v11

    .line 1734
    .local v29, "blockedStr":Ljava/lang/String;
    if-nez v29, :cond_b

    .line 1735
    move v11, v12

    goto :goto_6

    :cond_b
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1736
    .local v11, "hidden":Z
    :goto_6
    const-string v15, "hidden"

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v34, v15

    .line 1737
    .local v34, "hiddenStr":Ljava/lang/String;
    if-nez v34, :cond_c

    .line 1738
    move v15, v11

    goto :goto_7

    :cond_c
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    :goto_7
    move/from16 v35, v10

    .end local v10    # "outerDepth":I
    .local v35, "outerDepth":I
    move v10, v15

    .line 1740
    .end local v11    # "hidden":Z
    .local v10, "hidden":Z
    const-string v11, "distraction_flags"

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v15, 0x5

    .line 1742
    .local v11, "distractionFlags":I
    const-string/jumbo v15, "suspended"

    invoke-static {v0, v15, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    move/from16 v36, v15

    .line 1744
    .local v36, "suspended":Z
    invoke-interface {v0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1746
    .local v15, "oldSuspendingPackage":Ljava/lang/String;
    const-string/jumbo v12, "suspend_dialog_message"

    invoke-interface {v0, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1b

    .line 1748
    .local v12, "dialogMessage":Ljava/lang/String;
    if-eqz v36, :cond_d

    if-nez v15, :cond_d

    .line 1749
    :try_start_11
    const-string v21, "android"
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    move-object/from16 v15, v21

    goto :goto_8

    .line 1878
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "ceDataInode":J
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v15    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "type":I
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .end local v33    # "maxAppLinkGeneration":I
    .end local v34    # "hiddenStr":Ljava/lang/String;
    .end local v35    # "outerDepth":I
    .end local v36    # "suspended":Z
    :catch_f
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v6, v32

    goto/16 :goto_20

    .line 1871
    :catch_10
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v6, v32

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1752
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "ceDataInode":J
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "installed":Z
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v15    # "oldSuspendingPackage":Ljava/lang/String;
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "type":I
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v30    # "name":Ljava/lang/String;
    .restart local v33    # "maxAppLinkGeneration":I
    .restart local v34    # "hiddenStr":Ljava/lang/String;
    .restart local v35    # "outerDepth":I
    .restart local v36    # "suspended":Z
    :cond_d
    :goto_8
    :try_start_12
    const-string v14, "blockUninstall"
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1b

    move-object/from16 v38, v2

    const/4 v2, 0x0

    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v38, "str":Ljava/io/FileInputStream;
    :try_start_13
    invoke-static {v0, v14, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    move/from16 v39, v14

    .line 1754
    .local v39, "blockUninstall":Z
    const-string/jumbo v14, "instant-app"

    invoke-static {v0, v14, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    .line 1756
    .local v14, "instantApp":Z
    const-string/jumbo v2, "virtual-preload"
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_19

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v17, "userPackagesStateFile":Ljava/io/File;
    :try_start_14
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v42, v15

    .end local v15    # "oldSuspendingPackage":Ljava/lang/String;
    .local v42, "oldSuspendingPackage":Ljava/lang/String;
    move v15, v2

    .line 1758
    .local v15, "virtualPreload":Z
    const-string v2, "enabled"

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v45, v6

    const/4 v3, 0x4

    .end local v6    # "tagName":Ljava/lang/String;
    .local v45, "tagName":Ljava/lang/String;
    move v6, v2

    .line 1760
    .local v6, "enabled":I
    const-string v2, "enabledCaller"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1762
    .local v16, "enabledCaller":Ljava/lang/String;
    const-string v2, "harmful-app-warning"

    .line 1763
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1764
    .local v23, "harmfulAppWarning":Ljava/lang/String;
    const-string v2, "domainVerificationStatus"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    .line 1767
    .local v19, "verifState":I
    const-string v2, "app-link-generation"

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .line 1769
    .local v3, "linkGeneration":I
    move/from16 v2, v33

    .end local v33    # "maxAppLinkGeneration":I
    .local v2, "maxAppLinkGeneration":I
    if-le v3, v2, :cond_e

    .line 1770
    move v2, v3

    move/from16 v33, v2

    goto :goto_9

    .line 1769
    :cond_e
    move/from16 v33, v2

    .line 1772
    .end local v2    # "maxAppLinkGeneration":I
    .restart local v33    # "maxAppLinkGeneration":I
    :goto_9
    const-string/jumbo v2, "install-reason"

    move/from16 v46, v3

    const/4 v3, 0x0

    .end local v3    # "linkGeneration":I
    .local v46, "linkGeneration":I
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 1774
    .local v21, "installReason":I
    const-string/jumbo v2, "uninstall-reason"

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 1777
    .local v22, "uninstallReason":I
    const/4 v2, 0x0

    .line 1778
    .local v2, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v37, 0x0

    .line 1779
    .local v37, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v47, 0x0

    .line 1780
    .local v47, "suspendedAppExtras":Landroid/os/PersistableBundle;
    const/16 v48, 0x0

    .line 1781
    .local v48, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    const/16 v49, 0x0

    .line 1783
    .local v49, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v50

    move/from16 v51, v50

    .line 1784
    .local v51, "packageDepth":I
    const/16 v50, 0x0

    move/from16 v57, v26

    move-object/from16 v26, v2

    move/from16 v2, v57

    move-wide/from16 v58, v4

    move-object/from16 v4, v47

    move-object/from16 v5, v48

    move-wide/from16 v47, v58

    .line 1785
    .end local v48    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v2, "type":I
    .local v4, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v5, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v26, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v47, "ceDataInode":J
    .local v50, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :goto_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17

    move v2, v3

    move/from16 v53, v6

    const/4 v6, 0x1

    .end local v6    # "enabled":I
    .local v53, "enabled":I
    if-eq v3, v6, :cond_1c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 1787
    :try_start_15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v3, v51

    .end local v51    # "packageDepth":I
    .local v3, "packageDepth":I
    if-le v6, v3, :cond_f

    goto :goto_b

    :cond_f
    move/from16 v54, v2

    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    goto/16 :goto_11

    .line 1785
    .end local v3    # "packageDepth":I
    .restart local v51    # "packageDepth":I
    :cond_10
    move/from16 v3, v51

    .line 1788
    .end local v51    # "packageDepth":I
    .restart local v3    # "packageDepth":I
    :goto_b
    const/4 v6, 0x3

    if-eq v2, v6, :cond_1b

    const/4 v6, 0x4

    if-ne v2, v6, :cond_11

    .line 1790
    move/from16 v54, v2

    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    goto/16 :goto_10

    .line 1792
    :cond_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v51, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v54

    sparse-switch v54, :sswitch_data_0

    move/from16 v54, v2

    .end local v2    # "type":I
    .local v54, "type":I
    goto :goto_c

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_0
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string/jumbo v2, "suspended-dialog-info"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x4

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_1
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string/jumbo v2, "suspend-params"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x5

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_2
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string/jumbo v2, "suspended-launcher-extras"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x3

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_3
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string/jumbo v2, "suspended-app-extras"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x2

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_4
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string v2, "enabled-components"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v6, 0x0

    goto :goto_d

    .end local v54    # "type":I
    .restart local v2    # "type":I
    :sswitch_5
    move/from16 v54, v2

    .end local v2    # "type":I
    .restart local v54    # "type":I
    const-string v2, "disabled-components"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    if-eqz v2, :cond_12

    const/4 v6, 0x1

    goto :goto_d

    :cond_12
    :goto_c
    move/from16 v6, v51

    :goto_d
    if-eqz v6, :cond_1a

    const/4 v2, 0x1

    if-eq v6, v2, :cond_19

    const/4 v2, 0x2

    if-eq v6, v2, :cond_18

    const/4 v2, 0x3

    if-eq v6, v2, :cond_17

    move/from16 v31, v3

    const/4 v3, 0x4

    .end local v3    # "packageDepth":I
    .local v31, "packageDepth":I
    if-eq v6, v3, :cond_16

    const-string v2, "PackageSettings"

    move/from16 v51, v7

    const/4 v7, 0x5

    .end local v7    # "installed":Z
    .local v51, "installed":Z
    if-eq v6, v7, :cond_13

    .line 1823
    :try_start_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " under tag "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1809
    :cond_13
    move-object/from16 v3, v20

    const/4 v6, 0x0

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v40, v20

    .line 1811
    .local v40, "suspendingPackage":Ljava/lang/String;
    move-object/from16 v6, v40

    .end local v40    # "suspendingPackage":Ljava/lang/String;
    .local v6, "suspendingPackage":Ljava/lang/String;
    if-nez v6, :cond_14

    .line 1812
    const-string v7, "No suspendingPackage found inside tag suspend-params"

    invoke-static {v2, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    goto/16 :goto_10

    .line 1816
    :cond_14
    if-nez v50, :cond_15

    .line 1817
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v50, v2

    goto :goto_e

    .line 1816
    :cond_15
    move-object/from16 v2, v50

    .line 1819
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v2, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :goto_e
    nop

    .line 1820
    invoke-static {v0}, Landroid/content/pm/PackageUserState$SuspendParams;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/PackageUserState$SuspendParams;

    move-result-object v7

    .line 1819
    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    move-object/from16 v50, v2

    goto :goto_f

    .line 1806
    .end local v2    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v6    # "suspendingPackage":Ljava/lang/String;
    .end local v51    # "installed":Z
    .restart local v7    # "installed":Z
    .restart local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :cond_16
    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v7    # "installed":Z
    .restart local v51    # "installed":Z
    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    .line 1807
    .end local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v2, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    move-object/from16 v49, v2

    goto :goto_f

    .line 1803
    .end local v2    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .restart local v3    # "packageDepth":I
    .restart local v7    # "installed":Z
    .restart local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :cond_17
    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1804
    .end local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v2, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    move-object v5, v2

    goto :goto_f

    .line 1800
    .end local v2    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .restart local v3    # "packageDepth":I
    .restart local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .restart local v7    # "installed":Z
    :cond_18
    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1801
    .end local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v2, "suspendedAppExtras":Landroid/os/PersistableBundle;
    move-object v4, v2

    goto :goto_f

    .line 1797
    .end local v2    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .restart local v3    # "packageDepth":I
    .restart local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v7    # "installed":Z
    :cond_19
    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1798
    .end local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v37, v2

    goto :goto_f

    .line 1794
    .end local v2    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .restart local v3    # "packageDepth":I
    .restart local v7    # "installed":Z
    .restart local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1a
    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1795
    .end local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v26, v2

    .line 1823
    .end local v2    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_f
    move-object/from16 v20, v3

    move/from16 v7, v51

    move/from16 v6, v53

    move/from16 v2, v54

    const/4 v3, 0x0

    move/from16 v51, v31

    goto/16 :goto_a

    .line 1788
    .end local v31    # "packageDepth":I
    .end local v51    # "installed":Z
    .end local v54    # "type":I
    .local v2, "type":I
    .restart local v3    # "packageDepth":I
    .restart local v7    # "installed":Z
    :cond_1b
    move/from16 v54, v2

    move/from16 v31, v3

    move/from16 v51, v7

    move-object/from16 v3, v20

    .line 1785
    .end local v2    # "type":I
    .end local v3    # "packageDepth":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .restart local v51    # "installed":Z
    .restart local v54    # "type":I
    :goto_10
    move-object/from16 v20, v3

    move/from16 v7, v51

    move/from16 v6, v53

    move/from16 v2, v54

    const/4 v3, 0x0

    move/from16 v51, v31

    goto/16 :goto_a

    .end local v31    # "packageDepth":I
    .end local v54    # "type":I
    .restart local v2    # "type":I
    .restart local v7    # "installed":Z
    .local v51, "packageDepth":I
    :cond_1c
    move/from16 v54, v2

    move-object/from16 v3, v20

    move/from16 v31, v51

    move/from16 v51, v7

    .line 1827
    .end local v2    # "type":I
    .end local v7    # "installed":Z
    .restart local v31    # "packageDepth":I
    .local v51, "installed":Z
    .restart local v54    # "type":I
    :goto_11
    if-nez v49, :cond_1d

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1828
    new-instance v2, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1829
    invoke-virtual {v2, v12}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v2

    .line 1830
    invoke-virtual {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    move-object/from16 v49, v2

    move-object/from16 v6, v49

    goto :goto_13

    .line 1878
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v14    # "instantApp":Z
    .end local v15    # "virtualPreload":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v19    # "verifState":I
    .end local v21    # "installReason":I
    .end local v22    # "uninstallReason":I
    .end local v23    # "harmfulAppWarning":Ljava/lang/String;
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .end local v31    # "packageDepth":I
    .end local v33    # "maxAppLinkGeneration":I
    .end local v34    # "hiddenStr":Ljava/lang/String;
    .end local v35    # "outerDepth":I
    .end local v36    # "suspended":Z
    .end local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "blockUninstall":Z
    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v45    # "tagName":Ljava/lang/String;
    .end local v46    # "linkGeneration":I
    .end local v47    # "ceDataInode":J
    .end local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v51    # "installed":Z
    .end local v53    # "enabled":I
    .end local v54    # "type":I
    :catch_11
    move-exception v0

    move/from16 v4, p1

    :goto_12
    move-object/from16 v31, v17

    move-object/from16 v6, v32

    move-object/from16 v24, v38

    goto/16 :goto_20

    .line 1871
    :catch_12
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v31, v17

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v6, v32

    move-object/from16 v24, v38

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1832
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v14    # "instantApp":Z
    .restart local v15    # "virtualPreload":Z
    .restart local v16    # "enabledCaller":Ljava/lang/String;
    .restart local v19    # "verifState":I
    .restart local v21    # "installReason":I
    .restart local v22    # "uninstallReason":I
    .restart local v23    # "harmfulAppWarning":Ljava/lang/String;
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v30    # "name":Ljava/lang/String;
    .restart local v31    # "packageDepth":I
    .restart local v33    # "maxAppLinkGeneration":I
    .restart local v34    # "hiddenStr":Ljava/lang/String;
    .restart local v35    # "outerDepth":I
    .restart local v36    # "suspended":Z
    .restart local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "blockUninstall":Z
    .restart local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .restart local v45    # "tagName":Ljava/lang/String;
    .restart local v46    # "linkGeneration":I
    .restart local v47    # "ceDataInode":J
    .restart local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .restart local v51    # "installed":Z
    .restart local v53    # "enabled":I
    .restart local v54    # "type":I
    :cond_1d
    move-object/from16 v6, v49

    .end local v49    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v6, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :goto_13
    if-eqz v36, :cond_1e

    if-nez v50, :cond_1e

    .line 1833
    nop

    .line 1834
    invoke-static {v6, v4, v5}, Landroid/content/pm/PackageUserState$SuspendParams;->getInstanceOrNull(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Landroid/content/pm/PackageUserState$SuspendParams;

    move-result-object v2

    .line 1838
    .local v2, "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1839
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .local v7, "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    move-object/from16 v49, v0

    move-object/from16 v0, v42

    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .local v0, "oldSuspendingPackage":Ljava/lang/String;
    .local v49, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v7, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    move-object/from16 v50, v7

    goto :goto_14

    .line 1832
    .end local v2    # "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    .end local v7    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .restart local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    :cond_1e
    move-object/from16 v49, v0

    move-object/from16 v0, v42

    .line 1842
    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .local v0, "oldSuspendingPackage":Ljava/lang/String;
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_14
    if-eqz v39, :cond_1f

    .line 1843
    move/from16 v7, p1

    move-object/from16 v42, v0

    move-object/from16 v2, v30

    const/4 v0, 0x1

    .end local v0    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .restart local v42    # "oldSuspendingPackage":Ljava/lang/String;
    :try_start_17
    invoke-virtual {v1, v7, v2, v0}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_14
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_13

    goto :goto_15

    .line 1878
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v6    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v12    # "dialogMessage":Ljava/lang/String;
    .end local v14    # "instantApp":Z
    .end local v15    # "virtualPreload":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v19    # "verifState":I
    .end local v21    # "installReason":I
    .end local v22    # "uninstallReason":I
    .end local v23    # "harmfulAppWarning":Ljava/lang/String;
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v31    # "packageDepth":I
    .end local v33    # "maxAppLinkGeneration":I
    .end local v34    # "hiddenStr":Ljava/lang/String;
    .end local v35    # "outerDepth":I
    .end local v36    # "suspended":Z
    .end local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "blockUninstall":Z
    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v45    # "tagName":Ljava/lang/String;
    .end local v46    # "linkGeneration":I
    .end local v47    # "ceDataInode":J
    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v51    # "installed":Z
    .end local v53    # "enabled":I
    .end local v54    # "type":I
    :catch_13
    move-exception v0

    move v4, v7

    goto :goto_12

    .line 1871
    :catch_14
    move-exception v0

    move v4, v7

    move-object/from16 v31, v17

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v6, v32

    move-object/from16 v24, v38

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1842
    .restart local v0    # "oldSuspendingPackage":Ljava/lang/String;
    .restart local v4    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .restart local v6    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v11    # "distractionFlags":I
    .restart local v12    # "dialogMessage":Ljava/lang/String;
    .restart local v14    # "instantApp":Z
    .restart local v15    # "virtualPreload":Z
    .restart local v16    # "enabledCaller":Ljava/lang/String;
    .restart local v19    # "verifState":I
    .restart local v21    # "installReason":I
    .restart local v22    # "uninstallReason":I
    .restart local v23    # "harmfulAppWarning":Ljava/lang/String;
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v29    # "blockedStr":Ljava/lang/String;
    .restart local v30    # "name":Ljava/lang/String;
    .restart local v31    # "packageDepth":I
    .restart local v33    # "maxAppLinkGeneration":I
    .restart local v34    # "hiddenStr":Ljava/lang/String;
    .restart local v35    # "outerDepth":I
    .restart local v36    # "suspended":Z
    .restart local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "blockUninstall":Z
    .restart local v45    # "tagName":Ljava/lang/String;
    .restart local v46    # "linkGeneration":I
    .restart local v47    # "ceDataInode":J
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .restart local v51    # "installed":Z
    .restart local v53    # "enabled":I
    .restart local v54    # "type":I
    :cond_1f
    move/from16 v7, p1

    move-object/from16 v42, v0

    move-object/from16 v2, v30

    const/4 v0, 0x1

    .line 1845
    .end local v0    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v42    # "oldSuspendingPackage":Ljava/lang/String;
    :goto_15
    move-object/from16 v30, v38

    move/from16 v41, v54

    const/16 v44, 0x2

    move-object/from16 v38, v2

    .end local v2    # "name":Ljava/lang/String;
    .end local v54    # "type":I
    .local v30, "str":Ljava/io/FileInputStream;
    .local v38, "name":Ljava/lang/String;
    .local v41, "type":I
    move-object/from16 v2, v24

    move/from16 v43, v46

    const/16 v52, 0x4

    move/from16 v46, v31

    move-object/from16 v31, v17

    move-object/from16 v17, v3

    .end local v17    # "userPackagesStateFile":Ljava/io/File;
    .local v31, "userPackagesStateFile":Ljava/io/File;
    .local v43, "linkGeneration":I
    .local v46, "packageDepth":I
    move/from16 v3, p1

    move-object/from16 v54, v12

    move-object/from16 v55, v17

    .end local v12    # "dialogMessage":Ljava/lang/String;
    .local v54, "dialogMessage":Ljava/lang/String;
    move/from16 v12, v36

    move-object/from16 v56, v13

    move-object/from16 v13, v50

    move-object/from16 v17, v26

    move-object/from16 v18, v37

    move/from16 v20, v43

    move v1, v7

    move/from16 v7, v51

    const/16 v40, 0x5

    move/from16 v51, v0

    move-object v0, v6

    move/from16 v6, v53

    move-wide/from16 v57, v47

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    move-wide/from16 v4, v57

    .end local v5    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v51    # "installed":Z
    .end local v53    # "enabled":I
    .local v0, "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v4, "ceDataInode":J
    .local v6, "enabled":I
    .local v7, "installed":Z
    .local v47, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v48    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :try_start_18
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIIILjava/lang/String;)V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_16
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15

    .line 1850
    .end local v0    # "oldSuspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v4    # "ceDataInode":J
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "distractionFlags":I
    .end local v14    # "instantApp":Z
    .end local v15    # "virtualPreload":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v19    # "verifState":I
    .end local v21    # "installReason":I
    .end local v22    # "uninstallReason":I
    .end local v23    # "harmfulAppWarning":Ljava/lang/String;
    .end local v26    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "blockedStr":Ljava/lang/String;
    .end local v34    # "hiddenStr":Ljava/lang/String;
    .end local v36    # "suspended":Z
    .end local v37    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "name":Ljava/lang/String;
    .end local v39    # "blockUninstall":Z
    .end local v42    # "oldSuspendingPackage":Ljava/lang/String;
    .end local v43    # "linkGeneration":I
    .end local v46    # "packageDepth":I
    .end local v47    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v48    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v50    # "suspendParamsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageUserState$SuspendParams;>;"
    .end local v54    # "dialogMessage":Ljava/lang/String;
    move v4, v1

    move-object/from16 v7, v24

    move-object/from16 v6, v32

    move/from16 v9, v33

    move/from16 v5, v41

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    goto/16 :goto_17

    .line 1878
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "maxAppLinkGeneration":I
    .end local v35    # "outerDepth":I
    .end local v41    # "type":I
    .end local v45    # "tagName":Ljava/lang/String;
    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_15
    move-exception v0

    move v4, v1

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    move-object/from16 v1, p0

    goto/16 :goto_20

    .line 1871
    :catch_16
    move-exception v0

    move v4, v1

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    const/4 v3, 0x6

    move-object/from16 v1, p0

    goto/16 :goto_21

    .line 1878
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v17    # "userPackagesStateFile":Ljava/io/File;
    .local v38, "str":Ljava/io/FileInputStream;
    :catch_17
    move-exception v0

    move-object/from16 v31, v17

    move-object/from16 v30, v38

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    .end local v17    # "userPackagesStateFile":Ljava/io/File;
    .end local v38    # "str":Ljava/io/FileInputStream;
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1871
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v17    # "userPackagesStateFile":Ljava/io/File;
    .restart local v38    # "str":Ljava/io/FileInputStream;
    :catch_18
    move-exception v0

    move-object/from16 v31, v17

    move-object/from16 v30, v38

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    const/4 v3, 0x6

    .end local v17    # "userPackagesStateFile":Ljava/io/File;
    .end local v38    # "str":Ljava/io/FileInputStream;
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1878
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .local v3, "userPackagesStateFile":Ljava/io/File;
    .restart local v38    # "str":Ljava/io/FileInputStream;
    :catch_19
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v30, v38

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v38    # "str":Ljava/io/FileInputStream;
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_20

    .line 1871
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v38    # "str":Ljava/io/FileInputStream;
    :catch_1a
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v30, v38

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    const/4 v3, 0x6

    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v38    # "str":Ljava/io/FileInputStream;
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_21

    .line 1878
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .local v2, "str":Ljava/io/FileInputStream;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    :catch_1b
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    goto/16 :goto_20

    .line 1871
    :catch_1c
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    goto/16 :goto_1d

    .line 1878
    :catch_1d
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v6, v7

    goto/16 :goto_1f

    .line 1871
    :catch_1e
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v6, v7

    goto/16 :goto_1b

    .line 1878
    :catch_1f
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    goto/16 :goto_1e

    .line 1871
    :catch_20
    move-exception v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    goto/16 :goto_1c

    .line 1850
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "tagName":Ljava/lang/String;
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    .local v8, "type":I
    .local v9, "maxAppLinkGeneration":I
    .local v10, "outerDepth":I
    :cond_20
    move/from16 v1, p1

    move-object/from16 v49, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v45, v5

    move/from16 v52, v6

    move v2, v9

    move/from16 v35, v10

    move/from16 v40, v11

    move-object/from16 v55, v12

    move-object/from16 v56, v13

    move/from16 v51, v14

    move/from16 v44, v15

    move-object/from16 v32, v26

    move/from16 v26, v8

    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v10    # "outerDepth":I
    .local v2, "maxAppLinkGeneration":I
    .local v26, "type":I
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v35    # "outerDepth":I
    .restart local v45    # "tagName":Ljava/lang/String;
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_19
    const-string/jumbo v0, "preferred-activities"

    move-object/from16 v3, v45

    .end local v45    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_26
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_25

    if-eqz v0, :cond_21

    .line 1851
    move v4, v1

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1a
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_22
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_21

    move-object/from16 v6, v32

    goto/16 :goto_16

    .line 1878
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "type":I
    .end local v35    # "outerDepth":I
    :catch_21
    move-exception v0

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    goto/16 :goto_20

    .line 1871
    :catch_22
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    move-object/from16 v6, v32

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1852
    .restart local v2    # "maxAppLinkGeneration":I
    .restart local v3    # "tagName":Ljava/lang/String;
    .restart local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "type":I
    .restart local v35    # "outerDepth":I
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_21
    move v4, v1

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1b
    const-string/jumbo v5, "persistent-preferred-activities"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_23

    if-eqz v5, :cond_22

    .line 1853
    :try_start_1c
    invoke-direct {v1, v0, v4}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_21

    move-object/from16 v6, v32

    goto :goto_16

    .line 1854
    :cond_22
    :try_start_1d
    const-string v5, "crossProfile-intent-filters"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_23

    if-eqz v5, :cond_23

    .line 1855
    :try_start_1e
    invoke-direct {v1, v0, v4}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_21

    move-object/from16 v6, v32

    goto :goto_16

    .line 1856
    :cond_23
    :try_start_1f
    const-string v5, "default-apps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_23

    if-eqz v5, :cond_24

    .line 1857
    :try_start_20
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_22
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_21

    move-object/from16 v6, v32

    goto :goto_16

    .line 1858
    :cond_24
    :try_start_21
    const-string v5, "block-uninstall-packages"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_23

    if-eqz v5, :cond_25

    .line 1859
    :try_start_22
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_21

    move-object/from16 v6, v32

    goto :goto_16

    .line 1861
    :cond_25
    :try_start_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_23

    .line 1861
    move-object/from16 v6, v32

    :try_start_24
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1865
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_16
    move v9, v2

    move/from16 v5, v26

    .end local v2    # "maxAppLinkGeneration":I
    .end local v26    # "type":I
    .local v5, "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    :goto_17
    move-object/from16 v26, v6

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v10, v35

    move/from16 v11, v40

    move/from16 v15, v44

    move/from16 v14, v51

    move/from16 v6, v52

    move-object/from16 v12, v55

    move-object/from16 v13, v56

    goto/16 :goto_4

    .line 1878
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "maxAppLinkGeneration":I
    .end local v35    # "outerDepth":I
    :catch_23
    move-exception v0

    move-object/from16 v6, v32

    goto/16 :goto_1a

    .line 1871
    :catch_24
    move-exception v0

    move-object/from16 v6, v32

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1878
    :catch_25
    move-exception v0

    move v4, v1

    move-object/from16 v6, v32

    move-object/from16 v1, p0

    goto/16 :goto_1a

    .line 1871
    :catch_26
    move-exception v0

    move v4, v1

    move-object/from16 v6, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    const/4 v3, 0x6

    goto/16 :goto_21

    .line 1706
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "str":Ljava/io/FileInputStream;
    .local v3, "userPackagesStateFile":Ljava/io/File;
    .restart local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v8    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v10    # "outerDepth":I
    :cond_26
    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v52, v6

    move v2, v9

    move/from16 v35, v10

    move/from16 v40, v11

    move-object/from16 v55, v12

    move-object/from16 v56, v13

    move/from16 v51, v14

    move/from16 v44, v15

    move-object/from16 v6, v26

    move/from16 v26, v8

    .line 1703
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v8    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v10    # "outerDepth":I
    .local v2, "maxAppLinkGeneration":I
    .restart local v26    # "type":I
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v35    # "outerDepth":I
    :goto_18
    move v9, v2

    move/from16 v5, v26

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v10, v35

    move/from16 v11, v40

    move/from16 v15, v44

    move/from16 v14, v51

    move-object/from16 v12, v55

    move-object/from16 v13, v56

    move-object/from16 v26, v6

    move/from16 v6, v52

    goto/16 :goto_4

    .end local v26    # "type":I
    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .end local v35    # "outerDepth":I
    .local v2, "str":Ljava/io/FileInputStream;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    .restart local v8    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v10    # "outerDepth":I
    :cond_27
    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move v2, v9

    move/from16 v35, v10

    move-object/from16 v6, v26

    move/from16 v26, v8

    .line 1867
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .end local v8    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v10    # "outerDepth":I
    .local v2, "maxAppLinkGeneration":I
    .restart local v26    # "type":I
    .restart local v30    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v35    # "outerDepth":I
    :goto_19
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V

    .line 1869
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_24} :catch_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_27

    .line 1883
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "maxAppLinkGeneration":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "type":I
    .end local v35    # "outerDepth":I
    move-object/from16 v2, v30

    goto/16 :goto_22

    .line 1878
    :catch_27
    move-exception v0

    :goto_1a
    move-object/from16 v24, v30

    goto :goto_20

    .line 1871
    :catch_28
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    move-object/from16 v24, v30

    const/4 v3, 0x6

    goto/16 :goto_21

    .end local v30    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .local v2, "str":Ljava/io/FileInputStream;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    :catch_29
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v6, v26

    :goto_1b
    move-object/from16 v2, v25

    :goto_1c
    move-object/from16 v5, v27

    move-object/from16 v24, v30

    :goto_1d
    const/4 v3, 0x6

    goto :goto_21

    .line 1878
    :catch_2a
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    :goto_1e
    move-object/from16 v6, v26

    :goto_1f
    move-object/from16 v24, v30

    .line 1879
    .end local v2    # "str":Ljava/io/FileInputStream;
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .local v24, "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :goto_20
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v27

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1881
    move-object/from16 v2, v25

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v2, v24

    goto :goto_22

    .line 1871
    .end local v0    # "e":Ljava/io/IOException;
    .end local v24    # "str":Ljava/io/FileInputStream;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v2    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "userPackagesStateFile":Ljava/io/File;
    :catch_2b
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    const/4 v3, 0x6

    move-object/from16 v24, v30

    .line 1872
    .end local v2    # "str":Ljava/io/FileInputStream;
    .end local v3    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v24    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :goto_21
    iget-object v7, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading stopped packages: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1875
    invoke-static {v6, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1883
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v2, v24

    .line 1884
    .end local v24    # "str":Ljava/io/FileInputStream;
    .restart local v2    # "str":Ljava/io/FileInputStream;
    :goto_22
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78da70f9 -> :sswitch_5
        -0x75017ede -> :sswitch_4
        -0x5ee8613f -> :sswitch_3
        -0x54ce12c2 -> :sswitch_2
        -0x3326b7c9 -> :sswitch_1
        0x62ff4521 -> :sswitch_0
    .end sparse-switch
.end method

.method readPermissionStateForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 3284
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3285
    return-void
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

    .line 1462
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1464
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1465
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 1466
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1467
    goto :goto_0

    .line 1470
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1471
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_6

    .line 1472
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1473
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1474
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    .line 1475
    .local v4, "resolver":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1476
    .local v5, "pal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v6, v6, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v6, :cond_4

    .line 1477
    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 1479
    .end local v4    # "resolver":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v5    # "pal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_4
    goto :goto_1

    .line 1480
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1482
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1480
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1485
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    :goto_1
    goto :goto_2

    .line 1486
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1486
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1488
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1490
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 1491
    :cond_7
    return-void
.end method

.method readStoppedLPw()V
    .locals 16

    .line 2398
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2399
    .local v2, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    const-string v4, "PackageManager"

    if-eqz v0, :cond_1

    .line 2401
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 2402
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2405
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2415
    :cond_0
    goto :goto_0

    .line 2413
    :catch_0
    move-exception v0

    .line 2419
    :cond_1
    :goto_0
    const-string v5, "Error reading package manager stopped packages"

    const-string v7, "Error reading: "

    const/4 v0, 0x0

    if-nez v2, :cond_4

    .line 2420
    :try_start_1
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2421
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v9, "No stopped packages file found\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    const-string v8, "No stopped packages file file; assuming all started"

    invoke-static {v3, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2427
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

    .line 2428
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2429
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2430
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2431
    :cond_2
    return-void

    .line 2433
    :cond_3
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v8

    .line 2435
    :cond_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2436
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v8, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2439
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

    .line 2444
    :cond_5
    if-eq v11, v12, :cond_6

    .line 2445
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2446
    const/4 v0, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2448
    return-void

    .line 2451
    :cond_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 2452
    .local v10, "outerDepth":I
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v11, v12

    if-eq v12, v13, :cond_d

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    .line 2454
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v10, :cond_d

    .line 2455
    :cond_7
    if-eq v11, v12, :cond_c

    if-ne v11, v3, :cond_8

    .line 2457
    goto :goto_6

    .line 2460
    :cond_8
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2461
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2462
    const-string/jumbo v14, "name"

    invoke-interface {v8, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2463
    .local v14, "name":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 2464
    .local v15, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v15, :cond_9

    .line 2465
    invoke-virtual {v15, v13, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2466
    const-string v3, "1"

    const-string/jumbo v6, "nl"

    invoke-interface {v8, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2467
    invoke-virtual {v15, v13, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_4

    .line 2470
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package known for stopped package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_a
    :goto_4
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2474
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_5

    .line 2475
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2475
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2479
    .end local v12    # "tagName":Ljava/lang/String;
    :goto_5
    nop

    .line 2452
    :cond_c
    :goto_6
    const/4 v3, 0x4

    goto :goto_3

    .line 2481
    :cond_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "outerDepth":I
    .end local v11    # "type":I
    goto :goto_7

    .line 2490
    :catch_1
    move-exception v0

    .line 2491
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

    .line 2492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading settings: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2493
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2483
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2484
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

    .line 2485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading stopped packages: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2487
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2496
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    nop

    .line 2497
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

    .line 2350
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2352
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

    .line 2353
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 2354
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 2355
    goto :goto_0

    .line 2357
    :cond_2
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2358
    .local v3, "libName":Ljava/lang/String;
    const-string/jumbo v4, "version"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2360
    .local v1, "libVersionStr":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 2362
    .local v4, "libVersion":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 2365
    goto :goto_1

    .line 2363
    :catch_0
    move-exception v6

    .line 2367
    :goto_1
    if-eqz v3, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 2368
    const-class v6, Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2370
    iget-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v6, v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2374
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2375
    .end local v1    # "libVersionStr":Ljava/lang/String;
    .end local v3    # "libName":Ljava/lang/String;
    .end local v4    # "libVersion":J
    goto :goto_0

    .line 2376
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

    .line 928
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_0

    .line 930
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 931
    const/4 v0, 0x1

    .local v0, "createdNew":Z
    goto :goto_0

    .line 934
    .end local v0    # "createdNew":Z
    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v0

    .line 936
    .restart local v0    # "createdNew":Z
    :goto_0
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v1, :cond_1

    .line 942
    return v0

    .line 937
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

    .line 939
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

    .line 1205
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1207
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1208
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1209
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1212
    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1213
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 4355
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4358
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4359
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4362
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4363
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 4364
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4365
    .local v3, "sourceUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4366
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v5, 0x0

    .line 4367
    .local v5, "needsWriting":Z
    new-instance v6, Landroid/util/ArraySet;

    .line 4368
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4369
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

    .line 4370
    .local v8, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_1

    .line 4371
    const/4 v5, 0x1

    .line 4372
    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 4374
    .end local v8    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_1
    goto :goto_1

    .line 4375
    :cond_2
    if-eqz v5, :cond_3

    .line 4376
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4363
    .end local v3    # "sourceUserId":I
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "needsWriting":Z
    .end local v6    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4379
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 4380
    return-void

    .line 4379
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

    .line 1376
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

    .line 567
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "alsoResetStatus"    # Z

    .line 1353
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1354
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1355
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1360
    :cond_1
    if-eqz p3, :cond_2

    .line 1361
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1363
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1364
    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 1368
    const/4 v0, 0x0

    .line 1369
    .local v0, "result":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 1370
    .local v3, "userId":I
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1369
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1372
    :cond_0
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1125
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1126
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1129
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    .line 1130
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 1131
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1134
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    .line 1137
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1138
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    .line 1141
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method removeRenamedPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method removeUserLPw(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 4334
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4335
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

    .line 4336
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    .line 4337
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 4338
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4339
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 4340
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4341
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 4342
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4343
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4345
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4347
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4351
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    .line 4352
    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "blockUninstall"    # Z

    .line 1887
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1888
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    .line 1889
    if-nez v0, :cond_0

    .line 1890
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1891
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1893
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1894
    :cond_1
    if-eqz v0, :cond_2

    .line 1895
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1896
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1897
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1900
    :cond_2
    :goto_0
    return-void
.end method

.method setDefaultRuntimePermissionsVersionLPr(II)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 1426
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersionLPr(II)V

    .line 1427
    return-void
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 4531
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4532
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 4535
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    .line 4536
    return-void

    .line 4533
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

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .locals 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .line 4497
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4498
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4499
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_5

    .line 4502
    if-nez p4, :cond_1

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4503
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4505
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

    .line 4515
    :cond_1
    :goto_0
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p3, :cond_4

    .line 4516
    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4518
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4519
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4520
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4523
    :cond_2
    invoke-virtual {v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4525
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 4527
    :cond_4
    return v3

    .line 4500
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

.method setPermissionControllerVersion(J)V
    .locals 1
    .param p1, "version"    # J

    .line 1430
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setPermissionControllerVersion(J)V

    .line 1431
    return-void
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .line 1311
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1312
    .local v0, "current":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1313
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1320
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    .line 1321
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 1322
    .local v1, "alwaysGeneration":I
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1324
    .end local v1    # "alwaysGeneration":I
    :cond_2
    const/4 v1, 0x0

    .line 1327
    .restart local v1    # "alwaysGeneration":I
    :goto_0
    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1328
    return v2
.end method

.method updateRuntimePermissionsFingerprintLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1418
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->updateRuntimePermissionsFingerprintLPr(I)V

    .line 1419
    return-void
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .locals 13
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 1046
    const/16 v0, -0x2710

    if-eqz p1, :cond_d

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1053
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_1

    .line 1054
    return v0

    .line 1057
    :cond_1
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1059
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    const/16 v2, -0x2710

    .line 1061
    .local v2, "affectedUserId":I
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1062
    .local v4, "eachPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 1063
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_2

    .line 1064
    goto :goto_0

    .line 1068
    :cond_2
    const/4 v6, 0x0

    .line 1069
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

    .line 1070
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1071
    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1072
    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1073
    const/4 v6, 0x1

    .line 1074
    goto :goto_2

    .line 1076
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_3
    goto :goto_1

    .line 1077
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 1078
    goto :goto_0

    .line 1081
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1082
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 1086
    .local v8, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_8

    .line 1087
    const/4 v9, 0x0

    .line 1088
    .local v9, "reqByDisabledSysPkg":Z
    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1089
    .local v11, "permission":Ljava/lang/String;
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1090
    const/4 v9, 0x1

    .line 1091
    goto :goto_4

    .line 1093
    .end local v11    # "permission":Ljava/lang/String;
    :cond_6
    goto :goto_3

    .line 1094
    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    .line 1095
    goto/16 :goto_0

    .line 1101
    .end local v9    # "reqByDisabledSysPkg":Z
    :cond_8
    const v9, 0x3fbff

    const/4 v10, 0x0

    invoke-virtual {v7, v5, p2, v9, v10}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1104
    invoke-virtual {v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1106
    const/4 v2, -0x1

    .line 1110
    :cond_9
    invoke-virtual {v7, v5, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v9

    if-ne v9, v10, :cond_b

    .line 1112
    if-ne v2, v0, :cond_a

    .line 1113
    move v2, p2

    goto :goto_5

    .line 1114
    :cond_a
    if-eq v2, p2, :cond_b

    .line 1116
    const/4 v2, -0x1

    .line 1119
    .end local v4    # "eachPerm":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "used":Z
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_b
    :goto_5
    goto/16 :goto_0

    .line 1121
    :cond_c
    return v2

    .line 1047
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2    # "affectedUserId":I
    :cond_d
    :goto_6
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4488
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4489
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 4492
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4490
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

    .line 2011
    const/4 v0, 0x0

    const-string v1, "all-intent-filter-verifications"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2012
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2013
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2014
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2015
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v5

    .line 2016
    .local v5, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v5, :cond_0

    .line 2017
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2013
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2020
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2021
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .locals 5

    .line 1408
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1409
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1408
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1411
    :cond_0
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    .line 1399
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1400
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_0

    return-void

    .line 1402
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

    .line 1403
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1404
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 1405
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

    .line 2078
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 2079
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 2080
    const/4 v1, 0x0

    const-string v2, "block-uninstall-packages"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2081
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2082
    const-string v4, "block-uninstall"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2083
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "packageName"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2084
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2081
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2086
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2088
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

    .line 1982
    const/4 v0, 0x0

    const-string v1, "crossProfile-intent-filters"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1983
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1984
    .local v2, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v2, :cond_0

    .line 1985
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

    .line 1986
    .local v4, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1987
    invoke-virtual {v4, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1988
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1989
    .end local v4    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_0

    .line 1991
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1992
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

    .line 2066
    const/4 v0, 0x0

    const-string v1, "default-apps"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2067
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2068
    .local v2, "defaultBrowser":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2069
    const-string v3, "default-browser"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2070
    const-string/jumbo v4, "packageName"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2071
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2073
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2074
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

    .line 2881
    const/4 v0, 0x0

    const-string/jumbo v1, "updated-package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2882
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2883
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2884
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2886
    :cond_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2887
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2888
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2889
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2890
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2891
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2892
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2894
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2895
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2897
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2898
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2900
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2901
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2903
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2904
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2907
    :cond_5
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_6

    .line 2908
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2910
    :cond_6
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2913
    :goto_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2916
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_7

    .line 2917
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2918
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 2917
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2921
    :cond_7
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2922
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

    .line 1997
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1998
    const/4 v0, 0x0

    const-string v1, "domain-verification"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2000
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 2001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote domain verification for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2001
    const-string v3, "PackageSettings"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2006
    :cond_1
    return-void
.end method

.method writeKernelMappingLPr()V
    .locals 6

    .line 2672
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2674
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2675
    .local v0, "known":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2676
    .local v1, "knownSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2677
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2676
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2680
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

    .line 2682
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2683
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2684
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 2687
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2688
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2691
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2687
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2694
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 2697
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2699
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    .line 2700
    return-void

    .line 2697
    :cond_1
    :goto_0
    return-void
.end method

.method writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "excludedUserIds"    # [I

    .line 2703
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 2704
    .local v0, "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2705
    .local v3, "firstTime":Z
    :goto_0
    if-nez v3, :cond_1

    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2706
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v1, v2

    .line 2709
    .local v1, "userIdsChanged":Z
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2711
    .local v2, "dir":Ljava/io/File;
    if-eqz v3, :cond_3

    .line 2712
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2714
    new-instance v4, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v4

    .line 2715
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    :cond_3
    iget v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq v4, p2, :cond_4

    .line 2720
    new-instance v4, Ljava/io/File;

    const-string v5, "appid"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2721
    .local v4, "appIdFile":Ljava/io/File;
    invoke-direct {p0, v4, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2725
    .end local v4    # "appIdFile":Ljava/io/File;
    :cond_4
    if-eqz v1, :cond_a

    .line 2727
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p3

    if-ge v4, v5, :cond_7

    .line 2728
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, p3, v4

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2730
    :cond_5
    new-instance v5, Ljava/io/File;

    const-string v6, "excluded_userids"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v6, p3, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2727
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2736
    .end local v4    # "i":I
    :cond_7
    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v4, :cond_9

    .line 2737
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v5, v5

    if-ge v4, v5, :cond_9

    .line 2738
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v5, v5, v4

    invoke-static {p3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2739
    new-instance v5, Ljava/io/File;

    const-string v6, "clear_userid"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2737
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2747
    .end local v4    # "i":I
    :cond_9
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2749
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

    .line 3033
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

    .line 3034
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    const-string v3, "defined-keyset"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3035
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "alias"

    invoke-interface {p1, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3036
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "identifier"

    invoke-interface {p1, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3037
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3038
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 3039
    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 22

    .line 2502
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

    .line 2508
    .local v10, "startTime":J
    invoke-static {}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2512
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    const-string v13, "PackageManager"

    if-eqz v12, :cond_1

    .line 2517
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2518
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2519
    const-string v0, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    return-void

    .line 2525
    :cond_0
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 2526
    const-string v12, "Preserving older settings backup"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :cond_1
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2533
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2534
    .local v12, "fstr":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2537
    .local v14, "str":Ljava/io/BufferedOutputStream;
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2538
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

    .line 2539
    const/4 v13, 0x1

    move-wide/from16 v18, v10

    .end local v10    # "startTime":J
    .local v18, "startTime":J
    :try_start_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2540
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v15, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2542
    invoke-interface {v15, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2544
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v10, v13, :cond_2

    .line 2545
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2546
    .local v13, "volumeUuid":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2548
    .local v11, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    move-object/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .local v20, "fstr":Ljava/io/FileOutputStream;
    invoke-interface {v15, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2549
    const-string/jumbo v12, "volumeUuid"

    invoke-static {v15, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2550
    const-string/jumbo v12, "sdkVersion"

    move-object/from16 v21, v13

    .end local v13    # "volumeUuid":Ljava/lang/String;
    .local v21, "volumeUuid":Ljava/lang/String;
    iget v13, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v15, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2551
    const-string v12, "databaseVersion"

    iget v13, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v15, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2552
    const-string v12, "fingerprint"

    iget-object v13, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v15, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2553
    const/4 v12, 0x0

    invoke-interface {v15, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2544
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

    .line 2556
    .end local v10    # "i":I
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .restart local v20    # "fstr":Ljava/io/FileOutputStream;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v5, :cond_3

    .line 2557
    const/4 v5, 0x0

    invoke-interface {v15, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2558
    const-string v5, "device"

    iget-object v10, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v10}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v15, v11, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2559
    invoke-interface {v15, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2562
    :cond_3
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 2563
    const/4 v5, 0x0

    invoke-interface {v15, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2564
    const-string v5, "enforcement"

    .line 2565
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "1"

    goto :goto_1

    :cond_4
    const-string v8, "0"

    .line 2564
    :goto_1
    const/4 v10, 0x0

    invoke-interface {v15, v10, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2566
    invoke-interface {v15, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2569
    :cond_5
    const/4 v5, 0x0

    invoke-interface {v15, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2570
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v15}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2571
    invoke-interface {v15, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2573
    invoke-interface {v15, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2574
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v15}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2575
    invoke-interface {v15, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2577
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

    .line 2578
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2579
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_2

    .line 2581
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

    .line 2582
    .restart local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2583
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_3

    .line 2585
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

    .line 2586
    .local v5, "usr":Lcom/android/server/pm/SharedUserSetting;
    const/4 v6, 0x0

    invoke-interface {v15, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2587
    const-string/jumbo v7, "name"

    iget-object v8, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v15, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2588
    const-string/jumbo v6, "userId"

    iget v7, v5, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 2589
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2588
    const/4 v8, 0x0

    invoke-interface {v15, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2590
    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v7, "sigs"

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v15, v7, v8}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2591
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 2592
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v6

    .line 2591
    invoke-virtual {v1, v15, v6}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2593
    const/4 v6, 0x0

    invoke-interface {v15, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2594
    nop

    .end local v5    # "usr":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_4

    .line 2596
    :cond_8
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 2597
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

    .line 2598
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {v15, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2599
    const-string/jumbo v5, "new"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v15, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2600
    const-string/jumbo v5, "old"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v15, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2601
    invoke-interface {v15, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2602
    nop

    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_5

    .line 2605
    :cond_9
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2606
    .local v0, "numIVIs":I
    const-string v3, "PackageSettings"

    if-lez v0, :cond_c

    .line 2607
    :try_start_3
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v4, :cond_a

    .line 2608
    const-string v4, "Writing restored-ivi entries to packages.xml"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_a
    const/4 v3, 0x0

    invoke-interface {v15, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2611
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v0, :cond_b

    .line 2612
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2613
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v1, v15, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2611
    .end local v4    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2615
    .end local v3    # "i":I
    :cond_b
    const/4 v3, 0x0

    invoke-interface {v15, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 2617
    :cond_c
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_d

    .line 2618
    const-string v2, "  no restored IVI entries to write"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_d
    :goto_7
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2624
    const/4 v2, 0x0

    invoke-interface {v15, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2626
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2628
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2629
    invoke-static/range {v20 .. v20}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2630
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 2634
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2635
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2640
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2641
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2644
    const-string/jumbo v2, "package"

    .line 2645
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    .line 2644
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2646
    return-void

    .line 2648
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

    .line 2649
    .end local v10    # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "startTime":J
    :goto_8
    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v3, v17

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2653
    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2654
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_e
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2926
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2927
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2928
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2929
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2931
    :cond_0
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2932
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2933
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2936
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2937
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2939
    :cond_2
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2940
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2942
    :cond_3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2943
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2945
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2946
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2949
    :cond_5
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "publicFlags"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2950
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "privateFlags"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2951
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2952
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2953
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2954
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2955
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_6

    .line 2956
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2958
    :cond_6
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2960
    :goto_0
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    const-string/jumbo v3, "true"

    if-eqz v2, :cond_7

    .line 2961
    const-string/jumbo v2, "uidError"

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2963
    :cond_7
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2964
    .local v2, "installSource":Lcom/android/server/pm/InstallSource;
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 2965
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v5, "installer"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2967
    :cond_8
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-eqz v4, :cond_9

    .line 2968
    const-string/jumbo v4, "isOrphaned"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2970
    :cond_9
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2971
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string/jumbo v5, "installInitiator"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2973
    :cond_a
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-eqz v4, :cond_b

    .line 2974
    const-string/jumbo v4, "installInitiatorUninstalled"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2976
    :cond_b
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2977
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    const-string/jumbo v5, "installOriginator"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2979
    :cond_c
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 2980
    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v5, "volumeUuid"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2982
    :cond_d
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 2983
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "categoryHint"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2985
    :cond_e
    iget-boolean v4, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v4, :cond_f

    .line 2986
    const-string/jumbo v4, "updateAvailable"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2988
    :cond_f
    iget-boolean v4, p2, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-eqz v4, :cond_10

    .line 2989
    const-string v4, "forceQueryable"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2992
    :cond_10
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2994
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    const-string/jumbo v5, "sigs"

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2996
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v3, :cond_11

    .line 2997
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    const-string/jumbo v5, "install-initiator-sigs"

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3001
    :cond_11
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 3003
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3004
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3005
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3006
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 3007
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeMimeGroupLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V

    .line 3009
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3010
    return-void
.end method

.method writePackageListLPr()V
    .locals 1

    .line 2761
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2762
    return-void
.end method

.method writePackageListLPr(I)V
    .locals 5
    .param p1, "creatingUserId"    # I

    .line 2765
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2766
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2767
    .local v1, "ctx":Ljava/lang/String;
    const-string v2, "PackageSettings"

    if-nez v1, :cond_0

    .line 2768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get SELinux context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 2769
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2768
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_0
    invoke-static {v1}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2773
    const-string v3, "Failed to set packages.list SELinux context"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2778
    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2779
    nop

    .line 2780
    return-void

    .line 2778
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2779
    throw v3
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 25
    .param p1, "userId"    # I

    .line 2091
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string/jumbo v0, "suspend-params"

    const-string v3, "disabled-components"

    const-string v4, "enabled-components"

    const-string/jumbo v5, "pkg"

    const-string/jumbo v6, "package-restrictions"

    const-string/jumbo v7, "name"

    invoke-static {}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2096
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2100
    .local v8, "startTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v10

    .line 2101
    .local v10, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v11

    .line 2102
    .local v11, "backupFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 2103
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    const-string v13, "PackageManager"

    if-eqz v12, :cond_1

    .line 2108
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2109
    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2110
    const-string v0, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    return-void

    .line 2116
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 2117
    const-string v12, "Preserving older stopped packages backup"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_1
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2123
    .local v12, "fstr":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2125
    .local v14, "str":Ljava/io/BufferedOutputStream;
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2126
    .local v15, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v17, v13

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2127
    const/4 v13, 0x1

    move-wide/from16 v18, v8

    .end local v8    # "startTime":J
    .local v18, "startTime":J
    :try_start_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v15, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2128
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v15, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2130
    invoke-interface {v15, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2132
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v20, v16

    .line 2133
    .local v20, "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v13, v20

    .end local v20    # "pkg":Lcom/android/server/pm/PackageSetting;
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v20

    move-object/from16 v21, v20

    .line 2136
    .local v21, "ustate":Landroid/content/pm/PackageUserState;
    invoke-interface {v15, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2137
    iget-object v9, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-interface {v15, v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2138
    move-object/from16 v8, v21

    move-object/from16 v21, v10

    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .local v8, "ustate":Landroid/content/pm/PackageUserState;
    .local v21, "userPackagesStateFile":Ljava/io/File;
    :try_start_3
    iget-wide v9, v8, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v23, 0x0

    cmp-long v9, v9, v23

    if-eqz v9, :cond_2

    .line 2139
    const-string v9, "ceDataInode"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v23, v11

    .end local v11    # "backupFile":Ljava/io/File;
    .local v23, "backupFile":Ljava/io/File;
    :try_start_4
    iget-wide v10, v8, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v15, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    goto :goto_1

    .line 2138
    .end local v23    # "backupFile":Ljava/io/File;
    .restart local v11    # "backupFile":Ljava/io/File;
    :cond_2
    move-object/from16 v23, v11

    .line 2141
    .end local v11    # "backupFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    :goto_1
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v9, :cond_3

    .line 2142
    const-string/jumbo v9, "inst"

    const-string v10, "false"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2144
    :cond_3
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->stopped:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const-string/jumbo v10, "true"

    if-eqz v9, :cond_4

    .line 2145
    :try_start_5
    const-string/jumbo v9, "stopped"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2147
    :cond_4
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v9, :cond_5

    .line 2148
    const-string/jumbo v9, "nl"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2150
    :cond_5
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v9, :cond_6

    .line 2151
    const-string v9, "hidden"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2153
    :cond_6
    iget v9, v8, Landroid/content/pm/PackageUserState;->distractionFlags:I

    if-eqz v9, :cond_7

    .line 2154
    const-string v9, "distraction_flags"

    iget v11, v8, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 2155
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 2154
    move-object/from16 v24, v13

    const/4 v13, 0x0

    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .local v24, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-interface {v15, v13, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 2153
    .end local v24    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_7
    move-object/from16 v24, v13

    .line 2157
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v24    # "pkg":Lcom/android/server/pm/PackageSetting;
    :goto_2
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v9, :cond_8

    .line 2158
    const-string/jumbo v9, "suspended"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2160
    :cond_8
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v9, :cond_9

    .line 2161
    const-string/jumbo v9, "instant-app"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2163
    :cond_9
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v9, :cond_a

    .line 2164
    const-string/jumbo v9, "virtual-preload"

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2166
    :cond_a
    iget v9, v8, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v9, :cond_b

    .line 2167
    const-string v9, "enabled"

    iget v10, v8, Landroid/content/pm/PackageUserState;->enabled:I

    .line 2168
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2167
    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2169
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 2170
    const-string v9, "enabledCaller"

    iget-object v10, v8, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2174
    :cond_b
    iget v9, v8, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v9, :cond_c

    .line 2176
    const-string v9, "domainVerificationStatus"

    iget v10, v8, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v15, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2179
    :cond_c
    iget v9, v8, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v9, :cond_d

    .line 2180
    const-string v9, "app-link-generation"

    iget v10, v8, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v15, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2183
    :cond_d
    iget v9, v8, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v9, :cond_e

    .line 2184
    const-string/jumbo v9, "install-reason"

    iget v10, v8, Landroid/content/pm/PackageUserState;->installReason:I

    .line 2185
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2184
    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2187
    :cond_e
    iget v9, v8, Landroid/content/pm/PackageUserState;->uninstallReason:I

    if-eqz v9, :cond_f

    .line 2188
    const-string/jumbo v9, "uninstall-reason"

    iget v10, v8, Landroid/content/pm/PackageUserState;->uninstallReason:I

    .line 2189
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2188
    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    :cond_f
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v9, :cond_10

    .line 2192
    const-string v9, "harmful-app-warning"

    iget-object v10, v8, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v15, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2195
    :cond_10
    iget-boolean v9, v8, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v9, :cond_12

    .line 2196
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    iget-object v10, v8, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_12

    .line 2197
    iget-object v10, v8, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2198
    .local v10, "suspendingPackage":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-interface {v15, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2199
    const-string/jumbo v13, "suspending-package"

    invoke-interface {v15, v11, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2200
    iget-object v11, v8, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 2201
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 2202
    .local v11, "params":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v11, :cond_11

    .line 2203
    invoke-virtual {v11, v15}, Landroid/content/pm/PackageUserState$SuspendParams;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2205
    :cond_11
    const/4 v13, 0x0

    invoke-interface {v15, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2196
    nop

    .end local v10    # "suspendingPackage":Ljava/lang/String;
    .end local v11    # "params":Landroid/content/pm/PackageUserState$SuspendParams;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2208
    .end local v9    # "i":I
    :cond_12
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const-string/jumbo v10, "item"

    if-nez v9, :cond_14

    .line 2209
    const/4 v9, 0x0

    :try_start_6
    invoke-interface {v15, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2210
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2211
    .local v11, "name":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2212
    invoke-interface {v15, v13, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2213
    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2214
    nop

    .end local v11    # "name":Ljava/lang/String;
    goto :goto_4

    .line 2215
    :cond_13
    const/4 v9, 0x0

    invoke-interface {v15, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2217
    :cond_14
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 2218
    const/4 v9, 0x0

    invoke-interface {v15, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2219
    iget-object v9, v8, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2220
    .restart local v11    # "name":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2221
    invoke-interface {v15, v13, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2222
    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2223
    nop

    .end local v11    # "name":Ljava/lang/String;
    goto :goto_5

    .line 2224
    :cond_15
    const/4 v9, 0x0

    invoke-interface {v15, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2227
    :cond_16
    const/4 v9, 0x0

    invoke-interface {v15, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2228
    move-object/from16 v10, v21

    move-object/from16 v8, v22

    move-object/from16 v11, v23

    const/4 v9, 0x0

    const/4 v13, 0x1

    .end local v8    # "ustate":Landroid/content/pm/PackageUserState;
    .end local v24    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_0

    .line 2257
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "backupFile":Ljava/io/File;
    .local v11, "backupFile":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object/from16 v23, v11

    .end local v11    # "backupFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    goto :goto_6

    .line 2230
    .end local v21    # "userPackagesStateFile":Ljava/io/File;
    .end local v23    # "backupFile":Ljava/io/File;
    .local v10, "userPackagesStateFile":Ljava/io/File;
    .restart local v11    # "backupFile":Ljava/io/File;
    .restart local v12    # "fstr":Ljava/io/FileOutputStream;
    .restart local v14    # "str":Ljava/io/BufferedOutputStream;
    .restart local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_17
    move-object/from16 v21, v10

    move-object/from16 v23, v11

    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .end local v11    # "backupFile":Ljava/io/File;
    .restart local v21    # "userPackagesStateFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    const/4 v0, 0x1

    invoke-virtual {v1, v15, v2, v0}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 2231
    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2232
    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2233
    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2234
    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2236
    const/4 v0, 0x0

    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2238
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2240
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2241
    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2242
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 2246
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 2247
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    .line 2252
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2256
    return-void

    .line 2257
    .end local v12    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v21    # "userPackagesStateFile":Ljava/io/File;
    .end local v23    # "backupFile":Ljava/io/File;
    .restart local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v11    # "backupFile":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .end local v11    # "backupFile":Ljava/io/File;
    .restart local v21    # "userPackagesStateFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    goto :goto_6

    .end local v18    # "startTime":J
    .end local v21    # "userPackagesStateFile":Ljava/io/File;
    .end local v23    # "backupFile":Ljava/io/File;
    .local v8, "startTime":J
    .restart local v10    # "userPackagesStateFile":Ljava/io/File;
    .restart local v11    # "backupFile":Ljava/io/File;
    :catch_3
    move-exception v0

    move-wide/from16 v18, v8

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    goto :goto_6

    :catch_4
    move-exception v0

    move-wide/from16 v18, v8

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    move-object/from16 v17, v13

    .line 2258
    .end local v8    # "startTime":J
    .end local v10    # "userPackagesStateFile":Ljava/io/File;
    .end local v11    # "backupFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "startTime":J
    .restart local v21    # "userPackagesStateFile":Ljava/io/File;
    .restart local v23    # "backupFile":Ljava/io/File;
    :goto_6
    const-string v3, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    move-object/from16 v4, v17

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2264
    .end local v0    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2265
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clean up mangled file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :cond_18
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

    .line 3042
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3043
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

    .line 2331
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    return-void

    .line 2335
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "perms"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2337
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2338
    .local v3, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2339
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2340
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "granted"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2341
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "flags"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2342
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2343
    .end local v3    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_0

    .line 2345
    :cond_1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2346
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

    .line 1968
    const/4 v0, 0x0

    const-string/jumbo v1, "persistent-preferred-activities"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1969
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1970
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1971
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

    .line 1972
    .local v4, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1973
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1974
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1975
    .end local v4    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_0

    .line 1977
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1978
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

    .line 1948
    const/4 v0, 0x0

    const-string/jumbo v1, "preferred-activities"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1949
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1950
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_1

    .line 1951
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredActivity;

    .line 1954
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    if-nez v4, :cond_0

    .line 1955
    goto :goto_0

    .line 1958
    :cond_0
    const-string/jumbo v5, "item"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1959
    invoke-virtual {v4, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1960
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1961
    .end local v4    # "pa":Lcom/android/server/pm/PreferredActivity;
    goto :goto_0

    .line 1963
    :cond_1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1964
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .line 5363
    if-eqz p2, :cond_0

    .line 5364
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_0

    .line 5366
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5368
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

    .line 3014
    const/4 v0, 0x0

    const-string/jumbo v1, "proper-signing-keyset"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3015
    nop

    .line 3016
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 3015
    const-string v3, "identifier"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3017
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3018
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

    .line 3022
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3023
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 3024
    .local v3, "id":J
    const/4 v5, 0x0

    const-string/jumbo v6, "upgrade-keyset"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3025
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "identifier"

    invoke-interface {p1, v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3026
    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3023
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3029
    :cond_0
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "newPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "oldPackage"    # Lcom/android/server/pm/PackageSetting;

    .line 951
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_0

    .line 952
    return-void

    .line 955
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 956
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_1

    .line 957
    return-void

    .line 959
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

    .line 960
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez p2, :cond_2

    .line 961
    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_1

    .line 962
    :cond_2
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    :goto_1
    nop

    .line 963
    .local v3, "oldUserState":Landroid/content/pm/PackageUserState;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 964
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 966
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "oldUserState":Landroid/content/pm/PackageUserState;
    :cond_3
    goto :goto_0

    .line 967
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

    .line 2380
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

    .line 2384
    :cond_0
    array-length v0, p2

    .line 2385
    .local v0, "libCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2386
    aget-object v2, p2, v1

    .line 2387
    .local v2, "libName":Ljava/lang/String;
    aget-wide v3, p3, v1

    .line 2388
    .local v3, "libVersion":J
    const/4 v5, 0x0

    const-string/jumbo v6, "uses-static-lib"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2389
    const-string/jumbo v7, "name"

    invoke-interface {p1, v5, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2390
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "version"

    invoke-interface {p1, v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2391
    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2385
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "libVersion":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2393
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 2382
    .end local v0    # "libCount":I
    :cond_2
    :goto_1
    return-void
.end method
