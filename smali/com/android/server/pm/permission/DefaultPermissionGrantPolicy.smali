.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
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

.field private static final COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;
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

.field private static final FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.field private final NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

.field private final mContext:Landroid/content/Context;

.field private mDialerAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

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

.field private mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mLocationPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

.field private mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

.field private mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 138
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 141
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 152
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 159
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 166
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 172
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 178
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 183
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 189
    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 199
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 204
    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 209
    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 214
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 240
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    .line 307
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 308
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 320
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 324
    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->initInstance(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    .line 329
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x80

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0x49

    aput v2, v1, v3

    .line 330
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v0, [I

    const/16 v1, 0xb7

    aput v1, v0, v3

    .line 331
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->initDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)V

    .line 336
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .line 112
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 1639
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

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .locals 6

    .line 1476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1478
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1481
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1482
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1483
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1485
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1486
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1487
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1489
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1490
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1491
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1493
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1494
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1495
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1498
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.type.embedded"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1499
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1500
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1501
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1504
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    new-array v2, v5, [Ljava/io/File;

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

    .line 1177
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1179
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 1180
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 1182
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 1118
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1120
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1123
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1124
    return-object v1

    .line 1126
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1127
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1

    .line 1121
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 943
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 7
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 1137
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1139
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1140
    return-object v1

    .line 1142
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1143
    .local v2, "handlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1144
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1145
    .local v4, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1146
    .local v5, "handlerPackage":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1147
    return-object v5

    .line 1143
    .end local v4    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v5    # "handlerPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1150
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v0, "syncAdapterPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1159
    .local v1, "homeIntent":Landroid/content/Intent;
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 1160
    .local v4, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0xc2000

    invoke-virtual {v5, v1, v6, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1164
    .local v5, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_0

    .line 1165
    goto :goto_1

    .line 1168
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1169
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    .end local v4    # "syncAdapterPackageName":Ljava/lang/String;
    .end local v5    # "homeActivity":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1173
    :cond_2
    return-object v0
.end method

.method private getKnownPackages(II)[Ljava/lang/String;
    .locals 1
    .param p1, "knownPkgId"    # I
    .param p2, "userId"    # I

    .line 958
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private grantDefaultPermissionExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 19
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "userId"    # I

    .line 1434
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1436
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1441
    :try_start_0
    iget-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1442
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1444
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    const/4 v0, 0x0

    .line 1447
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 1448
    .local v11, "exceptionCount":I
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_4

    .line 1449
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 1450
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 1451
    .local v14, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v1, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/List;

    .line 1452
    .local v15, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    .line 1453
    .local v8, "permissionGrantCount":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "j":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 1454
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1455
    .local v6, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    iget-object v1, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isPermissionDangerous(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which isn\'t dangerous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPermGrantPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    move/from16 v17, v7

    move/from16 v16, v8

    goto :goto_3

    .line 1460
    :cond_1
    if-nez v0, :cond_2

    .line 1461
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    goto :goto_2

    .line 1463
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1465
    :goto_2
    iget-object v1, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1468
    iget-boolean v5, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    iget-boolean v4, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v17, v4

    move-object v4, v0

    move-object/from16 v18, v6

    .end local v6    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    .local v18, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    move/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "j":I
    .local v17, "j":I
    move/from16 v7, v16

    move/from16 v16, v8

    .end local v8    # "permissionGrantCount":I
    .local v16, "permissionGrantCount":I
    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 1453
    .end local v18    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    :goto_3
    add-int/lit8 v7, v17, 0x1

    move/from16 v8, v16

    .end local v17    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    .end local v16    # "permissionGrantCount":I
    .restart local v8    # "permissionGrantCount":I
    :cond_3
    move/from16 v17, v7

    move/from16 v16, v8

    .line 1448
    .end local v7    # "j":I
    .end local v8    # "permissionGrantCount":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v15    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1473
    .end local v12    # "i":I
    :cond_4
    return-void

    .line 1444
    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "exceptionCount":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 9
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1002
    if-nez p2, :cond_0

    .line 1003
    return-void

    .line 1005
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to sim call manager for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/util/Set;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v8, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v8, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 1008
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "dialerPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 963
    if-nez p2, :cond_0

    .line 964
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 967
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 968
    .local v0, "isPhonePermFixed":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 969
    new-array v3, v1, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v2

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_0

    .line 972
    :cond_1
    new-array v3, v1, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v2

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 974
    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v2

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 976
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 1
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1012
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 1015
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "smsPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 980
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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 983
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "useOpenWifiPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 987
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 989
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 40
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "userId"    # I

    .line 564
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default platform handlers for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 577
    .local v0, "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v11, v2

    .line 578
    .local v11, "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v12, v2

    .line 579
    .local v12, "voiceInteractionPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v13, v2

    .line 580
    .local v13, "smsAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v14, v2

    .line 581
    .local v14, "dialerAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v15, v2

    .line 582
    .local v15, "simCallManagerPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    move-object v7, v2

    .line 583
    .local v7, "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

    move-object v6, v2

    .line 584
    .local v6, "syncAdapterPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    if-eqz v12, :cond_0

    .line 587
    invoke-interface {v12, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v5, v2

    .line 588
    .local v5, "voiceInteractPackageNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 589
    invoke-interface {v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v4, v2

    .line 590
    .local v4, "locationPackageNames":[Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 591
    invoke-interface {v11, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object v3, v2

    .line 592
    .local v3, "locationExtraPackageNames":[Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 593
    invoke-interface {v13, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 594
    .local v2, "smsAppPackageNames":[Ljava/lang/String;
    :goto_3
    if-eqz v14, :cond_4

    .line 595
    invoke-interface {v14, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v17, v16

    .line 596
    .local v17, "dialerAppPackageNames":[Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 597
    invoke-interface {v15, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v18, v16

    .line 598
    .local v18, "simCallManagerPackageNames":[Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 599
    invoke-interface {v7, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    move-object/from16 v19, v16

    .line 600
    .local v19, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 601
    const-string v1, "com.android.contacts"

    invoke-interface {v6, v1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    .line 602
    .local v1, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_7
    if-eqz v6, :cond_8

    .line 603
    move-object/from16 v20, v0

    .end local v0    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v20, "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    const-string v0, "com.android.calendar"

    invoke-interface {v6, v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_8

    .end local v20    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .restart local v0    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    :cond_8
    move-object/from16 v20, v0

    .end local v0    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .restart local v20    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, v16

    .line 606
    .local v0, "calendarSyncAdapterPackages":[Ljava/lang/String;
    nop

    .line 607
    move-object/from16 v16, v6

    .end local v6    # "syncAdapterPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;
    .local v16, "syncAdapterPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;
    const/4 v6, 0x2

    invoke-direct {v8, v6, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    move-object/from16 v21, v5

    .end local v5    # "voiceInteractPackageNames":[Ljava/lang/String;
    .local v21, "voiceInteractPackageNames":[Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v23, v3

    .end local v3    # "locationExtraPackageNames":[Ljava/lang/String;
    .local v23, "locationExtraPackageNames":[Ljava/lang/String;
    new-array v3, v5, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v24, v3, v5

    .line 606
    invoke-direct {v8, v9, v6, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 612
    const/4 v6, 0x3

    invoke-direct {v8, v6, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 614
    .local v3, "verifier":Ljava/lang/String;
    move-object/from16 v26, v4

    const/4 v6, 0x1

    .end local v4    # "locationPackageNames":[Ljava/lang/String;
    .local v26, "locationPackageNames":[Ljava/lang/String;
    new-array v4, v6, [Ljava/util/Set;

    sget-object v25, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v25, v4, v5

    invoke-direct {v8, v9, v3, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 615
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v6, v5

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-direct {v8, v9, v3, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 618
    nop

    .line 619
    invoke-direct {v8, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v28, v5, v27

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v25, 0x1

    aput-object v28, v5, v25

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x2

    aput-object v28, v5, v22

    sget-object v28, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x3

    aput-object v28, v5, v6

    .line 618
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 625
    nop

    .line 626
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v24, v5, v27

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v24, v5, v6

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x2

    aput-object v24, v5, v22

    .line 625
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 630
    nop

    .line 631
    const-string v4, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v24, v5, v27

    .line 630
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 636
    nop

    .line 637
    const-string/jumbo v4, "media"

    invoke-direct {v8, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v5, v27

    .line 636
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 641
    nop

    .line 642
    const-string v4, "downloads"

    invoke-direct {v8, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v5, v27

    .line 641
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 646
    nop

    .line 647
    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v5, v27

    .line 646
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 652
    nop

    .line 653
    const-string v4, "com.android.externalstorage.documents"

    invoke-direct {v8, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v5, v27

    .line 652
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 657
    nop

    .line 658
    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v27

    .line 657
    invoke-direct {v8, v9, v4, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 662
    move-object/from16 v6, v17

    .end local v17    # "dialerAppPackageNames":[Ljava/lang/String;
    .local v6, "dialerAppPackageNames":[Ljava/lang/String;
    if-nez v6, :cond_9

    .line 663
    nop

    .line 664
    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, "dialerPackage":Ljava/lang/String;
    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 666
    .end local v4    # "dialerPackage":Ljava/lang/String;
    move-object/from16 v17, v3

    goto :goto_a

    .line 667
    :cond_9
    array-length v4, v6

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_a

    move-object/from16 v17, v3

    .end local v3    # "verifier":Ljava/lang/String;
    .local v17, "verifier":Ljava/lang/String;
    aget-object v3, v6, v5

    .line 668
    .local v3, "dialerAppPackageName":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 667
    .end local v3    # "dialerAppPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v17

    goto :goto_9

    .end local v17    # "verifier":Ljava/lang/String;
    .local v3, "verifier":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v3

    .line 673
    .end local v3    # "verifier":Ljava/lang/String;
    .restart local v17    # "verifier":Ljava/lang/String;
    :goto_a
    move-object/from16 v5, v18

    .end local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .local v5, "simCallManagerPackageNames":[Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 674
    array-length v3, v5

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_b

    move/from16 v18, v3

    aget-object v3, v5, v4

    .line 675
    .local v3, "simCallManagerPackageName":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 674
    .end local v3    # "simCallManagerPackageName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    goto :goto_b

    .line 681
    :cond_b
    move-object/from16 v4, v19

    .end local v19    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v4, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 682
    array-length v3, v4

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "simCallManagerPackageNames":[Ljava/lang/String;
    .restart local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_c
    if-ge v5, v3, :cond_d

    move/from16 v19, v3

    aget-object v3, v4, v5

    .line 683
    .local v3, "useOpenWifiPackageName":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 682
    .end local v3    # "useOpenWifiPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    goto :goto_c

    .line 681
    .end local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .restart local v5    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_c
    move-object/from16 v18, v5

    .line 689
    .end local v5    # "simCallManagerPackageNames":[Ljava/lang/String;
    .restart local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_d
    if-nez v2, :cond_e

    .line 690
    const-string v3, "android.intent.category.APP_MESSAGING"

    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, "smsPackage":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 693
    .end local v3    # "smsPackage":Ljava/lang/String;
    goto :goto_e

    .line 694
    :cond_e
    array-length v3, v2

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v3, :cond_f

    move/from16 v19, v3

    aget-object v3, v2, v5

    .line 695
    .restart local v3    # "smsPackage":Ljava/lang/String;
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 694
    .end local v3    # "smsPackage":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    goto :goto_d

    .line 700
    :cond_f
    :goto_e
    nop

    .line 701
    const-string v3, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v2

    const/4 v5, 0x1

    .end local v2    # "smsAppPackageNames":[Ljava/lang/String;
    .local v19, "smsAppPackageNames":[Ljava/lang/String;
    new-array v2, v5, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v24, v2, v27

    .line 700
    invoke-direct {v8, v9, v3, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 705
    nop

    .line 706
    const-string v2, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v3, v27

    .line 705
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 711
    nop

    .line 712
    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v5, v27

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x1

    aput-object v3, v5, v24

    .line 711
    invoke-direct {v8, v9, v2, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 717
    nop

    .line 718
    const-string v2, "com.android.calendar"

    invoke-direct {v8, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 719
    .local v5, "calendarProvider":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v2, v3, v24

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v30, v4

    const/4 v4, 0x1

    .end local v4    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v30, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    aput-object v2, v3, v4

    invoke-direct {v8, v9, v5, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 721
    new-array v2, v4, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v24

    invoke-direct {v8, v9, v5, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 725
    nop

    .line 726
    invoke-direct {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v24

    .line 725
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 730
    nop

    .line 731
    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v24

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v31, v0

    const/4 v0, 0x1

    .end local v0    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .local v31, "calendarSyncAdapterPackages":[Ljava/lang/String;
    aput-object v3, v4, v0

    .line 730
    invoke-direct {v8, v9, v2, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 736
    nop

    .line 737
    invoke-direct {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v3, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v0, v3, v24

    .line 736
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 741
    nop

    .line 742
    const-string v0, "com.android.contacts"

    invoke-direct {v8, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "contactsProviderPackage":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v24

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v8, v9, v0, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 745
    new-array v2, v4, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v24

    invoke-direct {v8, v9, v0, v10, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 748
    nop

    .line 749
    const-string v2, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v24

    .line 748
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 754
    nop

    .line 755
    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-direct {v8, v9, v2, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v22, v3, v24

    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x1

    aput-object v22, v3, v24

    .line 754
    invoke-direct {v8, v9, v2, v10, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 760
    const/4 v3, 0x4

    invoke-direct {v8, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 762
    .local v2, "browserPackage":Ljava/lang/String;
    if-nez v2, :cond_11

    .line 763
    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-virtual {v9, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 766
    const/4 v2, 0x0

    move-object/from16 v22, v2

    goto :goto_f

    .line 765
    :cond_10
    move-object/from16 v22, v2

    goto :goto_f

    .line 762
    :cond_11
    move-object/from16 v22, v2

    .line 775
    .end local v2    # "browserPackage":Ljava/lang/String;
    .local v22, "browserPackage":Ljava/lang/String;
    :goto_f
    const/4 v3, 0x1

    new-array v2, v3, [I

    const/16 v24, 0x0

    aput v3, v2, v24

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 776
    const/16 v25, 0x0

    const/16 v27, 0x1

    new-array v2, v3, [Ljava/util/Set;

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v32, v2, v24

    move-object/from16 v32, v1

    .end local v1    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .local v32, "contactsSyncAdapterPackages":[Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v33, v2

    move-object/from16 v2, p1

    move/from16 v29, v3

    move-object/from16 v34, v23

    const/16 v23, 0x4

    .end local v23    # "locationExtraPackageNames":[Ljava/lang/String;
    .local v34, "locationExtraPackageNames":[Ljava/lang/String;
    move-object/from16 v3, v22

    move-object/from16 v35, v26

    move-object/from16 v26, v30

    move/from16 v30, v4

    .end local v30    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v26, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v35, "locationPackageNames":[Ljava/lang/String;
    move/from16 v4, p2

    move-object/from16 v36, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v5

    move/from16 v39, v29

    move-object/from16 v29, v11

    move/from16 v11, v39

    .end local v5    # "calendarProvider":Ljava/lang/String;
    .end local v11    # "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v0, "voiceInteractPackageNames":[Ljava/lang/String;
    .local v21, "calendarProvider":Ljava/lang/String;
    .local v29, "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v36, "contactsProviderPackage":Ljava/lang/String;
    move/from16 v5, v25

    move-object/from16 v23, v6

    .end local v6    # "dialerAppPackageNames":[Ljava/lang/String;
    .local v23, "dialerAppPackageNames":[Ljava/lang/String;
    move/from16 v6, v27

    move-object/from16 v25, v7

    .end local v7    # "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v25, "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    move-object/from16 v7, v33

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    goto :goto_10

    .line 775
    .end local v25    # "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v29    # "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v32    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v34    # "locationExtraPackageNames":[Ljava/lang/String;
    .end local v35    # "locationPackageNames":[Ljava/lang/String;
    .end local v36    # "contactsProviderPackage":Ljava/lang/String;
    .local v0, "contactsProviderPackage":Ljava/lang/String;
    .restart local v1    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .restart local v5    # "calendarProvider":Ljava/lang/String;
    .restart local v6    # "dialerAppPackageNames":[Ljava/lang/String;
    .restart local v7    # "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .restart local v11    # "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v21, "voiceInteractPackageNames":[Ljava/lang/String;
    .local v23, "locationExtraPackageNames":[Ljava/lang/String;
    .local v26, "locationPackageNames":[Ljava/lang/String;
    .restart local v30    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    :cond_12
    move-object/from16 v36, v0

    move-object/from16 v32, v1

    move-object/from16 v25, v7

    move-object/from16 v29, v11

    move-object/from16 v0, v21

    move-object/from16 v34, v23

    move-object/from16 v35, v26

    move-object/from16 v26, v30

    move v11, v3

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    .line 783
    .end local v1    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v5    # "calendarProvider":Ljava/lang/String;
    .end local v6    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v7    # "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v11    # "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v30    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v0, "voiceInteractPackageNames":[Ljava/lang/String;
    .local v21, "calendarProvider":Ljava/lang/String;
    .local v23, "dialerAppPackageNames":[Ljava/lang/String;
    .restart local v25    # "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .local v26, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .restart local v29    # "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .restart local v32    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .restart local v34    # "locationExtraPackageNames":[Ljava/lang/String;
    .restart local v35    # "locationPackageNames":[Ljava/lang/String;
    .restart local v36    # "contactsProviderPackage":Ljava/lang/String;
    :goto_10
    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz v0, :cond_14

    .line 784
    array-length v3, v0

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v3, :cond_13

    aget-object v4, v0, v5

    .line 785
    .local v4, "voiceInteractPackageName":Ljava/lang/String;
    new-array v6, v1, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v7, v6, v24

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v6, v11

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v1, 0x2

    aput-object v7, v6, v1

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x3

    aput-object v7, v6, v11

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x4

    aput-object v7, v6, v11

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v6, v2

    invoke-direct {v8, v9, v4, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 784
    .end local v4    # "voiceInteractPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x6

    const/4 v11, 0x1

    goto :goto_11

    :cond_13
    const/4 v1, 0x2

    const/4 v11, 0x4

    goto :goto_12

    .line 783
    :cond_14
    const/4 v1, 0x2

    const/4 v11, 0x4

    .line 791
    :goto_12
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 793
    nop

    .line 794
    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 793
    invoke-direct {v8, v9, v3, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 800
    :cond_15
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 802
    .local v3, "voiceRecoIntent":Landroid/content/Intent;
    nop

    .line 803
    invoke-direct {v8, v9, v3, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 802
    invoke-direct {v8, v9, v4, v10, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 807
    const/16 v5, 0x8

    move-object/from16 v6, v35

    .end local v35    # "locationPackageNames":[Ljava/lang/String;
    .local v6, "locationPackageNames":[Ljava/lang/String;
    if-eqz v6, :cond_16

    .line 808
    array-length v7, v6

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v7, :cond_16

    aget-object v2, v6, v4

    .line 809
    .local v2, "packageName":Ljava/lang/String;
    new-array v11, v5, [Ljava/util/Set;

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v35, v11, v24

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v28, 0x1

    aput-object v35, v11, v28

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v35, v11, v1

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v38, 0x3

    aput-object v35, v11, v38

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v37, 0x4

    aput-object v35, v11, v37

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v33, 0x5

    aput-object v35, v11, v33

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x6

    aput-object v35, v11, v27

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v30, 0x7

    aput-object v35, v11, v30

    invoke-direct {v8, v9, v2, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 813
    new-array v11, v1, [Ljava/util/Set;

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v35, v11, v24

    sget-object v35, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const/16 v28, 0x1

    aput-object v35, v11, v28

    invoke-direct {v8, v9, v2, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 808
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x5

    const/4 v11, 0x4

    goto :goto_13

    .line 817
    :cond_16
    move-object/from16 v2, v34

    .end local v34    # "locationExtraPackageNames":[Ljava/lang/String;
    .local v2, "locationExtraPackageNames":[Ljava/lang/String;
    if-eqz v2, :cond_17

    .line 819
    array-length v4, v2

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v4, :cond_17

    aget-object v11, v2, v7

    .line 820
    .local v11, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v1, v5, v24

    invoke-direct {v8, v9, v11, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 819
    .end local v11    # "packageName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x2

    const/16 v5, 0x8

    goto :goto_14

    .line 827
    :cond_17
    const/4 v1, 0x1

    new-array v4, v1, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 828
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v4, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x2

    aput-object v1, v4, v5

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x3

    aput-object v1, v4, v5

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x4

    aput-object v1, v4, v5

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x5

    aput-object v1, v4, v5

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x6

    aput-object v1, v4, v5

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x7

    aput-object v1, v4, v5

    const-string v1, "com.google.android.gms"

    invoke-direct {v8, v9, v1, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 832
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v1, "com.google.android.gms"

    invoke-direct {v8, v9, v1, v10, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 838
    :cond_18
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string v5, "foo.mp3"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 840
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "audio/mpeg"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 841
    .local v1, "musicIntent":Landroid/content/Intent;
    nop

    .line 842
    invoke-direct {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    .line 841
    invoke-direct {v8, v9, v4, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 846
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 848
    const-string v5, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 849
    .local v4, "homeIntent":Landroid/content/Intent;
    nop

    .line 850
    invoke-direct {v8, v9, v4, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v27, v0

    const/4 v0, 0x0

    .end local v0    # "voiceInteractPackageNames":[Ljava/lang/String;
    .local v27, "voiceInteractPackageNames":[Ljava/lang/String;
    aput-object v7, v11, v0

    .line 849
    invoke-direct {v8, v9, v5, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 854
    iget-object v5, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "android.hardware.type.watch"

    invoke-virtual {v5, v7, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 857
    const-string v5, "android.intent.category.HOME_MAIN"

    invoke-direct {v8, v9, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 859
    .local v5, "wearPackage":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v11, v7, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v11, v0

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x1

    aput-object v7, v11, v0

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x2

    aput-object v7, v11, v0

    invoke-direct {v8, v9, v5, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 861
    const/4 v7, 0x1

    new-array v11, v7, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v7, v11, v24

    invoke-direct {v8, v9, v5, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 864
    nop

    .line 865
    const-string v7, "com.android.fitness.TRACK"

    invoke-direct {v8, v9, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-array v11, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v0, v11, v24

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v30, v1

    const/4 v1, 0x1

    .end local v1    # "musicIntent":Landroid/content/Intent;
    .local v30, "musicIntent":Landroid/content/Intent;
    aput-object v0, v11, v1

    .line 864
    invoke-direct {v8, v9, v7, v10, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_15

    .line 854
    .end local v5    # "wearPackage":Ljava/lang/String;
    .end local v30    # "musicIntent":Landroid/content/Intent;
    .restart local v1    # "musicIntent":Landroid/content/Intent;
    :cond_19
    move/from16 v24, v0

    move-object/from16 v30, v1

    const/4 v1, 0x1

    .line 870
    .end local v1    # "musicIntent":Landroid/content/Intent;
    .restart local v30    # "musicIntent":Landroid/content/Intent;
    :goto_15
    new-array v0, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v0, v24

    const-string v1, "com.android.printspooler"

    invoke-direct {v8, v9, v1, v10, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 874
    nop

    .line 875
    const-string v0, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v5, v24

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v1, v5, v7

    .line 874
    invoke-direct {v8, v9, v0, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 880
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    const-string/jumbo v1, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 882
    .local v0, "nfcTagIntent":Landroid/content/Intent;
    nop

    .line 883
    invoke-direct {v8, v9, v0, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x1

    aput-object v5, v7, v11

    .line 882
    invoke-direct {v8, v9, v1, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 887
    nop

    .line 888
    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v11, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v7, v5, v24

    .line 887
    invoke-direct {v8, v9, v1, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 893
    new-array v1, v11, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v1, v24

    const-string v5, "com.android.companiondevicemanager"

    invoke-direct {v8, v9, v5, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 898
    nop

    .line 899
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v8, v9, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v11, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v24

    .line 898
    invoke-direct {v8, v9, v1, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 905
    const/4 v1, 0x5

    invoke-direct {v8, v1, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v5, :cond_1a

    aget-object v11, v1, v7

    .line 906
    .local v11, "textClassifierPackage":Ljava/lang/String;
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    const/4 v0, 0x2

    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .local v33, "nfcTagIntent":Landroid/content/Intent;
    new-array v1, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v0, v1, v24

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v28, 0x1

    aput-object v0, v1, v28

    invoke-direct {v8, v9, v11, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 905
    .end local v11    # "textClassifierPackage":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    goto :goto_16

    .line 911
    .end local v33    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v0    # "nfcTagIntent":Landroid/content/Intent;
    :cond_1a
    move-object/from16 v33, v0

    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v33    # "nfcTagIntent":Landroid/content/Intent;
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 912
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getContentCaptureServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "contentCapturePackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 914
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v5, v1, v7

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v5, v1, v7

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x2

    aput-object v5, v1, v7

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x3

    aput-object v5, v1, v7

    invoke-direct {v8, v9, v0, v10, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 920
    :cond_1b
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 921
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "attentionServicePackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 923
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/util/Set;

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v11, v7, v24

    invoke-direct {v8, v9, v1, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_17

    .line 922
    :cond_1c
    const/4 v5, 0x1

    const/16 v24, 0x0

    .line 929
    :goto_17
    new-array v7, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v7, v24

    const-string v5, "com.android.sharedstoragebackup"

    invoke-direct {v8, v9, v5, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 933
    iget-object v5, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 934
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 935
    .local v5, "systemCaptionsServicePackageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 936
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/util/Set;

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x0

    aput-object v11, v7, v24

    invoke-direct {v8, v9, v5, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 939
    :cond_1d
    return-void

    .line 584
    .end local v0    # "contentCapturePackageName":Ljava/lang/String;
    .end local v1    # "attentionServicePackageName":Ljava/lang/String;
    .end local v2    # "locationExtraPackageNames":[Ljava/lang/String;
    .end local v3    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v4    # "homeIntent":Landroid/content/Intent;
    .end local v5    # "systemCaptionsServicePackageName":Ljava/lang/String;
    .end local v6    # "locationPackageNames":[Ljava/lang/String;
    .end local v12    # "voiceInteractionPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v13    # "smsAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v14    # "dialerAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v15    # "simCallManagerPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v16    # "syncAdapterPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;
    .end local v17    # "verifier":Ljava/lang/String;
    .end local v18    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v19    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v20    # "locationPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v21    # "calendarProvider":Ljava/lang/String;
    .end local v22    # "browserPackage":Ljava/lang/String;
    .end local v23    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v25    # "useOpenWifiAppPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v26    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v27    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v29    # "locationExtraPackagesProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;
    .end local v30    # "musicIntent":Landroid/content/Intent;
    .end local v31    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v32    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v33    # "nfcTagIntent":Landroid/content/Intent;
    .end local v36    # "contactsProviderPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final varargs grantIgnoringSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 7
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 478
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 480
    return-void
.end method

.method private final varargs grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
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

    .line 950
    .local p2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "permissions":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    return-void

    .line 951
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 952
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 953
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V
    .locals 12
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .param p4, "systemFixed"    # Z
    .param p5, "ignoreSystemPackage"    # Z
    .param p6, "whitelistRestrictedPermissions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "IZZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 552
    .local p7, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p7

    if-nez p2, :cond_0

    .line 553
    return-void

    .line 555
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    array-length v9, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v0, v10

    .line 557
    .local v11, "permissionGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v11

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 556
    .end local v11    # "permissionGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 561
    :cond_1
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V
    .locals 17
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
    .param p2, "userId"    # I

    .line 436
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to platform components for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b000

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    .line 439
    .local v10, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 440
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 441
    goto :goto_0

    .line 445
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->addPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 447
    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 449
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    goto :goto_0

    .line 452
    :cond_2
    invoke-direct {v6, v7, v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V

    .line 453
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 456
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 457
    .local v12, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_4

    .line 458
    invoke-static {v12}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 459
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 460
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-nez v0, :cond_5

    .line 461
    goto :goto_1

    .line 463
    :cond_5
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v14, v13

    move v15, v9

    :goto_2
    if-ge v15, v14, :cond_7

    aget-object v5, v13, v15

    .line 464
    .local v5, "permission":Ljava/lang/String;
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    nop

    .line 466
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v16, v5

    .end local v5    # "permission":Ljava/lang/String;
    .local v16, "permission":Ljava/lang/String;
    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_3

    .line 464
    .end local v16    # "permission":Ljava/lang/String;
    .restart local v5    # "permission":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v5

    .line 463
    .end local v5    # "permission":Ljava/lang/String;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 471
    .end local v12    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_7
    goto :goto_1

    .line 473
    :cond_8
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V
    .locals 9
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "systemFixed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "IZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 522
    .local p5, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    return-void

    .line 525
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 528
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 6
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 515
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 517
    return-void
.end method

.method private grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .locals 8
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p4, "systemFixed"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1187
    .local p3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 1189
    return-void
.end method

.method private grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .locals 29
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p4, "systemFixed"    # Z
    .param p5, "ignoreSystemPackage"    # Z
    .param p6, "whitelistRestrictedPermissions"    # Z
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZI)V"
        }
    .end annotation

    .line 1259
    .local p3, "permissionsWithoutSplits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 1260
    .local v10, "user":Landroid/os/UserHandle;
    if-nez v8, :cond_0

    .line 1261
    return-void

    .line 1264
    :cond_0
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1265
    .local v1, "requestedPermissions":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1266
    return-void

    .line 1271
    :cond_1
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1273
    .local v11, "requestedByNonSystemPackage":[Ljava/lang/String;
    array-length v12, v1

    .line 1274
    .local v12, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_3

    .line 1275
    aget-object v3, v1, v2

    invoke-static {v11, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1276
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1274
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1279
    .end local v2    # "i":I
    :cond_3
    sget-object v2, Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 1281
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v13, v2

    .line 1282
    .local v13, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1284
    .local v14, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v2, 0x20

    .line 1285
    .local v2, "newFlags":I
    if-eqz p4, :cond_4

    .line 1286
    or-int/lit8 v2, v2, 0x10

    .line 1290
    :cond_4
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v4, Landroid/permission/PermissionManager;

    .line 1291
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager;

    invoke-virtual {v3}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v15

    .line 1292
    .local v15, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 1293
    .local v6, "numSplitPerms":I
    const/4 v3, 0x0

    .local v3, "splitPermNum":I
    :goto_1
    if-ge v3, v6, :cond_7

    .line 1294
    nop

    .line 1295
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1297
    .local v4, "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    if-eqz v14, :cond_5

    iget v5, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1298
    move/from16 v16, v2

    .end local v2    # "newFlags":I
    .local v16, "newFlags":I
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v2

    if-ge v5, v2, :cond_6

    .line 1299
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1300
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1297
    .end local v16    # "newFlags":I
    .restart local v2    # "newFlags":I
    :cond_5
    move/from16 v16, v2

    .line 1293
    .end local v2    # "newFlags":I
    .end local v4    # "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v16    # "newFlags":I
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto :goto_1

    .end local v16    # "newFlags":I
    .restart local v2    # "newFlags":I
    :cond_7
    move/from16 v16, v2

    .line 1304
    .end local v2    # "newFlags":I
    .end local v3    # "splitPermNum":I
    .restart local v16    # "newFlags":I
    const/4 v2, 0x0

    .line 1312
    .local v2, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p5, :cond_9

    if-eqz v14, :cond_9

    .line 1314
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1315
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1316
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1315
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1317
    .local v3, "disabledPkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_9

    .line 1318
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1319
    return-void

    .line 1321
    :cond_8
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1322
    new-instance v4, Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    .line 1323
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v5, v1

    goto :goto_3

    .line 1328
    .end local v3    # "disabledPkg":Landroid/content/pm/PackageInfo;
    :cond_9
    move-object v5, v1

    move-object v4, v2

    .end local v1    # "requestedPermissions":[Ljava/lang/String;
    .end local v2    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "requestedPermissions":[Ljava/lang/String;
    :goto_3
    array-length v3, v5

    .line 1332
    .local v3, "numRequestedPermissions":I
    new-array v2, v3, [Ljava/lang/String;

    .line 1333
    .local v2, "sortedRequestedPermissions":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1334
    .local v1, "numForeground":I
    const/16 v17, 0x0

    .line 1335
    .local v17, "numOther":I
    const/16 v18, 0x0

    move/from16 v28, v17

    move/from16 v17, v1

    move/from16 v1, v18

    move/from16 v18, v28

    .local v1, "i":I
    .local v17, "numForeground":I
    .local v18, "numOther":I
    :goto_4
    if-ge v1, v3, :cond_b

    .line 1336
    move/from16 v19, v6

    .end local v6    # "numSplitPerms":I
    .local v19, "numSplitPerms":I
    aget-object v6, v5, v1

    .line 1337
    .local v6, "permission":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 1338
    aput-object v6, v2, v17

    .line 1339
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1341
    :cond_a
    add-int/lit8 v20, v3, -0x1

    sub-int v20, v20, v18

    aput-object v6, v2, v20

    .line 1343
    add-int/lit8 v18, v18, 0x1

    .line 1335
    .end local v6    # "permission":Ljava/lang/String;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v19

    goto :goto_4

    .end local v19    # "numSplitPerms":I
    .local v6, "numSplitPerms":I
    :cond_b
    move/from16 v19, v6

    .line 1347
    .end local v1    # "i":I
    .end local v6    # "numSplitPerms":I
    .restart local v19    # "numSplitPerms":I
    const/4 v1, 0x0

    move v6, v1

    .local v6, "requestedPermissionNum":I
    :goto_6
    if-ge v6, v3, :cond_17

    .line 1349
    aget-object v1, v5, v6

    .line 1353
    .local v1, "permission":Ljava/lang/String;
    if-eqz v4, :cond_c

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 1354
    move-object/from16 v22, v2

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v20, v5

    move/from16 v24, v6

    goto/16 :goto_b

    .line 1357
    :cond_c
    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1358
    move-object/from16 v20, v5

    .end local v5    # "requestedPermissions":[Ljava/lang/String;
    .local v20, "requestedPermissions":[Ljava/lang/String;
    invoke-virtual {v7, v1, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v5

    .line 1369
    .local v5, "flags":I
    if-eqz p4, :cond_d

    and-int/lit8 v21, v5, 0x10

    if-eqz v21, :cond_d

    const/16 v21, 0x1

    goto :goto_7

    :cond_d
    const/16 v21, 0x0

    .line 1371
    .local v21, "changingGrantForSystemFixed":Z
    :goto_7
    move-object/from16 v22, v2

    .end local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .local v22, "sortedRequestedPermissions":[Ljava/lang/String;
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->changingGrantForSystemFixedinSpecialScenes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1373
    const/16 v21, 0x1

    .line 1384
    :cond_e
    invoke-direct {v0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isFixedOrUserSet(I)Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez p5, :cond_10

    if-eqz v21, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v25, v1

    move/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v23, v5

    move/from16 v24, v6

    goto/16 :goto_a

    .line 1389
    :cond_10
    :goto_8
    and-int/lit8 v2, v5, 0x4

    if-eqz v2, :cond_11

    .line 1390
    move/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v24, v6

    goto/16 :goto_b

    .line 1394
    :cond_11
    and-int/lit16 v2, v5, 0x3800

    or-int v16, v16, v2

    .line 1397
    if-eqz p6, :cond_12

    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1398
    const/16 v23, 0x1000

    const/16 v24, 0x1000

    move-object v2, v1

    .end local v1    # "permission":Ljava/lang/String;
    .local v2, "permission":Ljava/lang/String;
    move-object/from16 v1, p1

    move-object/from16 v25, v2

    .end local v2    # "permission":Ljava/lang/String;
    .local v25, "permission":Ljava/lang/String;
    move/from16 v26, v3

    .end local v3    # "numRequestedPermissions":I
    .local v26, "numRequestedPermissions":I
    move-object/from16 v3, p2

    move-object/from16 v27, v4

    .end local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v27, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v4, v23

    move/from16 v23, v5

    .end local v5    # "flags":I
    .local v23, "flags":I
    move/from16 v5, v24

    move/from16 v24, v6

    .end local v6    # "requestedPermissionNum":I
    .local v24, "requestedPermissionNum":I
    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_9

    .line 1397
    .end local v23    # "flags":I
    .end local v24    # "requestedPermissionNum":I
    .end local v25    # "permission":Ljava/lang/String;
    .end local v26    # "numRequestedPermissions":I
    .end local v27    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v3    # "numRequestedPermissions":I
    .restart local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "flags":I
    .restart local v6    # "requestedPermissionNum":I
    :cond_12
    move-object/from16 v25, v1

    move/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v23, v5

    move/from16 v24, v6

    .line 1405
    .end local v1    # "permission":Ljava/lang/String;
    .end local v3    # "numRequestedPermissions":I
    .end local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "flags":I
    .end local v6    # "requestedPermissionNum":I
    .restart local v23    # "flags":I
    .restart local v24    # "requestedPermissionNum":I
    .restart local v25    # "permission":Ljava/lang/String;
    .restart local v26    # "numRequestedPermissions":I
    .restart local v27    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_9
    if-eqz v21, :cond_13

    .line 1406
    and-int/lit8 v5, v23, -0x11

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p2

    move/from16 v4, v23

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1410
    :cond_13
    move-object/from16 v6, v25

    .end local v25    # "permission":Ljava/lang/String;
    .local v6, "permission":Ljava/lang/String;
    invoke-virtual {v7, v6, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1411
    invoke-virtual {v7, v6, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 1414
    :cond_14
    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v16

    move-object/from16 v25, v6

    .end local v6    # "permission":Ljava/lang/String;
    .restart local v25    # "permission":Ljava/lang/String;
    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1419
    :goto_a
    and-int/lit8 v1, v23, 0x20

    if-eqz v1, :cond_16

    and-int/lit8 v1, v23, 0x10

    if-eqz v1, :cond_16

    if-nez p4, :cond_16

    .line 1426
    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p2

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_b

    .line 1357
    .end local v20    # "requestedPermissions":[Ljava/lang/String;
    .end local v21    # "changingGrantForSystemFixed":Z
    .end local v22    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v23    # "flags":I
    .end local v24    # "requestedPermissionNum":I
    .end local v25    # "permission":Ljava/lang/String;
    .end local v26    # "numRequestedPermissions":I
    .end local v27    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "permission":Ljava/lang/String;
    .local v2, "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v3    # "numRequestedPermissions":I
    .restart local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "requestedPermissions":[Ljava/lang/String;
    .local v6, "requestedPermissionNum":I
    :cond_15
    move-object/from16 v25, v1

    move-object/from16 v22, v2

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v20, v5

    move/from16 v24, v6

    .line 1348
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v3    # "numRequestedPermissions":I
    .end local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "requestedPermissions":[Ljava/lang/String;
    .end local v6    # "requestedPermissionNum":I
    .restart local v20    # "requestedPermissions":[Ljava/lang/String;
    .restart local v22    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v24    # "requestedPermissionNum":I
    .restart local v26    # "numRequestedPermissions":I
    .restart local v27    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    :goto_b
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v5, v20

    move-object/from16 v2, v22

    move/from16 v3, v26

    move-object/from16 v4, v27

    .end local v24    # "requestedPermissionNum":I
    .restart local v6    # "requestedPermissionNum":I
    goto/16 :goto_6

    .line 1431
    .end local v6    # "requestedPermissionNum":I
    .end local v20    # "requestedPermissions":[Ljava/lang/String;
    .end local v22    # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v26    # "numRequestedPermissions":I
    .end local v27    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v3    # "numRequestedPermissions":I
    .restart local v4    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "requestedPermissions":[Ljava/lang/String;
    :cond_17
    return-void
.end method

.method private grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 415
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 416
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 417
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 418
    .local v5, "perm":Landroid/content/pm/PermissionInfo;
    if-nez v5, :cond_0

    .line 419
    goto :goto_1

    .line 421
    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 426
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 428
    :cond_3
    return-void
.end method

.method private final varargs grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 6
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 485
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 487
    return-void
.end method

.method private isFixedOrUserSet(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 1250
    and-int/lit8 v0, p1, 0x17

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 1279
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 4
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
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

    .line 1544
    .local p3, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1546
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1547
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1548
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1549
    goto :goto_0

    .line 1551
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exceptions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1552
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_0

    .line 1554
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1557
    :cond_4
    return-void
.end method

.method private parseExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 8
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
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

    .line 1562
    .local p3, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1564
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1565
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_8

    .line 1566
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1567
    goto :goto_0

    .line 1569
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exception"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_7

    .line 1570
    const/4 v1, 0x0

    const-string/jumbo v4, "package"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1572
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 1573
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1574
    .local v4, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v4, :cond_6

    .line 1576
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1578
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_3

    .line 1579
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1581
    goto :goto_0

    .line 1584
    :cond_3
    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown system package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1587
    goto :goto_0

    .line 1591
    :cond_4
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1592
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1595
    goto/16 :goto_0

    .line 1597
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 1598
    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1602
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v4    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    goto/16 :goto_0

    .line 1603
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exceptions>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1606
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

    .line 1610
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1612
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

    .line 1613
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1614
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1615
    goto :goto_0

    .line 1618
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_4

    .line 1619
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1620
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1621
    const-string v4, "Mandatory name attribute missing for permission tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1623
    goto :goto_0

    .line 1626
    :cond_3
    const-string v3, "fixed"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1627
    .local v3, "fixed":Z
    const-string/jumbo v4, "whitelisted"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 1629
    .local v4, "whitelisted":Z
    new-instance v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;ZZ)V

    .line 1631
    .local v5, "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "fixed":Z
    .end local v4    # "whitelisted":Z
    .end local v5    # "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    goto :goto_0

    .line 1633
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

    .line 1636
    :cond_5
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .locals 9
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 1509
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1510
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1511
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v2

    .line 1514
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1517
    .local v2, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 1518
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "DefaultPermGrantPolicy"

    if-nez v5, :cond_1

    .line 1519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " directory, ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1519
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    goto :goto_2

    .line 1523
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1524
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

    .line 1525
    goto :goto_2

    .line 1528
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    .local v5, "str":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1531
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1532
    invoke-direct {p0, p1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1535
    .end local v5    # "str":Ljava/io/InputStream;
    goto :goto_2

    .line 1527
    .restart local v5    # "str":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "files":[Ljava/io/File;
    .end local v2    # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .end local p1    # "pm":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    :goto_1
    throw v7
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1533
    .end local v5    # "str":Ljava/io/InputStream;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v2    # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .restart local p1    # "pm":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    :catch_0
    move-exception v5

    .line 1534
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1517
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1538
    :cond_3
    return-object v2
.end method

.method private revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V
    .locals 13
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "systemFixed"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1193
    .local p3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v6, p1

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 1194
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_6

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1197
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    .line 1199
    .local v8, "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1201
    .local v10, "permission":Ljava/lang/String;
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1202
    goto :goto_0

    .line 1205
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 1206
    .local v11, "user":Landroid/os/UserHandle;
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p1, v10, v0, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v12

    .line 1210
    .local v12, "flags":I
    and-int/lit8 v0, v12, 0x20

    if-nez v0, :cond_2

    .line 1211
    goto :goto_0

    .line 1214
    :cond_2
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_3

    .line 1215
    goto :goto_0

    .line 1220
    :cond_3
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 1221
    goto :goto_0

    .line 1223
    :cond_4
    invoke-virtual {p1, v10, v7, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 1233
    const/16 v3, 0x20

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, v10

    move-object v2, v7

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 1235
    .end local v10    # "permission":Ljava/lang/String;
    .end local v11    # "user":Landroid/os/UserHandle;
    .end local v12    # "flags":I
    goto :goto_0

    .line 1236
    :cond_5
    return-void

    .line 1195
    .end local v8    # "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 388
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;)V

    .line 390
    .local v0, "pm":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V

    .line 391
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 392
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 396
    invoke-static {}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->getInstance()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToSystemApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V

    .line 401
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->apply()V

    .line 405
    new-array v2, v1, [I

    const/16 v4, 0x80

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v1, [I

    const/16 v4, 0x49

    aput v4, v2, v3

    .line 406
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v1, v1, [I

    const/16 v2, 0xb7

    aput v2, v1, v3

    .line 407
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    invoke-static {p1}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->grantCarrierPackageDefPermissions(I)V

    .line 411
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to active LUI app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1075
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default browser for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1095
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 997
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    .line 998
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantIgnoringSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 994
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    if-nez p1, :cond_0

    .line 1020
    return-void

    .line 1022
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1023
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1022
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1026
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    if-nez p1, :cond_0

    .line 1031
    return-void

    .line 1033
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1034
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1033
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    if-nez p1, :cond_0

    .line 1044
    return-void

    .line 1046
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1049
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1046
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1052
    :cond_1
    return-void
.end method

.method public final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V
    .locals 8
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "ignoreSystemPackage"    # Z
    .param p5, "whitelistRestrictedPermissions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "IZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 543
    .local p6, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 546
    return-void
.end method

.method public final varargs grantSystemFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 6
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 507
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 509
    return-void
.end method

.method public final varargs grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 0
    .param p1, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 499
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 500
    return-void
.end method

.method public revokeDefaultPermissionsFromBrowserApps([Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from browser apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v8, p1, v1

    .line 1103
    .local v8, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1104
    .local v9, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1102
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    if-nez p1, :cond_0

    .line 1058
    return-void

    .line 1060
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p1, v1

    .line 1061
    .local v8, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1062
    .local v9, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1063
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1065
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1060
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    :cond_2
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    if-nez p1, :cond_0

    .line 1080
    return-void

    .line 1082
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p1, v1

    .line 1083
    .local v8, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1084
    .local v9, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1082
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1089
    :cond_2
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    return-void
.end method

.method public setDialerAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 339
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 370
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSmsAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 358
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

    .line 382
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

    .line 384
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 376
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 352
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
