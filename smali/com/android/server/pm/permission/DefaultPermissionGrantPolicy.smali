.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    }
.end annotation


# static fields
.field private static final ACTION_TRACK:Ljava/lang/String; = "com.android.fitness.TRACK"

.field private static final ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_WHITELISTED:Ljava/lang/String; = "whitelisted"

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INTENT_QUERY_FLAGS:I = 0xc2000

.field private static final DEFAULT_PACKAGE_INFO_QUERY_FLAGS:I = 0x2000b000

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocationExtraPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

.field private final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 142
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 153
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 160
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 167
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 172
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 178
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 188
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 193
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 198
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 203
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "permissionManager"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 229
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    .line 234
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 235
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 247
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 248
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 252
    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->initInstance(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .line 112
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 112
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 1707
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .locals 6

    .line 1545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1546
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1547
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1548
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1550
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1551
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1552
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1554
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1555
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1556
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1558
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1559
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1560
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1562
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductServicesDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1564
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1565
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1568
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "android.hardware.type.embedded"

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1569
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1570
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1571
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1574
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    new-array v2, v4, [Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    :goto_0
    return-object v2
.end method

.method private getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1109
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1112
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 1113
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 1115
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1051
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1053
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1057
    return-object v1

    .line 1059
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1060
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1

    .line 1054
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1047
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 870
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1069
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1071
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1072
    return-object v1

    .line 1074
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1075
    .local v2, "handlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1076
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1077
    .local v4, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1078
    .local v5, "handlerPackage":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1079
    return-object v5

    .line 1075
    .end local v4    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v5    # "handlerPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1082
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private getDefaultSystemHandlerServicePackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1064
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v0, "syncAdapterPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1091
    .local v1, "homeIntent":Landroid/content/Intent;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 1092
    .local v4, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0xc2000

    invoke-virtual {v5, v1, v6, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1096
    .local v5, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_0

    .line 1097
    goto :goto_1

    .line 1100
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1101
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    .end local v4    # "syncAdapterPackageName":Ljava/lang/String;
    .end local v5    # "homeActivity":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1105
    :cond_2
    return-object v0
.end method

.method private getKnownPackage(II)Ljava/lang/String;
    .locals 1
    .param p1, "knownPkgId"    # I
    .param p2, "userId"    # I

    .line 885
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1464
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "extraFlags"    # I

    .line 1469
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1470
    return-object v0

    .line 1473
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x2000b000

    or-int/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1475
    :catch_0
    move-exception v1

    .line 1476
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageNot found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    return-object v0
.end method

.method private getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1460
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private grantDefaultPermissionExceptions(I)V
    .locals 18
    .param p1, "userId"    # I

    .line 1503
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1505
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1510
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1511
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1513
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    const/4 v0, 0x0

    .line 1516
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 1517
    .local v9, "exceptionCount":I
    const/4 v1, 0x0

    move/from16 v17, v1

    move-object v1, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-ge v0, v9, :cond_4

    .line 1518
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 1519
    .local v10, "packageName":Ljava/lang/String;
    invoke-direct {v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 1520
    .local v11, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    .line 1521
    .local v12, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 1522
    .local v13, "permissionGrantCount":I
    const/4 v2, 0x0

    move v14, v2

    .local v14, "j":I
    :goto_1
    if-ge v14, v13, :cond_3

    .line 1523
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1524
    .local v15, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    iget-object v2, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-direct {v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isPermissionDangerous(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which isn\'t dangerous"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    goto :goto_3

    .line 1529
    :cond_1
    if-nez v1, :cond_2

    .line 1530
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    move-object v7, v1

    goto :goto_2

    .line 1532
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    move-object v7, v1

    .line 1534
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    iget-object v1, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1537
    iget-boolean v4, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    iget-boolean v5, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v16, v7

    .end local v7    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    move-object/from16 v1, v16

    .line 1522
    .end local v15    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    .end local v16    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1517
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    .end local v13    # "permissionGrantCount":I
    .end local v14    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1542
    .end local v0    # "i":I
    :cond_4
    return-void

    .line 1513
    .end local v1    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "exceptionCount":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V
    .locals 5
    .param p1, "dialerPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 890
    if-nez p1, :cond_0

    .line 891
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 894
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 895
    .local v0, "isPhonePermFixed":Z
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 896
    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v1

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_0

    .line 898
    :cond_1
    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v1

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 900
    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v3, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 902
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSimCallManager(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 952
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 955
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "smsPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 905
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 908
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "useOpenWifiPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 912
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 913
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 38
    .param p1, "userId"    # I

    .line 482
    move-object/from16 v7, p0

    move/from16 v8, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default platform handlers for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 495
    .local v0, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v9, v2

    .line 496
    .local v9, "locationExtraPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v10, v2

    .line 497
    .local v10, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v11, v2

    .line 498
    .local v11, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v12, v2

    .line 499
    .local v12, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v13, v2

    .line 500
    .local v13, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v14, v2

    .line 501
    .local v14, "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object v15, v2

    .line 502
    .local v15, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    if-eqz v10, :cond_0

    .line 505
    invoke-interface {v10, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v6, v2

    .line 506
    .local v6, "voiceInteractPackageNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 507
    invoke-interface {v0, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v5, v2

    .line 508
    .local v5, "locationPackageNames":[Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 509
    invoke-interface {v9, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object v4, v2

    .line 510
    .local v4, "locationExtraPackageNames":[Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 511
    invoke-interface {v11, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    move-object v3, v2

    .line 512
    .local v3, "smsAppPackageNames":[Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 513
    invoke-interface {v12, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 514
    .local v2, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_4
    if-eqz v13, :cond_5

    .line 515
    invoke-interface {v13, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v17, v16

    .line 516
    .local v17, "simCallManagerPackageNames":[Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 517
    invoke-interface {v14, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    move-object/from16 v18, v16

    .line 518
    .local v18, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 519
    const-string v1, "com.android.contacts"

    invoke-interface {v15, v1, v8}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    .line 520
    .local v1, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_7
    if-eqz v15, :cond_8

    .line 521
    move-object/from16 v19, v0

    .end local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v19, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    const-string v0, "com.android.calendar"

    invoke-interface {v15, v0, v8}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_8

    .end local v19    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_8
    move-object/from16 v19, v0

    .end local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v19    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, v16

    .line 524
    .local v0, "calendarSyncAdapterPackages":[Ljava/lang/String;
    nop

    .line 525
    move-object/from16 v16, v5

    .end local v5    # "locationPackageNames":[Ljava/lang/String;
    .local v16, "locationPackageNames":[Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v20, v4

    .end local v4    # "locationExtraPackageNames":[Ljava/lang/String;
    .local v20, "locationExtraPackageNames":[Ljava/lang/String;
    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v22, v6

    .end local v6    # "voiceInteractPackageNames":[Ljava/lang/String;
    .local v22, "voiceInteractPackageNames":[Ljava/lang/String;
    new-array v6, v5, [Ljava/util/Set;

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v23, v6, v5

    .line 524
    invoke-direct {v7, v4, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 529
    const/4 v6, 0x3

    invoke-direct {v7, v6, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, "verifier":Ljava/lang/String;
    move-object/from16 v25, v9

    const/4 v6, 0x1

    .end local v9    # "locationExtraPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v25, "locationExtraPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    new-array v9, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v9, v5

    invoke-direct {v7, v4, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 531
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/util/Set;

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v9, v6, v5

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    aput-object v9, v6, v5

    invoke-direct {v7, v4, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 534
    nop

    .line 535
    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    new-array v5, v9, [Ljava/util/Set;

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v26, 0x0

    aput-object v27, v5, v26

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x1

    aput-object v27, v5, v24

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x2

    aput-object v27, v5, v21

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v9, 0x3

    aput-object v27, v5, v9

    .line 534
    invoke-direct {v7, v6, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 540
    nop

    .line 541
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/util/Set;

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v26, 0x0

    aput-object v23, v6, v26

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v9, 0x1

    aput-object v23, v6, v9

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x2

    aput-object v23, v6, v21

    .line 540
    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 545
    nop

    .line 546
    const-string v5, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/util/Set;

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v23, 0x0

    aput-object v9, v6, v23

    .line 545
    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 551
    nop

    .line 552
    const-string/jumbo v5, "media"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v9, v23

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v29, v4

    const/4 v4, 0x1

    .end local v4    # "verifier":Ljava/lang/String;
    .local v29, "verifier":Ljava/lang/String;
    aput-object v6, v9, v4

    .line 551
    invoke-direct {v7, v5, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 556
    nop

    .line 557
    const-string v5, "downloads"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/util/Set;

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v9, v6, v23

    .line 556
    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 561
    nop

    .line 562
    const-string v5, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/util/Set;

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v9, v6, v23

    .line 561
    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 567
    nop

    .line 568
    const-string v5, "com.android.externalstorage.documents"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v6, v23

    .line 567
    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 573
    invoke-static {}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->getInstance()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->setCarrierPackagePermissions(I)V

    .line 577
    nop

    .line 578
    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v9, 0x0

    aput-object v5, v6, v9

    .line 577
    invoke-direct {v7, v4, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 582
    if-nez v2, :cond_9

    .line 583
    nop

    .line 584
    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, "dialerPackage":Ljava/lang/String;
    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V

    .line 586
    .end local v4    # "dialerPackage":Ljava/lang/String;
    goto :goto_a

    .line 587
    :cond_9
    array-length v4, v2

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_a

    aget-object v6, v2, v5

    .line 588
    .local v6, "dialerAppPackageName":Ljava/lang/String;
    invoke-direct {v7, v6, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V

    .line 587
    .end local v6    # "dialerAppPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 593
    :cond_a
    :goto_a
    move-object/from16 v9, v17

    .end local v17    # "simCallManagerPackageNames":[Ljava/lang/String;
    .local v9, "simCallManagerPackageNames":[Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 594
    array-length v4, v9

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v4, :cond_b

    aget-object v6, v9, v5

    .line 595
    .local v6, "simCallManagerPackageName":Ljava/lang/String;
    invoke-direct {v7, v6, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSimCallManager(Ljava/lang/String;I)V

    .line 594
    .end local v6    # "simCallManagerPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 601
    :cond_b
    move-object/from16 v6, v18

    .end local v18    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v6, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 602
    array-length v4, v6

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_c

    move-object/from16 v17, v2

    .end local v2    # "dialerAppPackageNames":[Ljava/lang/String;
    .local v17, "dialerAppPackageNames":[Ljava/lang/String;
    aget-object v2, v6, v5

    .line 603
    .local v2, "useOpenWifiPackageName":Ljava/lang/String;
    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Ljava/lang/String;I)V

    .line 602
    .end local v2    # "useOpenWifiPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v17

    goto :goto_c

    .end local v17    # "dialerAppPackageNames":[Ljava/lang/String;
    .local v2, "dialerAppPackageNames":[Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v2

    .end local v2    # "dialerAppPackageNames":[Ljava/lang/String;
    .restart local v17    # "dialerAppPackageNames":[Ljava/lang/String;
    goto :goto_d

    .line 601
    .end local v17    # "dialerAppPackageNames":[Ljava/lang/String;
    .restart local v2    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v2

    .line 609
    .end local v2    # "dialerAppPackageNames":[Ljava/lang/String;
    .restart local v17    # "dialerAppPackageNames":[Ljava/lang/String;
    :goto_d
    if-nez v3, :cond_e

    .line 610
    const-string v2, "android.intent.category.APP_MESSAGING"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "smsPackage":Ljava/lang/String;
    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V

    .line 613
    .end local v2    # "smsPackage":Ljava/lang/String;
    goto :goto_f

    .line 614
    :cond_e
    array-length v2, v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_f

    aget-object v5, v3, v4

    .line 615
    .local v5, "smsPackage":Ljava/lang/String;
    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V

    .line 614
    .end local v5    # "smsPackage":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 620
    :cond_f
    :goto_f
    nop

    .line 621
    const-string v2, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/util/Set;

    sget-object v18, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v23, 0x0

    aput-object v18, v5, v23

    .line 620
    invoke-direct {v7, v2, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 625
    nop

    .line 626
    const-string v2, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v23

    .line 625
    invoke-direct {v7, v2, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 630
    nop

    .line 631
    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v23

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v18, 0x1

    aput-object v4, v5, v18

    .line 630
    invoke-direct {v7, v2, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 636
    nop

    .line 637
    const-string v2, "com.android.calendar"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, "calendarProvider":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v18, 0x0

    aput-object v2, v4, v18

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "smsAppPackageNames":[Ljava/lang/String;
    .local v23, "smsAppPackageNames":[Ljava/lang/String;
    aput-object v2, v4, v3

    invoke-direct {v7, v5, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 640
    new-array v2, v3, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v2, v18

    invoke-direct {v7, v5, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 643
    nop

    .line 644
    invoke-direct {v7, v0, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v18

    .line 643
    invoke-direct {v7, v2, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 648
    nop

    .line 649
    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v21, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v21, v3, v18

    sget-object v21, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    aput-object v21, v3, v4

    .line 648
    invoke-direct {v7, v2, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 654
    nop

    .line 655
    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v21, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v21, v3, v18

    .line 654
    invoke-direct {v7, v2, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 661
    new-array v2, v4, [I

    aput v18, v2, v18

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 662
    const/16 v21, 0x0

    const/16 v24, 0x1

    new-array v3, v4, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v18

    const-string v2, "com.google.android.syncadapters.contacts"

    move-object/from16 v30, v1

    .end local v1    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .local v30, "contactsSyncAdapterPackages":[Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v31, v3

    move/from16 v3, p1

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v29

    const/16 v26, 0x2

    move/from16 v29, v4

    .end local v29    # "verifier":Ljava/lang/String;
    .local v0, "locationExtraPackageNames":[Ljava/lang/String;
    .local v20, "verifier":Ljava/lang/String;
    .local v32, "calendarSyncAdapterPackages":[Ljava/lang/String;
    move/from16 v4, v21

    move-object/from16 v33, v16

    move-object/from16 v16, v5

    .end local v5    # "calendarProvider":Ljava/lang/String;
    .local v16, "calendarProvider":Ljava/lang/String;
    .local v33, "locationPackageNames":[Ljava/lang/String;
    move/from16 v5, v24

    move-object/from16 v21, v6

    move-object/from16 v18, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v10

    const/4 v10, 0x3

    .end local v6    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v10    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v9, "voiceInteractPackageNames":[Ljava/lang/String;
    .local v18, "simCallManagerPackageNames":[Ljava/lang/String;
    .local v21, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v22, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v6, v31

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    goto :goto_10

    .line 661
    .end local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v21    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v30    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v32    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v33    # "locationPackageNames":[Ljava/lang/String;
    .local v0, "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v1    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .restart local v5    # "calendarProvider":Ljava/lang/String;
    .restart local v6    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v9, "simCallManagerPackageNames":[Ljava/lang/String;
    .restart local v10    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v16, "locationPackageNames":[Ljava/lang/String;
    .local v20, "locationExtraPackageNames":[Ljava/lang/String;
    .local v22, "voiceInteractPackageNames":[Ljava/lang/String;
    .restart local v29    # "verifier":Ljava/lang/String;
    :cond_10
    move-object/from16 v32, v0

    move-object/from16 v30, v1

    move-object/from16 v21, v6

    move-object/from16 v18, v9

    move-object/from16 v33, v16

    move-object/from16 v0, v20

    move-object/from16 v9, v22

    move-object/from16 v20, v29

    move-object/from16 v16, v5

    move-object/from16 v22, v10

    const/4 v10, 0x3

    .line 668
    .end local v1    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v5    # "calendarProvider":Ljava/lang/String;
    .end local v6    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v10    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v29    # "verifier":Ljava/lang/String;
    .local v0, "locationExtraPackageNames":[Ljava/lang/String;
    .local v9, "voiceInteractPackageNames":[Ljava/lang/String;
    .local v16, "calendarProvider":Ljava/lang/String;
    .restart local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .local v20, "verifier":Ljava/lang/String;
    .restart local v21    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v22, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v30    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .restart local v32    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v33    # "locationPackageNames":[Ljava/lang/String;
    :goto_10
    nop

    .line 669
    const-string v1, "com.android.contacts"

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 670
    .local v6, "contactsProviderPackage":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v7, v6, v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 672
    new-array v1, v3, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v1, v4

    invoke-direct {v7, v6, v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 675
    nop

    .line 676
    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v2, v4

    .line 675
    invoke-direct {v7, v1, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 681
    nop

    .line 682
    const-string v1, "android.intent.category.APP_MAPS"

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v2, v4

    .line 681
    invoke-direct {v7, v1, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 686
    nop

    .line 687
    const-string v1, "android.intent.category.APP_GALLERY"

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v2, v4

    .line 686
    invoke-direct {v7, v1, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 692
    nop

    .line 693
    const-string v1, "android.intent.category.APP_EMAIL"

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v2, v4

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v2, v3

    .line 692
    invoke-direct {v7, v1, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 698
    const/4 v1, 0x4

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "browserPackage":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 700
    const-string v1, "android.intent.category.APP_BROWSER"

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 702
    .end local v2    # "browserPackage":Ljava/lang/String;
    .local v1, "browserPackage":Ljava/lang/String;
    invoke-direct {v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 703
    const/4 v1, 0x0

    move-object/from16 v24, v1

    goto :goto_11

    .line 702
    :cond_11
    move-object/from16 v24, v1

    goto :goto_11

    .line 699
    .end local v1    # "browserPackage":Ljava/lang/String;
    .restart local v2    # "browserPackage":Ljava/lang/String;
    :cond_12
    move-object/from16 v24, v2

    .line 712
    .end local v2    # "browserPackage":Ljava/lang/String;
    .local v24, "browserPackage":Ljava/lang/String;
    :goto_11
    new-array v1, v3, [I

    aput v3, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 713
    const/16 v26, 0x0

    const/16 v27, 0x1

    new-array v2, v3, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v2, v4

    move-object/from16 v1, p0

    move-object/from16 v29, v2

    move-object/from16 v2, v24

    move v10, v3

    move/from16 v3, p1

    move v10, v4

    move/from16 v4, v26

    move/from16 v5, v27

    move-object/from16 v26, v6

    .end local v6    # "contactsProviderPackage":Ljava/lang/String;
    .local v26, "contactsProviderPackage":Ljava/lang/String;
    move-object/from16 v6, v29

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    goto :goto_12

    .line 712
    .end local v26    # "contactsProviderPackage":Ljava/lang/String;
    .restart local v6    # "contactsProviderPackage":Ljava/lang/String;
    :cond_13
    move v10, v4

    move-object/from16 v26, v6

    .line 719
    .end local v6    # "contactsProviderPackage":Ljava/lang/String;
    .restart local v26    # "contactsProviderPackage":Ljava/lang/String;
    :goto_12
    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz v9, :cond_15

    .line 720
    array-length v3, v9

    move v4, v10

    :goto_13
    if-ge v4, v3, :cond_14

    aget-object v5, v9, v4

    .line 721
    .local v5, "voiceInteractPackageName":Ljava/lang/String;
    new-array v6, v1, [Ljava/util/Set;

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v27, v6, v10

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v29, 0x1

    aput-object v27, v6, v29

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v1, 0x2

    aput-object v27, v6, v1

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v31, 0x3

    aput-object v27, v6, v31

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v28, 0x4

    aput-object v27, v6, v28

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v27, v6, v2

    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 720
    .end local v5    # "voiceInteractPackageName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x6

    goto :goto_13

    :cond_14
    const/4 v1, 0x2

    goto :goto_14

    .line 719
    :cond_15
    const/4 v1, 0x2

    .line 727
    :goto_14
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 729
    nop

    .line 730
    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v7, v3, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 729
    invoke-direct {v7, v3, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 736
    :cond_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 738
    .local v3, "voiceRecoIntent":Landroid/content/Intent;
    nop

    .line 739
    invoke-direct {v7, v3, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v6, v10

    .line 738
    invoke-direct {v7, v4, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 743
    const/16 v5, 0x8

    move-object/from16 v6, v33

    .end local v33    # "locationPackageNames":[Ljava/lang/String;
    .local v6, "locationPackageNames":[Ljava/lang/String;
    if-eqz v6, :cond_18

    .line 744
    array-length v4, v6

    move v2, v10

    :goto_15
    if-ge v2, v4, :cond_17

    aget-object v1, v6, v2

    .line 745
    .local v1, "packageName":Ljava/lang/String;
    move-object/from16 v36, v3

    .end local v3    # "voiceRecoIntent":Landroid/content/Intent;
    .local v36, "voiceRecoIntent":Landroid/content/Intent;
    new-array v3, v5, [Ljava/util/Set;

    sget-object v37, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v37, v3, v10

    sget-object v37, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v35, 0x1

    aput-object v37, v3, v35

    sget-object v37, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v34, 0x2

    aput-object v37, v3, v34

    sget-object v37, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v31, 0x3

    aput-object v37, v3, v31

    sget-object v37, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v28, 0x4

    aput-object v37, v3, v28

    sget-object v37, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v33, 0x5

    aput-object v37, v3, v33

    sget-object v37, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const/16 v29, 0x6

    aput-object v37, v3, v29

    sget-object v37, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x7

    aput-object v37, v3, v27

    invoke-direct {v7, v1, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 749
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v5, v10

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const/16 v35, 0x1

    aput-object v3, v5, v35

    invoke-direct {v7, v1, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 744
    .end local v1    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v36

    const/4 v1, 0x2

    const/16 v5, 0x8

    goto :goto_15

    .end local v36    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v3    # "voiceRecoIntent":Landroid/content/Intent;
    :cond_17
    move-object/from16 v36, v3

    .end local v3    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v36    # "voiceRecoIntent":Landroid/content/Intent;
    goto :goto_16

    .line 743
    .end local v36    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v3    # "voiceRecoIntent":Landroid/content/Intent;
    :cond_18
    move-object/from16 v36, v3

    .line 753
    .end local v3    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v36    # "voiceRecoIntent":Landroid/content/Intent;
    :goto_16
    if-eqz v0, :cond_19

    .line 755
    array-length v1, v0

    move v2, v10

    :goto_17
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 756
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v10

    invoke-direct {v7, v3, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 755
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 762
    :cond_19
    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v10, v2, v10

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 763
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v10

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x4

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x5

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x6

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x7

    aput-object v1, v2, v3

    const-string v1, "com.google.android.gms"

    invoke-direct {v7, v1, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 767
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v2, v10

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "com.google.android.gms"

    invoke-direct {v7, v1, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 773
    :cond_1a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "foo.mp3"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "audio/mpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 776
    .local v1, "musicIntent":Landroid/content/Intent;
    nop

    .line 777
    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v10

    .line 776
    invoke-direct {v7, v2, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 781
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 783
    const-string v3, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 784
    .local v2, "homeIntent":Landroid/content/Intent;
    nop

    .line 785
    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v10

    .line 784
    invoke-direct {v7, v3, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 789
    iget-object v3, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v3, v4, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 792
    const-string v3, "android.intent.category.HOME_MAIN"

    invoke-direct {v7, v3, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, "wearPackage":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v10

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x1

    aput-object v4, v5, v10

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x2

    aput-object v4, v5, v10

    invoke-direct {v7, v3, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 796
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v4, v5, v27

    invoke-direct {v7, v3, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 799
    nop

    .line 800
    const-string v4, "com.android.fitness.TRACK"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/util/Set;

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v5, v27

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v29, v0

    const/4 v0, 0x1

    .end local v0    # "locationExtraPackageNames":[Ljava/lang/String;
    .local v29, "locationExtraPackageNames":[Ljava/lang/String;
    aput-object v10, v5, v0

    .line 799
    invoke-direct {v7, v4, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_18

    .line 789
    .end local v3    # "wearPackage":Ljava/lang/String;
    .end local v29    # "locationExtraPackageNames":[Ljava/lang/String;
    .restart local v0    # "locationExtraPackageNames":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v29, v0

    move/from16 v27, v10

    const/4 v0, 0x1

    .line 805
    .end local v0    # "locationExtraPackageNames":[Ljava/lang/String;
    .restart local v29    # "locationExtraPackageNames":[Ljava/lang/String;
    :goto_18
    new-array v3, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v0, v3, v27

    const-string v0, "com.android.printspooler"

    invoke-direct {v7, v0, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 809
    nop

    .line 810
    const-string v0, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v7, v0, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v27

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 809
    invoke-direct {v7, v0, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 815
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    const-string/jumbo v3, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 817
    .local v0, "nfcTagIntent":Landroid/content/Intent;
    nop

    .line 818
    invoke-direct {v7, v0, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x0

    aput-object v4, v5, v10

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x1

    aput-object v4, v5, v10

    .line 817
    invoke-direct {v7, v3, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 822
    nop

    .line 823
    const-string v3, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v7, v3, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v5, v4, v27

    .line 822
    invoke-direct {v7, v3, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 828
    new-array v3, v10, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v27

    const-string v4, "com.android.companiondevicemanager"

    invoke-direct {v7, v4, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 833
    nop

    .line 834
    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v7, v3, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v27

    .line 833
    invoke-direct {v7, v3, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 839
    iget-object v3, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 840
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v3

    .line 841
    .local v3, "textClassifierPackageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 842
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x0

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x1

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x2

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x3

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    invoke-direct {v7, v3, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 848
    :cond_1c
    iget-object v4, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 849
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v4

    .line 850
    .local v4, "attentionServicePackageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 851
    const/4 v5, 0x1

    new-array v10, v5, [Ljava/util/Set;

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v28, v10, v27

    invoke-direct {v7, v4, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_19

    .line 850
    :cond_1d
    const/4 v5, 0x1

    const/16 v27, 0x0

    .line 857
    :goto_19
    new-array v10, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v10, v27

    const-string v5, "com.android.sharedstoragebackup"

    invoke-direct {v7, v5, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 861
    iget-object v5, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 862
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, "systemCaptionsServicePackageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 864
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/util/Set;

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v28, v10, v27

    invoke-direct {v7, v5, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 867
    :cond_1e
    return-void

    .line 502
    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .end local v1    # "musicIntent":Landroid/content/Intent;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v3    # "textClassifierPackageName":Ljava/lang/String;
    .end local v4    # "attentionServicePackageName":Ljava/lang/String;
    .end local v5    # "systemCaptionsServicePackageName":Ljava/lang/String;
    .end local v6    # "locationPackageNames":[Ljava/lang/String;
    .end local v9    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v11    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v12    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v13    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v14    # "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v15    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v16    # "calendarProvider":Ljava/lang/String;
    .end local v17    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v19    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v20    # "verifier":Ljava/lang/String;
    .end local v21    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v22    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v23    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v24    # "browserPackage":Ljava/lang/String;
    .end local v25    # "locationExtraPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v26    # "contactsProviderPackage":Ljava/lang/String;
    .end local v29    # "locationExtraPackageNames":[Ljava/lang/String;
    .end local v30    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v32    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v36    # "voiceRecoIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final varargs grantIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 378
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 380
    return-void
.end method

.method private final varargs grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 877
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "permissions":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    return-void

    .line 878
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 879
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 880
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 882
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V
    .locals 11
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I
    .param p3, "systemFixed"    # Z
    .param p4, "ignoreSystemPackage"    # Z
    .param p5, "whitelistRestrictedPermissions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "IZZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 470
    .local p6, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p6

    if-nez p1, :cond_0

    .line 471
    return-void

    .line 473
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    array-length v8, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v0, v9

    .line 475
    .local v10, "permissionGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, v10

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 474
    .end local v10    # "permissionGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 479
    :cond_1
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "ignoreSystemPackage"    # Z
    .param p4, "whitelistRestrictedPermissions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 461
    .local p5, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 464
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to platform components for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 363
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 364
    goto :goto_0

    .line 366
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 368
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    goto :goto_0

    .line 371
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(ILandroid/content/pm/PackageInfo;)V

    .line 372
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 373
    :cond_3
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "systemFixed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 449
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    return-void

    .line 452
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 455
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 442
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 444
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1132
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 1134
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .locals 31
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "systemFixed"    # Z
    .param p4, "ignoreSystemPackage"    # Z
    .param p5, "whitelistRestrictedPermissions"    # Z
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZI)V"
        }
    .end annotation

    .line 1221
    .local p2, "permissionsWithoutSplits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 1222
    .local v10, "user":Landroid/os/UserHandle;
    if-nez v2, :cond_0

    .line 1223
    return-void

    .line 1226
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1227
    .local v0, "requestedPermissions":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1228
    return-void

    .line 1233
    :cond_1
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1234
    .local v11, "requestedByNonSystemPackage":[Ljava/lang/String;
    array-length v12, v0

    .line 1235
    .local v12, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_3

    .line 1236
    aget-object v5, v0, v4

    invoke-static {v11, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1237
    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 1235
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1240
    .end local v4    # "i":I
    :cond_3
    sget-object v4, Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1244
    .end local v0    # "requestedPermissions":[Ljava/lang/String;
    .local v4, "requestedPermissions":[Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v0, v5, v13, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 1250
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v14, v5

    .line 1251
    .local v14, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v15, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1253
    .local v15, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v5, 0x20

    .line 1254
    .local v5, "newFlags":I
    if-eqz p3, :cond_4

    .line 1255
    or-int/lit8 v5, v5, 0x10

    .line 1259
    :cond_4
    iget-object v6, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v7, Landroid/permission/PermissionManager;

    .line 1260
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager;

    invoke-virtual {v6}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v9

    .line 1261
    .local v9, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 1262
    .local v8, "numSplitPerms":I
    const/4 v6, 0x0

    .local v6, "splitPermNum":I
    :goto_1
    if-ge v6, v8, :cond_7

    .line 1263
    nop

    .line 1264
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1266
    .local v7, "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    if-eqz v15, :cond_5

    iget v13, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1267
    move/from16 v16, v5

    .end local v5    # "newFlags":I
    .local v16, "newFlags":I
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge v13, v5, :cond_6

    .line 1268
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1269
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1266
    .end local v16    # "newFlags":I
    .restart local v5    # "newFlags":I
    :cond_5
    move/from16 v16, v5

    .line 1262
    .end local v5    # "newFlags":I
    .end local v7    # "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v16    # "newFlags":I
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    const/4 v13, 0x0

    goto :goto_1

    .end local v16    # "newFlags":I
    .restart local v5    # "newFlags":I
    :cond_7
    move/from16 v16, v5

    .line 1273
    .end local v5    # "newFlags":I
    .end local v6    # "splitPermNum":I
    .restart local v16    # "newFlags":I
    const/4 v5, 0x0

    .line 1281
    .local v5, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p4, :cond_9

    if-eqz v15, :cond_9

    .line 1283
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1284
    iget-object v6, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1285
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1284
    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1286
    .local v6, "disabledPkg":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_9

    .line 1287
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1288
    return-void

    .line 1290
    :cond_8
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1291
    new-instance v7, Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v5, v7

    .line 1292
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v13, v4

    goto :goto_3

    .line 1297
    .end local v6    # "disabledPkg":Landroid/content/pm/PackageInfo;
    :cond_9
    move-object v13, v4

    move-object v7, v5

    .end local v4    # "requestedPermissions":[Ljava/lang/String;
    .end local v5    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v13, "requestedPermissions":[Ljava/lang/String;
    :goto_3
    array-length v6, v13

    .line 1301
    .local v6, "numRequestedPermissions":I
    new-array v5, v6, [Ljava/lang/String;

    .line 1302
    .local v5, "sortedRequestedPermissions":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1303
    .local v4, "numForeground":I
    const/16 v17, 0x0

    .line 1304
    .local v17, "numOther":I
    const/16 v18, 0x0

    move/from16 v30, v18

    move/from16 v18, v4

    move/from16 v4, v30

    .local v4, "i":I
    .local v18, "numForeground":I
    :goto_4
    if-ge v4, v6, :cond_b

    .line 1305
    aget-object v3, v13, v4

    .line 1306
    .local v3, "permission":Ljava/lang/String;
    invoke-direct {v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_a

    .line 1307
    aput-object v3, v5, v18

    .line 1308
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1310
    :cond_a
    add-int/lit8 v19, v6, -0x1

    sub-int v19, v19, v17

    aput-object v3, v5, v19

    .line 1312
    add-int/lit8 v17, v17, 0x1

    .line 1304
    .end local v3    # "permission":Ljava/lang/String;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p2

    goto :goto_4

    .line 1316
    .end local v4    # "i":I
    :cond_b
    const/4 v3, 0x0

    .local v3, "requestedPermissionNum":I
    :goto_6
    if-ge v3, v6, :cond_1c

    .line 1318
    aget-object v4, v13, v3

    .line 1322
    .local v4, "permission":Ljava/lang/String;
    if-eqz v7, :cond_c

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 1323
    move-object/from16 v28, v0

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    const/4 v0, 0x0

    goto/16 :goto_e

    .line 1326
    :cond_c
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1327
    move-object/from16 v19, v5

    .end local v5    # "sortedRequestedPermissions":[Ljava/lang/String;
    .local v19, "sortedRequestedPermissions":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move/from16 v20, v6

    .end local v6    # "numRequestedPermissions":I
    .local v20, "numRequestedPermissions":I
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v10}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v6

    .line 1332
    .local v6, "flags":I
    if-eqz p3, :cond_d

    and-int/lit8 v5, v6, 0x10

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    move/from16 v21, v5

    .line 1342
    .local v21, "changingGrantForSystemFixed":Z
    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isFixedOrUserSet(I)Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez p4, :cond_f

    if-eqz v21, :cond_e

    goto :goto_8

    :cond_e
    move-object/from16 v28, v0

    move/from16 v22, v6

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move/from16 v9, p6

    move-object v11, v4

    goto/16 :goto_d

    .line 1347
    :cond_f
    :goto_8
    and-int/lit8 v5, v6, 0x4

    if-eqz v5, :cond_10

    .line 1348
    move-object/from16 v28, v0

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    const/4 v0, 0x0

    goto/16 :goto_e

    .line 1352
    :cond_10
    and-int/lit16 v5, v6, 0x3800

    or-int v16, v16, v5

    .line 1355
    if-eqz p5, :cond_11

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1356
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move/from16 v22, v6

    .end local v6    # "flags":I
    .local v22, "flags":I
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v23, 0x1000

    const/16 v24, 0x1000

    move-object/from16 v25, v4

    .end local v4    # "permission":Ljava/lang/String;
    .local v25, "permission":Ljava/lang/String;
    move-object v4, v5

    move-object/from16 v5, v25

    move-object/from16 v26, v7

    .end local v7    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v26, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v7, v23

    move/from16 v23, v8

    .end local v8    # "numSplitPerms":I
    .local v23, "numSplitPerms":I
    move/from16 v8, v24

    move-object/from16 v24, v9

    .end local v9    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .local v24, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_9

    .line 1355
    .end local v22    # "flags":I
    .end local v23    # "numSplitPerms":I
    .end local v24    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v25    # "permission":Ljava/lang/String;
    .end local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "permission":Ljava/lang/String;
    .restart local v6    # "flags":I
    .restart local v7    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "numSplitPerms":I
    .restart local v9    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    :cond_11
    move-object/from16 v25, v4

    move/from16 v22, v6

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    .line 1364
    .end local v4    # "permission":Ljava/lang/String;
    .end local v6    # "flags":I
    .end local v7    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "numSplitPerms":I
    .end local v9    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v22    # "flags":I
    .restart local v23    # "numSplitPerms":I
    .restart local v24    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v25    # "permission":Ljava/lang/String;
    .restart local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_9
    if-eqz v21, :cond_12

    .line 1365
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    and-int/lit8 v8, v22, -0x11

    move-object/from16 v5, v25

    move/from16 v7, v22

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1370
    :cond_12
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v9, v25

    .end local v25    # "permission":Ljava/lang/String;
    .local v9, "permission":Ljava/lang/String;
    invoke-virtual {v0, v9, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_13

    .line 1372
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1373
    invoke-virtual {v4, v5, v9, v10}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1376
    :cond_13
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v5, v9

    move/from16 v7, v16

    move/from16 v8, v16

    move-object/from16 v25, v11

    move-object v11, v9

    .end local v9    # "permission":Ljava/lang/String;
    .local v11, "permission":Ljava/lang/String;
    .local v25, "requestedByNonSystemPackage":[Ljava/lang/String;
    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1379
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1380
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 1379
    move/from16 v9, p6

    invoke-static {v9, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 1382
    .local v4, "uid":I
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getBackgroundPermissions()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1383
    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1384
    .local v5, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_16

    .line 1385
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1386
    .local v6, "numFgPerms":I
    const/4 v7, 0x0

    .local v7, "fgPermNum":I
    :goto_a
    if-ge v7, v6, :cond_15

    .line 1387
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1389
    .local v8, "fgPerm":Ljava/lang/String;
    move-object/from16 v27, v5

    .end local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_14

    .line 1393
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    move/from16 v28, v6

    .end local v6    # "numFgPerms":I
    .local v28, "numFgPerms":I
    const-class v6, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1394
    invoke-static {v8}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1393
    move-object/from16 v29, v8

    const/4 v8, 0x0

    .end local v8    # "fgPerm":Ljava/lang/String;
    .local v29, "fgPerm":Ljava/lang/String;
    invoke-virtual {v5, v6, v4, v8}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 1397
    goto :goto_b

    .line 1389
    .end local v28    # "numFgPerms":I
    .end local v29    # "fgPerm":Ljava/lang/String;
    .restart local v6    # "numFgPerms":I
    .restart local v8    # "fgPerm":Ljava/lang/String;
    :cond_14
    move/from16 v28, v6

    move-object/from16 v29, v8

    .line 1386
    .end local v6    # "numFgPerms":I
    .end local v8    # "fgPerm":Ljava/lang/String;
    .restart local v28    # "numFgPerms":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v27

    goto :goto_a

    .end local v27    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "numFgPerms":I
    .restart local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "numFgPerms":I
    :cond_15
    move-object/from16 v27, v5

    move/from16 v28, v6

    .end local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "numFgPerms":I
    .restart local v27    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "numFgPerms":I
    goto :goto_b

    .line 1384
    .end local v7    # "fgPermNum":I
    .end local v27    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "numFgPerms":I
    .restart local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    move-object/from16 v27, v5

    .line 1402
    .end local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b
    invoke-direct {v1, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1403
    .local v5, "bgPerm":Ljava/lang/String;
    invoke-static {v11}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1404
    .local v6, "op":Ljava/lang/String;
    if-nez v5, :cond_18

    .line 1405
    if-eqz v6, :cond_17

    .line 1407
    iget-object v7, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/AppOpsManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v4, v8}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    move-object/from16 v28, v0

    goto :goto_d

    .line 1405
    :cond_17
    const/4 v8, 0x0

    move-object/from16 v28, v0

    goto :goto_d

    .line 1412
    :cond_18
    const/4 v8, 0x0

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_19

    .line 1414
    const/4 v7, 0x0

    .local v7, "mode":I
    goto :goto_c

    .line 1416
    .end local v7    # "mode":I
    :cond_19
    const/4 v7, 0x4

    .line 1419
    .restart local v7    # "mode":I
    :goto_c
    iget-object v8, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v28, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, v4, v7}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 1445
    .end local v4    # "uid":I
    .end local v5    # "bgPerm":Ljava/lang/String;
    .end local v6    # "op":Ljava/lang/String;
    .end local v7    # "mode":I
    .end local v27    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_d
    and-int/lit8 v0, v22, 0x20

    if-eqz v0, :cond_1a

    and-int/lit8 v0, v22, 0x10

    if-eqz v0, :cond_1a

    if-nez p3, :cond_1a

    .line 1452
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v5, v11

    const/4 v0, 0x0

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_e

    .line 1445
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e

    .line 1326
    .end local v19    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v20    # "numRequestedPermissions":I
    .end local v21    # "changingGrantForSystemFixed":Z
    .end local v22    # "flags":I
    .end local v23    # "numSplitPerms":I
    .end local v24    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v25    # "requestedByNonSystemPackage":[Ljava/lang/String;
    .end local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "permission":Ljava/lang/String;
    .local v5, "sortedRequestedPermissions":[Ljava/lang/String;
    .local v6, "numRequestedPermissions":I
    .local v7, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v8, "numSplitPerms":I
    .local v9, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .local v11, "requestedByNonSystemPackage":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v28, v0

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    const/4 v0, 0x0

    move-object v11, v4

    .line 1317
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v6    # "numRequestedPermissions":I
    .end local v7    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "numSplitPerms":I
    .end local v9    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v11    # "requestedByNonSystemPackage":[Ljava/lang/String;
    .restart local v19    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v20    # "numRequestedPermissions":I
    .restart local v23    # "numSplitPerms":I
    .restart local v24    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v25    # "requestedByNonSystemPackage":[Ljava/lang/String;
    .restart local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    :goto_e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    move-object/from16 v7, v26

    move-object/from16 v0, v28

    goto/16 :goto_6

    .line 1457
    .end local v3    # "requestedPermissionNum":I
    .end local v19    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v20    # "numRequestedPermissions":I
    .end local v23    # "numSplitPerms":I
    .end local v24    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v25    # "requestedByNonSystemPackage":[Ljava/lang/String;
    .end local v26    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v6    # "numRequestedPermissions":I
    .restart local v7    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "numSplitPerms":I
    .restart local v9    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v11    # "requestedByNonSystemPackage":[Ljava/lang/String;
    :cond_1c
    return-void

    .line 1246
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v6    # "numRequestedPermissions":I
    .end local v7    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "numSplitPerms":I
    .end local v9    # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v13    # "requestedPermissions":[Ljava/lang/String;
    .end local v14    # "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "newFlags":I
    .end local v17    # "numOther":I
    .end local v18    # "numForeground":I
    .local v4, "requestedPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v25, v11

    .line 1247
    .end local v11    # "requestedByNonSystemPackage":[Ljava/lang/String;
    .local v0, "doesNotHappen":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v25    # "requestedByNonSystemPackage":[Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private grantRuntimePermissionsForSystemPackage(ILandroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 339
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 340
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 341
    .local v4, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 342
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_0

    .line 343
    goto :goto_1

    .line 345
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 346
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 350
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 352
    :cond_3
    return-void
.end method

.method private final varargs grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 385
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 387
    return-void
.end method

.method private isFixedOrUserSet(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 1195
    and-int/lit8 v0, p1, 0x17

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPermissionDangerous(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1721
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 1722
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 1723
    .end local v1    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v1

    .line 1725
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isPermissionRestricted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1713
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1714
    :catch_0
    move-exception v1

    .line 1715
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 1482
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 1483
    const/4 v0, 0x1

    return v0

    .line 1485
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1486
    return v1

    .line 1488
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1489
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1488
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1490
    .local v0, "disabledPkg":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2

    .line 1491
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1492
    .local v2, "disabledPackageAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 1494
    return v1

    .line 1496
    .end local v2    # "disabledPackageAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_3

    .line 1497
    return v1

    .line 1496
    :cond_3
    nop

    .line 1499
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 1123
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1124
    return v0

    .line 1126
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1127
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1126
    :goto_0
    return v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 1240
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1613
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1615
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

    .line 1616
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1617
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1618
    goto :goto_0

    .line 1620
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exceptions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1621
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_0

    .line 1623
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1626
    :cond_4
    return-void
.end method

.method private parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1630
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1632
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1633
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_8

    .line 1634
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1635
    goto :goto_0

    .line 1637
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exception"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_7

    .line 1638
    const/4 v1, 0x0

    const-string/jumbo v4, "package"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 1641
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1642
    .local v4, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v4, :cond_6

    .line 1644
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1646
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_3

    .line 1647
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1649
    goto :goto_0

    .line 1652
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1653
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown system package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1655
    goto :goto_0

    .line 1659
    :cond_4
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1660
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1663
    goto/16 :goto_0

    .line 1665
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 1666
    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1670
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v4    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    goto/16 :goto_0

    .line 1671
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exceptions>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1674
    :cond_8
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1678
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1680
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

    .line 1681
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1682
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1683
    goto :goto_0

    .line 1686
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_4

    .line 1687
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1689
    const-string v4, "Mandatory name attribute missing for permission tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1691
    goto :goto_0

    .line 1694
    :cond_3
    const-string v3, "fixed"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1695
    .local v3, "fixed":Z
    const-string/jumbo v4, "whitelisted"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 1697
    .local v4, "whitelisted":Z
    new-instance v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;ZZ)V

    .line 1699
    .local v5, "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1700
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "fixed":Z
    .end local v4    # "whitelisted":Z
    .end local v5    # "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    goto :goto_0

    .line 1701
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exception>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1704
    :cond_5
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 1579
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1580
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1581
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v2

    .line 1584
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1587
    .local v2, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 1588
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "DefaultPermGrantPolicy"

    if-nez v5, :cond_1

    .line 1589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " directory, ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1589
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    goto :goto_2

    .line 1593
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1594
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be read"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    goto :goto_2

    .line 1598
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    .local v5, "str":Ljava/io/InputStream;
    nop

    .line 1600
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1601
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1602
    invoke-direct {p0, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1603
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1605
    .end local v5    # "str":Ljava/io/InputStream;
    goto :goto_2

    .line 1597
    .restart local v5    # "str":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .end local v0    # "files":[Ljava/io/File;
    .end local v2    # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "str":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1603
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v2    # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "str":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    :catchall_1
    move-exception v8

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v9

    :try_start_5
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "files":[Ljava/io/File;
    .end local v2    # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    :goto_1
    throw v8
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v5    # "str":Ljava/io/InputStream;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v2    # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    :catch_0
    move-exception v5

    .line 1604
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1587
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1608
    :cond_3
    return-object v2
.end method

.method private revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1138
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v7, p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1139
    .local v8, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    return-void

    .line 1142
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v9, v1

    .line 1144
    .local v9, "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 1146
    .local v11, "permission":Ljava/lang/String;
    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1147
    goto :goto_0

    .line 1150
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 1151
    .local v12, "user":Landroid/os/UserHandle;
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1152
    invoke-virtual {v1, v11, p1, v12}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v13

    .line 1155
    .local v13, "flags":I
    and-int/lit8 v1, v13, 0x20

    if-nez v1, :cond_2

    .line 1156
    goto :goto_0

    .line 1159
    :cond_2
    and-int/lit8 v1, v13, 0x4

    if-eqz v1, :cond_3

    .line 1160
    goto :goto_0

    .line 1165
    :cond_3
    and-int/lit8 v1, v13, 0x10

    if-eqz v1, :cond_4

    if-nez p3, :cond_4

    .line 1166
    goto :goto_0

    .line 1168
    :cond_4
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v11, v12}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1178
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x20

    const/4 v5, 0x0

    move-object v2, v11

    move-object v3, p1

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1180
    .end local v11    # "permission":Ljava/lang/String;
    .end local v12    # "user":Landroid/os/UserHandle;
    .end local v13    # "flags":I
    goto :goto_0

    .line 1181
    :cond_5
    return-void
.end method


# virtual methods
.method public getProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public grantDefaultPermissions(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 312
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(I)V

    .line 317
    invoke-static {}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->getInstance()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 318
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToSystemAppsForInitializationOrUpgrading([I)V

    .line 321
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to active LUI app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1012
    return-void
.end method

.method public grantDefaultPermissionsToCarrierApp(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 921
    invoke-static {}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->getInstance()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->setCarrierPackagePermissions(I)V

    .line 922
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default browser for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1030
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 942
    if-nez p1, :cond_0

    .line 943
    return-void

    .line 945
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to sim call manager for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/util/Set;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v7, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 948
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 939
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    if-nez p1, :cond_0

    .line 960
    return-void

    .line 962
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 963
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v4, v5

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 962
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 966
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    if-nez p1, :cond_0

    .line 971
    return-void

    .line 973
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 974
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v4, v5

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 973
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 978
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-nez p1, :cond_0

    .line 984
    return-void

    .line 986
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 989
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 986
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 992
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToUssVVM(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 933
    invoke-static {}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->getInstance()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionsToUssVVM(Landroid/content/Context;I)V

    .line 934
    return-void
.end method

.method public final varargs grantPermissionsIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 436
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 437
    return-void
.end method

.method public final varargs grantSystemFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 399
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 400
    return-void
.end method

.method public final varargs grantSystemNonFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 423
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 424
    return-void
.end method

.method public revokeDefaultPermissionsFromBrowserApps([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from browser apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1038
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1039
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1040
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1037
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    :cond_1
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-nez p1, :cond_0

    .line 998
    return-void

    .line 1000
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1001
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1002
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1003
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1004
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1000
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1007
    :cond_2
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    if-nez p1, :cond_0

    .line 1017
    return-void

    .line 1019
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1020
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1021
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1022
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1019
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 356
    return-void
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 284
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 257
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 290
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSyncAdapterPackagesProvider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 296
    monitor-exit v0

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateDefaultPermsGrantedUsers([I)V
    .locals 5
    .param p1, "userIds"    # [I

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 332
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_0
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public wereDefaultPermissionsGrantedSinceBoot(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
