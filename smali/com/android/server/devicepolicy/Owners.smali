.class Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/Owners$Injector;,
        Lcom/android/server/devicepolicy/Owners$OwnerInfo;,
        Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$FileReadWriter;
    }
.end annotation


# static fields
.field private static final ATTR_CAN_ACCESS_DEVICE_IDS:Ljava/lang/String; = "canAccessDeviceIds"

.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_FREEZE_RECORD_END:Ljava/lang/String; = "end"

.field private static final ATTR_FREEZE_RECORD_START:Ljava/lang/String; = "start"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PROFILE_OWNER_OF_ORG_OWNED_DEVICE:Ljava/lang/String; = "isPoOrganizationOwnedDevice"

.field private static final ATTR_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "remoteBugreportHash"

.field private static final ATTR_REMOTE_BUGREPORT_URI:Ljava/lang/String; = "remoteBugreportUri"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final ATTR_USER_RESTRICTIONS_MIGRATED:Ljava/lang/String; = "userRestrictionsMigrated"

.field private static final DEBUG:Z = false

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner_2.xml"

.field private static final DEVICE_OWNER_XML_LEGACY:Ljava/lang/String; = "device_owner.xml"

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_INITIALIZER:Ljava/lang/String; = "device-initializer"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_DEVICE_OWNER_CONTEXT:Ljava/lang/String; = "device-owner-context"

.field private static final TAG_FREEZE_PERIOD_RECORD:Ljava/lang/String; = "freeze-record"

.field private static final TAG_PENDING_OTA_INFO:Ljava/lang/String; = "pending-ota-info"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

.field private mDeviceOwnerUserId:I

.field private final mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mProfileOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/Owners$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

.field private mSystemUpdateFreezeStart:Ljava/time/LocalDate;

.field private mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field private mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;)V
    .locals 7
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userManagerInternal"    # Landroid/os/UserManagerInternal;
    .param p3, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p4, "activityTaskManagerInternal"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p5, "activitykManagerInternal"    # Landroid/app/ActivityManagerInternal;

    .line 145
    new-instance v6, Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/Owners$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/Owners;-><init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/devicepolicy/Owners$Injector;)V

    .line 147
    return-void
.end method

.method constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/devicepolicy/Owners$Injector;)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userManagerInternal"    # Landroid/os/UserManagerInternal;
    .param p3, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p4, "activityTaskManagerInternal"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p5, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p6, "injector"    # Lcom/android/server/devicepolicy/Owners$Injector;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    .line 156
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 157
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 158
    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 159
    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 160
    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 161
    iput-object p6, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 73
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 73
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 73
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Landroid/app/admin/SystemUpdatePolicy;

    .line 73
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 73
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdateInfo;)Landroid/app/admin/SystemUpdateInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Landroid/app/admin/SystemUpdateInfo;

    .line 73
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/Owners;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 73
    iget v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/devicepolicy/Owners;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 73
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Ljava/time/LocalDate;

    .line 73
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 73
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Ljava/time/LocalDate;

    .line 73
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 73
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private pushToActivityTaskManagerLocked()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    const v2, 0x422000

    iget v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 226
    :cond_0
    const/4 v0, -0x1

    :goto_0
    nop

    .line 227
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setDeviceOwnerUid(I)V

    .line 228
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManagerInternal;->setDeviceOwnerUid(I)V

    .line 229
    return-void
.end method

.method private pushToPackageManagerLocked()V
    .locals 4

    .line 213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 214
    .local v0, "po":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 218
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 217
    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 220
    return-void
.end method

.method private readLegacyOwnerFileLocked(Ljava/io/File;)Z
    .locals 27
    .param p1, "file"    # Ljava/io/File;

    .line 553
    move-object/from16 v1, p0

    const-string v2, "DevicePolicyManagerService"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 555
    return v3

    .line 558
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v0, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 559
    .local v0, "input":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 560
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 562
    :goto_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    if-eq v7, v4, :cond_9

    .line 563
    const/4 v7, 0x2

    if-eq v8, v7, :cond_1

    .line 564
    goto :goto_0

    .line 567
    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 568
    .local v7, "tag":Ljava/lang/String;
    const-string v9, "device-owner"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v10, "package"

    const-string/jumbo v11, "name"

    const/4 v12, 0x0

    if-eqz v9, :cond_2

    .line 569
    :try_start_2
    invoke-interface {v6, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 570
    .local v14, "name":Ljava/lang/String;
    invoke-interface {v6, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 571
    .local v15, "packageName":Ljava/lang/String;
    new-instance v9, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v13, v9

    invoke-direct/range {v13 .. v19}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    iput-object v9, v1, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 574
    iput v3, v1, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 575
    :cond_2
    const-string v9, "device-initializer"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_1
    goto/16 :goto_3

    .line 577
    :cond_3
    const-string/jumbo v9, "profile-owner"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 578
    invoke-interface {v6, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 579
    .local v15, "profileOwnerPackageName":Ljava/lang/String;
    invoke-interface {v6, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 580
    .local v21, "profileOwnerName":Ljava/lang/String;
    const-string v9, "component"

    .line 581
    invoke-interface {v6, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "profileOwnerComponentStr":Ljava/lang/String;
    const-string/jumbo v10, "userId"

    invoke-interface {v6, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 583
    .local v10, "userId":I
    const/4 v11, 0x0

    .line 584
    .local v11, "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v9, :cond_5

    .line 585
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 587
    .local v12, "admin":Landroid/content/ComponentName;
    if-eqz v12, :cond_4

    .line 588
    new-instance v13, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v13

    move-object/from16 v22, v12

    invoke-direct/range {v20 .. v26}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V

    move-object v11, v13

    goto :goto_2

    .line 594
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error parsing device-owner file. Bad component name "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .end local v12    # "admin":Landroid/content/ComponentName;
    :cond_5
    :goto_2
    if-nez v11, :cond_6

    .line 599
    new-instance v12, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v12

    move-object/from16 v14, v21

    invoke-direct/range {v13 .. v19}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    move-object v11, v12

    .line 604
    :cond_6
    iget-object v12, v1, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    nop

    .end local v9    # "profileOwnerComponentStr":Ljava/lang/String;
    .end local v10    # "userId":I
    .end local v11    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .end local v15    # "profileOwnerPackageName":Ljava/lang/String;
    .end local v21    # "profileOwnerName":Ljava/lang/String;
    goto :goto_3

    :cond_7
    const-string/jumbo v9, "system-update-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 606
    invoke-static {v6}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 611
    .end local v7    # "tag":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 608
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_8
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected tag in device owner file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/devicepolicy/Owners;
    .end local p1    # "file":Ljava/io/File;
    throw v3

    .line 612
    .end local v7    # "tag":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/devicepolicy/Owners;
    .restart local p1    # "file":Ljava/io/File;
    :cond_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 615
    .end local v0    # "input":Ljava/io/InputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    goto :goto_5

    .line 613
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    const-string v3, "Error parsing device-owner file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return v4
.end method


# virtual methods
.method clearDeviceOwner()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 313
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 315
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 316
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 317
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityTaskManagerLocked()V

    .line 318
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 319
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearSystemUpdatePolicy()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 423
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1062
    const/4 v0, 0x0

    .line 1063
    .local v0, "needBlank":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    .line 1064
    const-string v1, "Device Owner: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1066
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1069
    const/4 v0, 0x1

    .line 1071
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v1, :cond_2

    .line 1072
    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1075
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System Update Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    const/4 v0, 0x1

    .line 1078
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    .line 1079
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

    .line 1080
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/Owners$OwnerInfo;>;"
    if-eqz v0, :cond_3

    .line 1081
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1083
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile Owner (User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1085
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1086
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1087
    const/4 v0, 0x1

    .line 1088
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/Owners$OwnerInfo;>;"
    goto :goto_0

    .line 1090
    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v1, :cond_6

    .line 1091
    if-eqz v0, :cond_5

    .line 1092
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1094
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending System Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    const/4 v0, 0x1

    .line 1097
    :cond_6
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_9

    .line 1098
    :cond_7
    if-eqz v0, :cond_8

    .line 1099
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1101
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System update freeze record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const/4 v0, 0x1

    .line 1105
    :cond_9
    return-void
.end method

.method getDeviceOwnerComponent()Landroid/content/ComponentName;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerFile()Ljava/io/File;
    .locals 3

    .line 1114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner_2.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportHash()Ljava/lang/String;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserId()I
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    monitor-exit v0

    return v1

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-nez v1, :cond_0

    .line 247
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 249
    :cond_0
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserRestrictionsNeedsMigration()Z
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 491
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLegacyConfigFile()Ljava/io/File;
    .locals 3

    .line 1109
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userId"    # I

    .line 371
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 373
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 374
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 1119
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "profile_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 378
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 380
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 381
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 385
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 387
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 388
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerUserRestrictionsNeedsMigration(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 498
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 500
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 501
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecord()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .locals 3

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v0, "freezePeriodRecord":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :goto_0
    const-string v1, "; end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 444
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSystemUpdateInfo()Landroid/app/admin/SystemUpdateInfo;
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    monitor-exit v0

    return-object v1

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    monitor-exit v0

    return-object v1

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasDeviceOwner()Z
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasProfileOwner(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 480
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 482
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDeviceOwnerUserId(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 474
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isProfileOwnerOfOrganizationOwnedDevice(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 396
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 398
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 399
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method load()V
    .locals 9

    .line 168
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getLegacyConfigFile()Ljava/io/File;

    move-result-object v1

    .line 172
    .local v1, "legacy":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/Owners;->readLegacyOwnerFileLocked(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 182
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 183
    .end local v5    # "userId":I
    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 188
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed to remove the legacy setting file"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 192
    :cond_1
    new-instance v4, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v4, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->readFromFileLocked()V

    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 195
    .local v5, "ui":Landroid/content/pm/UserInfo;
    new-instance v6, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, p0, v7}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->readFromFileLocked()V

    .line 196
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 198
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 199
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 200
    .restart local v5    # "ui":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 201
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_3

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "User %d has both DO and PO, which is not supported"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 203
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityTaskManagerLocked()V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 209
    .end local v1    # "legacy":Ljava/io/File;
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method markProfileOwnerOfOrganizationOwnedDevice(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 540
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 542
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 543
    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    goto :goto_0

    .line 545
    :cond_0
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "No profile owner for user %d to set as org-owned."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 546
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 545
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 549
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pushToAppOpsLocked()V
    .locals 8

    .line 664
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 665
    return-void

    .line 667
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 669
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 670
    .local v2, "owners":Landroid/util/SparseIntArray;
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const v4, 0x422000

    if-eqz v3, :cond_1

    .line 671
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v5, v5, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 674
    .local v3, "uid":I
    if-ltz v3, :cond_1

    .line 675
    iget v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 678
    .end local v3    # "uid":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v3, :cond_3

    .line 679
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "poi":I
    :goto_0
    if-ltz v3, :cond_3

    .line 680
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 681
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v6, v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 683
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 680
    invoke-virtual {v5, v6, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    .line 684
    .local v5, "uid":I
    if-ltz v5, :cond_2

    .line 685
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 679
    .end local v5    # "uid":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 689
    .end local v3    # "poi":I
    :cond_3
    const-class v3, Landroid/app/AppOpsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManagerInternal;

    .line 690
    .local v3, "appops":Landroid/app/AppOpsManagerInternal;
    if-eqz v3, :cond_5

    .line 691
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    move-object v4, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManagerInternal;->setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .end local v2    # "owners":Landroid/util/SparseIntArray;
    .end local v3    # "appops":Landroid/app/AppOpsManagerInternal;
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    nop

    .line 696
    return-void

    .line 694
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    throw v2
.end method

.method removeProfileOwner(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 335
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 338
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 339
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method saveSystemUpdateInfo(Landroid/app/admin/SystemUpdateInfo;)Z
    .locals 2
    .param p1, "newInfo"    # Landroid/app/admin/SystemUpdateInfo;

    .line 644
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 650
    :cond_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 651
    new-instance v1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V

    .line 652
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 279
    if-gez p3, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user id for device owner user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/devicepolicy/Owners;->setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "remoteBugreportUri"    # Ljava/lang/String;
    .param p2, "remoteBugreportHash"    # Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 523
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwnerUserRestrictionsMigrated()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 511
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "userRestrictionsMigrated"    # Z

    .line 294
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    new-instance v8, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V

    iput-object v8, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 301
    iput p3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 303
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 304
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 305
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityTaskManagerLocked()V

    .line 306
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 323
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v10, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 329
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setProfileOwnerUserRestrictionsMigrated(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 528
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 530
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_0

    .line 531
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 533
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 534
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSystemUpdateFreezePeriodRecord(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z
    .locals 3
    .param p1, "start"    # Ljava/time/LocalDate;
    .param p2, "end"    # Ljava/time/LocalDate;

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 457
    const/4 v0, 0x1

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 461
    const/4 v0, 0x1

    .line 463
    :cond_1
    monitor-exit v1

    .line 464
    return v0

    .line 463
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 2
    .param p1, "systemUpdatePolicy"    # Landroid/app/admin/SystemUpdatePolicy;

    .line 415
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 417
    monitor-exit v0

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    .line 701
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 702
    monitor-exit v0

    .line 703
    return-void

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method transferDeviceOwnership(Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "target"    # Landroid/content/ComponentName;

    .line 357
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    new-instance v8, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v5, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v7, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V

    iput-object v8, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 364
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 365
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityTaskManagerLocked()V

    .line 366
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 367
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method transferProfileOwner(Landroid/content/ComponentName;I)V
    .locals 10
    .param p1, "target"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 344
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 346
    .local v1, "ownerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    new-instance v9, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    iget-boolean v8, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    move-object v2, v9

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v9

    .line 350
    .local v2, "newOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 353
    .end local v1    # "ownerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .end local v2    # "newOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeDeviceOwner()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    new-instance v1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V

    .line 625
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeProfileOwner(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 629
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_0
    new-instance v1, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->writeToFileLocked()V

    .line 634
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
