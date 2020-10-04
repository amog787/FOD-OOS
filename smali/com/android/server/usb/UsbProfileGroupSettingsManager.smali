.class Lcom/android/server/usb/UsbProfileGroupSettingsManager;
.super Ljava/lang/Object;
.source "UsbProfileGroupSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final sSingleUserSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private mIsWriteSettingsScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

.field private final mParentUser:Landroid/os/UserHandle;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    const-class v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbHandlerManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "settingsManager"    # Lcom/android/server/usb/UsbSettingsManager;
    .param p4, "usbResolveActivityManager"    # Lcom/android/server/usb/UsbHandlerManager;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    .line 196
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    .line 217
    :try_start_0
    const-string v0, "android"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .local v0, "parentUserContext":Landroid/content/Context;
    nop

    .line 222
    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 224
    iput-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 225
    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 227
    iput-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 228
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    .line 229
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "usb_device_manager.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "usb-state"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDisablePermissionDialogs:Z

    .line 235
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 236
    :try_start_1
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->upgradeSingleUserLocked()V

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readSettingsLocked()V

    .line 240
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 243
    new-instance v1, Lcom/android/server/usb/MtpNotificationManager;

    new-instance v2, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;

    invoke-direct {v2, p0}, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    invoke-direct {v1, v0, v2}, Lcom/android/server/usb/MtpNotificationManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    .line 248
    iput-object p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    .line 249
    return-void

    .line 240
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 218
    .end local v0    # "parentUserContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 81
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 81
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .param p1, "x1"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/AccessoryFilter;)Z
    .locals 5
    .param p1, "userPackage"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    .param p2, "filter"    # Landroid/hardware/usb/AccessoryFilter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v0, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/AccessoryFilter;

    .line 962
    .local v2, "accessory":Landroid/hardware/usb/AccessoryFilter;
    invoke-virtual {p2, v2}, Landroid/hardware/usb/AccessoryFilter;->contains(Landroid/hardware/usb/AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 963
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 964
    .local v3, "currentMatch":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 965
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v2    # "accessory":Landroid/hardware/usb/AccessoryFilter;
    .end local v3    # "currentMatch":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    :cond_0
    goto :goto_0

    .line 970
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 971
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/AccessoryFilter;

    .line 972
    .local v2, "keyToRemove":Landroid/hardware/usb/AccessoryFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .end local v2    # "keyToRemove":Landroid/hardware/usb/AccessoryFilter;
    goto :goto_1

    .line 976
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/DeviceFilter;)Z
    .locals 5
    .param p1, "userPackage"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    .param p2, "filter"    # Landroid/hardware/usb/DeviceFilter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v0, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/DeviceFilter;

    .line 938
    .local v2, "device":Landroid/hardware/usb/DeviceFilter;
    invoke-virtual {p2, v2}, Landroid/hardware/usb/DeviceFilter;->contains(Landroid/hardware/usb/DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 939
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 940
    .local v3, "currentMatch":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 941
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    .end local v2    # "device":Landroid/hardware/usb/DeviceFilter;
    .end local v3    # "currentMatch":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    :cond_0
    goto :goto_0

    .line 946
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 947
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/DeviceFilter;

    .line 948
    .local v2, "keyToRemove":Landroid/hardware/usb/DeviceFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .end local v2    # "keyToRemove":Landroid/hardware/usb/DeviceFilter;
    goto :goto_1

    .line 952
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private clearPackageDefaultsLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Z
    .locals 7
    .param p1, "userPackage"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, "cleared":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1160
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1162
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v4, v3, [Landroid/hardware/usb/DeviceFilter;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/usb/DeviceFilter;

    .line 1163
    .local v2, "keys":[Landroid/hardware/usb/DeviceFilter;
    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 1164
    aget-object v5, v2, v4

    .line 1165
    .local v5, "key":Landroid/hardware/usb/DeviceFilter;
    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1166
    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const/4 v0, 0x1

    .line 1163
    .end local v5    # "key":Landroid/hardware/usb/DeviceFilter;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1171
    .end local v2    # "keys":[Landroid/hardware/usb/DeviceFilter;
    .end local v4    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1173
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 1174
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v4, v3, [Landroid/hardware/usb/AccessoryFilter;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/usb/AccessoryFilter;

    .line 1175
    .local v2, "keys":[Landroid/hardware/usb/AccessoryFilter;
    nop

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1176
    aget-object v4, v2, v3

    .line 1177
    .local v4, "key":Landroid/hardware/usb/AccessoryFilter;
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1178
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const/4 v0, 0x1

    .line 1175
    .end local v4    # "key":Landroid/hardware/usb/AccessoryFilter;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1183
    .end local v2    # "keys":[Landroid/hardware/usb/AccessoryFilter;
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1

    return v0

    .line 1184
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;
    .locals 2
    .param p0, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 1222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1224
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1227
    return-object v0
.end method

.method static getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/AccessoryFilter;",
            ">;"
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 514
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .line 516
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 517
    if-nez v2, :cond_1

    .line 518
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    const/4 v3, 0x0

    .line 536
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 519
    :cond_0
    return-object v3

    .line 522
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 523
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 524
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "usb-accessory"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 526
    if-nez v0, :cond_2

    .line 527
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    .line 529
    :cond_2
    invoke-static {v2}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_3
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .end local v3    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 536
    :cond_4
    nop

    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    .line 533
    :catch_0
    move-exception v3

    .line 534
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load component info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_5

    goto :goto_1

    .line 538
    :cond_5
    :goto_2
    return-object v0

    .line 536
    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v3
.end method

.method private getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 730
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 731
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 732
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 733
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 738
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method private getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p2, "userPackage"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ")",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .line 901
    .local p1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 903
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 904
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 906
    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 904
    invoke-virtual {p2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 910
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 913
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 914
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 915
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_3

    .line 916
    iget-boolean v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDisablePermissionDialogs:Z

    if-eqz v3, :cond_2

    .line 917
    return-object v1

    .line 920
    :cond_2
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 923
    return-object v1

    .line 928
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    return-object v0
.end method

.method static getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/DeviceFilter;",
            ">;"
        }
    .end annotation

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 472
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .line 474
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 475
    if-nez v2, :cond_1

    .line 476
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    const/4 v3, 0x0

    .line 494
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 477
    :cond_0
    return-object v3

    .line 480
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 481
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 482
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "usb-device"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 484
    if-nez v0, :cond_2

    .line 485
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    .line 487
    :cond_2
    invoke-static {v2}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_3
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .end local v3    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 494
    :cond_4
    nop

    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    .line 491
    :catch_0
    move-exception v3

    .line 492
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load component info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_5

    goto :goto_1

    .line 496
    :cond_5
    :goto_2
    return-object v0

    .line 494
    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v3
.end method

.method private getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 715
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 716
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 717
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 718
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 719
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 723
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method private getSerial(Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1059
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    return v0
.end method

.method private handlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V
    .locals 7
    .param p1, "userPackage"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 1017
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    const/4 v1, 0x0

    .line 1022
    .local v1, "changed":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    const/16 v4, 0x81

    iget-object v5, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 1024
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1022
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    .local v2, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 1030
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1031
    .local v3, "activities":[Landroid/content/pm/ActivityInfo;
    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    .line 1032
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 1034
    aget-object v5, v3, v4

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1036
    const/4 v1, 0x1

    .line 1039
    :cond_1
    aget-object v5, v3, v4

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1041
    const/4 v1, 0x1

    .line 1032
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1045
    .end local v4    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 1046
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1048
    .end local v1    # "changed":Z
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "activities":[Landroid/content/pm/ActivityInfo;
    :cond_4
    monitor-exit v0

    .line 1049
    return-void

    .line 1048
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1025
    .restart local v1    # "changed":Z
    :catch_0
    move-exception v2

    .line 1026
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePackageUpdate could not find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    monitor-exit v0

    return-void

    .line 1048
    .end local v1    # "changed":Z
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "userPackage"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "metaDataName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 982
    const/4 v0, 0x0

    .line 983
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 986
    .local v1, "changed":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 987
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 1009
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 987
    :cond_0
    return v2

    .line 989
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 990
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 991
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 992
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "usb-device"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 993
    invoke-static {v0}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v3

    .line 994
    .local v3, "filter":Landroid/hardware/usb/DeviceFilter;
    invoke-direct {p0, p1, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/DeviceFilter;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 995
    const/4 v1, 0x1

    .line 997
    .end local v3    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_2
    goto :goto_1

    .line 998
    :cond_3
    const-string/jumbo v3, "usb-accessory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 999
    invoke-static {v0}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v3

    .line 1000
    .local v3, "filter":Landroid/hardware/usb/AccessoryFilter;
    invoke-direct {p0, p1, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/AccessoryFilter;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1001
    const/4 v1, 0x1

    .line 1004
    .end local v3    # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    .end local v2    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 1009
    :cond_5
    nop

    :goto_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1006
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load component info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1009
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_6

    goto :goto_2

    .line 1011
    :cond_6
    :goto_3
    return v1

    .line 1009
    :goto_4
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v2
.end method

.method private isForwardMatch(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "match"    # Landroid/content/pm/ResolveInfo;

    .line 606
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 546
    return v1

    .line 549
    :cond_0
    if-eqz p2, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 551
    .local v0, "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    if-eqz v0, :cond_2

    .line 552
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 553
    .local v2, "numDeviceFilters":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 554
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/DeviceFilter;

    invoke-virtual {v4, p2}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    return v1

    .line 553
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v2    # "numDeviceFilters":I
    .end local v3    # "i":I
    :cond_2
    if-eqz p3, :cond_4

    .line 562
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 564
    .local v0, "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    if-eqz v0, :cond_4

    .line 565
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 566
    .local v2, "numAccessoryFilters":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 567
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/AccessoryFilter;

    invoke-virtual {v4, p3}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 568
    return v1

    .line 566
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 574
    .end local v0    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v2    # "numAccessoryFilters":I
    .end local v3    # "i":I
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 618
    .local p1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 619
    .local v0, "highestPriorityMatchesByUserId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;>;"
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 620
    .local v1, "highestPriorityByUserId":Landroid/util/SparseIntArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v2, "forwardMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 624
    .local v3, "numMatches":I
    const/4 v4, 0x0

    .local v4, "matchNum":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 625
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 629
    .local v5, "match":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 630
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    goto :goto_1

    .line 635
    :cond_0
    iget v6, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_1

    .line 636
    iget v6, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/high16 v7, -0x80000000

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    iget v6, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    :cond_1
    iget v6, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 642
    .local v6, "highestPriority":I
    iget v7, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 645
    .local v7, "highestPriorityMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget v8, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v8, v6, :cond_2

    .line 646
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 647
    :cond_2
    iget v8, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v8, v6, :cond_3

    .line 648
    iget v8, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    iget v9, v5, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 650
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 651
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    .end local v5    # "match":Landroid/content/pm/ResolveInfo;
    .end local v6    # "highestPriority":I
    .end local v7    # "highestPriorityMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 658
    .end local v4    # "matchNum":I
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 659
    .local v4, "combinedMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 660
    .local v5, "numMatchArrays":I
    const/4 v6, 0x0

    .local v6, "matchArrayNum":I
    :goto_2
    if-ge v6, v5, :cond_5

    .line 661
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 660
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 664
    .end local v6    # "matchArrayNum":I
    :cond_5
    return-object v4
.end method

.method private queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 588
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v1, "resolveInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 590
    .local v2, "numProfiles":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 591
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    .line 592
    invoke-virtual {v4, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 591
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 595
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x0

    .line 292
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 294
    .local v1, "user":Landroid/os/UserHandle;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 295
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 296
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_0
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 302
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v1

    .line 295
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v3    # "i":I
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 307
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb-device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 308
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v3

    .line 309
    .local v3, "filter":Landroid/hardware/usb/DeviceFilter;
    if-eqz v1, :cond_4

    .line 310
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v6, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v6, v0, v1, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 312
    .end local v3    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "usb-accessory"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 313
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v3

    .line 314
    .local v3, "filter":Landroid/hardware/usb/AccessoryFilter;
    if-eqz v1, :cond_5

    .line 315
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v6, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v6, v0, v1, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 312
    .end local v3    # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_4
    :goto_1
    nop

    .line 318
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 319
    return-void
.end method

.method private readSettingsLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 364
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, "stream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 369
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 370
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 372
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 373
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 374
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "preference"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 378
    :cond_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 373
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    goto :goto_3

    .line 387
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "error reading settings file, deleting to start fresh"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 387
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 381
    :catch_1
    move-exception v1

    .line 387
    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 388
    nop

    .line 389
    return-void
.end method

.method private removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 676
    .local p1, "rawMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 680
    .local v0, "numRawMatches":I
    const/4 v1, 0x0

    .line 681
    .local v1, "numParentActivityMatches":I
    const/4 v2, 0x0

    .line 682
    .local v2, "numNonParentActivityMatches":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 683
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 684
    .local v4, "rawMatch":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 685
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 686
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 689
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 682
    .end local v4    # "rawMatch":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 695
    .end local v3    # "i":I
    :cond_2
    if-eqz v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    .line 708
    :cond_3
    return-object p1

    .line 696
    :cond_4
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    add-int v4, v1, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 699
    .local v3, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v0, :cond_6

    .line 700
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 701
    .local v5, "rawMatch":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 702
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    .end local v5    # "rawMatch":Landroid/content/pm/ResolveInfo;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 705
    .end local v4    # "i":I
    :cond_6
    return-object v3
.end method

.method private resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;Z)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "showMtpNotification"    # Z

    .line 753
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 755
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v3, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v3, p2}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 756
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 755
    invoke-direct {p0, v1, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move-object v8, v2

    .line 757
    .local v8, "defaultActivity":Landroid/content/pm/ActivityInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "isOTGEnable":Z
    const-string/jumbo v2, "persist.sys.oem.otg_support"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    const/4 v0, 0x1

    .line 770
    :cond_0
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v2, p2}, Lcom/android/server/usb/MtpNotificationManager;->shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v8, :cond_1

    if-eqz v0, :cond_2

    .line 774
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    invoke-virtual {v2, p2}, Lcom/android/server/usb/MtpNotificationManager;->showNotification(Landroid/hardware/usb/UsbDevice;)V

    .line 775
    return-void

    .line 779
    :cond_2
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v8

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 780
    return-void

    .line 757
    .end local v0    # "isOTGEnable":Z
    .end local v1    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "defaultActivity":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "defaultActivity"    # Landroid/content/pm/ActivityInfo;
    .param p4, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p5, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    .line 851
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 852
    if-eqz p5, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p5, v1}, Lcom/android/server/usb/UsbHandlerManager;->showUsbAccessoryUriActivity(Landroid/hardware/usb/UsbAccessory;Landroid/os/UserHandle;)V

    .line 856
    :cond_0
    return-void

    .line 859
    :cond_1
    if-eqz p3, :cond_4

    .line 860
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 861
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 860
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    .line 863
    .local v0, "defaultRIUserSettings":Lcom/android/server/usb/UsbUserSettingsManager;
    if-eqz p4, :cond_2

    .line 864
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 865
    invoke-virtual {v0, p4, v1}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    goto :goto_0

    .line 866
    :cond_2
    if-eqz p5, :cond_3

    .line 867
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p5, v1}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 873
    :cond_3
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 876
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 878
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .end local v1    # "user":Landroid/os/UserHandle;
    goto :goto_1

    .line 879
    :catch_0
    move-exception v1

    .line 880
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    .end local v0    # "defaultRIUserSettings":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    goto :goto_2

    .line 883
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 884
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/server/usb/UsbHandlerManager;->confirmUsbHandler(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_2

    .line 886
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/usb/UsbHandlerManager;->selectUsbHandler(Ljava/util/ArrayList;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 889
    :goto_2
    return-void
.end method

.method private scheduleWriteSettingsLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 401
    iget-boolean v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    if-eqz v0, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    .line 407
    new-instance v0, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$_G1PjxMa22pAIRMzYCwyomX8uhk;

    invoke-direct {v0, p0}, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$_G1PjxMa22pAIRMzYCwyomX8uhk;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method private upgradeSingleUserLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 329
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 334
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 335
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 337
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 338
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 339
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "preference"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 343
    :cond_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 349
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read single-user settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 350
    nop

    .line 352
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 355
    sget-object v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 349
    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 357
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_4
    return-void
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .locals 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 821
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 823
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 829
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v8, v2

    .line 831
    .local v8, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v3, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v3, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 832
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 831
    invoke-direct {p0, v8, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 833
    .local v5, "defaultActivity":Landroid/content/pm/ActivityInfo;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 836
    return-void

    .line 833
    .end local v5    # "defaultActivity":Landroid/content/pm/ActivityInfo;
    .end local v8    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1141
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1143
    .local v0, "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1144
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearPackageDefaultsLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1147
    :cond_0
    monitor-exit v1

    .line 1148
    return-void

    .line 1147
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 742
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    .line 745
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 747
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;Z)V

    .line 748
    return-void
.end method

.method public deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 783
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    .line 786
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 792
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 791
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 797
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 799
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 800
    invoke-virtual {v2, p1, v3}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 802
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 803
    .local v2, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 805
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 808
    goto :goto_0

    .line 806
    :catch_0
    move-exception v3

    .line 807
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void

    .line 793
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "activityIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 794
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default USB handling package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") not found  for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 15
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 1188
    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1190
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1191
    :try_start_0
    const-string/jumbo v0, "parent_user_id"

    const-wide v6, 0x10500000001L

    iget-object v8, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 1192
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1191
    invoke-virtual {v2, v0, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1194
    iget-object v0, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide v7, 0x10b00000002L

    const-wide v9, 0x10b00000001L

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/DeviceFilter;

    .line 1195
    .local v6, "filter":Landroid/hardware/usb/DeviceFilter;
    const-string v11, "device_preferences"

    const-wide v12, 0x20b00000002L

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 1198
    .local v11, "devicePrefToken":J
    const-string v13, "filter"

    invoke-virtual {v6, v2, v13, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1200
    iget-object v9, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v10, "user_package"

    invoke-virtual {v9, v2, v10, v7, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1203
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1204
    .end local v6    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v11    # "devicePrefToken":J
    goto :goto_0

    .line 1205
    :cond_0
    iget-object v0, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/AccessoryFilter;

    .line 1206
    .local v6, "filter":Landroid/hardware/usb/AccessoryFilter;
    const-string v11, "accessory_preferences"

    const-wide v12, 0x20b00000003L

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 1209
    .local v11, "accessoryPrefToken":J
    const-string v13, "filter"

    invoke-virtual {v6, v2, v13, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1211
    iget-object v13, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v14, "user_package"

    invoke-virtual {v13, v2, v14, v7, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1214
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1215
    .end local v6    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v11    # "accessoryPrefToken":J
    goto :goto_1

    .line 1216
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1219
    return-void

    .line 1216
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1127
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1128
    .local v0, "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    monitor-exit v1

    return v2

    .line 1130
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 1131
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$new$0$UsbProfileGroupSettingsManager(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 245
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method public synthetic lambda$scheduleWriteSettingsLocked$1$UsbProfileGroupSettingsManager()V
    .locals 8

    .line 408
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    const/4 v1, 0x0

    .line 411
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 413
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 414
    .local v2, "serializer":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 415
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 416
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 418
    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/DeviceFilter;

    .line 421
    .local v4, "filter":Landroid/hardware/usb/DeviceFilter;
    const-string/jumbo v6, "preference"

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    const-string/jumbo v6, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 423
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 422
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 425
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 424
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    invoke-virtual {v4, v2}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 427
    const-string/jumbo v6, "preference"

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    nop

    .end local v4    # "filter":Landroid/hardware/usb/DeviceFilter;
    goto :goto_0

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/AccessoryFilter;

    .line 431
    .local v4, "filter":Landroid/hardware/usb/AccessoryFilter;
    const-string/jumbo v6, "preference"

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const-string/jumbo v6, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 433
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 432
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 435
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v7

    .line 434
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    invoke-virtual {v4, v2}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 437
    const-string/jumbo v6, "preference"

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    nop

    .end local v4    # "filter":Landroid/hardware/usb/AccessoryFilter;
    goto :goto_1

    .line 440
    :cond_1
    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    invoke-virtual {v2}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 443
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .end local v2    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    goto :goto_2

    .line 452
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 444
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 445
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    if-eqz v1, :cond_2

    .line 447
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 451
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    .line 452
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    monitor-exit v0

    .line 453
    return-void

    .line 452
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeAllDefaultsForUser(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "userToRemove"    # Landroid/os/UserHandle;

    .line 257
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "needToPersist":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 260
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 261
    .local v2, "devicePreferenceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/usb/DeviceFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 264
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/DeviceFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v4, v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 266
    const/4 v1, 0x1

    .line 268
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/DeviceFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;"
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 271
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 272
    .local v3, "accessoryPreferenceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/usb/AccessoryFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 275
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/AccessoryFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v5, v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 277
    const/4 v1, 0x1

    .line 279
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/AccessoryFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;"
    :cond_2
    goto :goto_1

    .line 281
    :cond_3
    if-eqz v1, :cond_4

    .line 282
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 284
    .end local v1    # "needToPersist":Z
    .end local v2    # "devicePreferenceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/usb/DeviceFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;>;"
    .end local v3    # "accessoryPreferenceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/usb/AccessoryFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;>;"
    :cond_4
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

.method setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1099
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 1101
    .local v0, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1102
    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 1103
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "changed":Z
    :goto_0
    goto :goto_1

    .line 1105
    .end local v2    # "changed":Z
    :cond_1
    new-instance v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1107
    .local v3, "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 1108
    .restart local v2    # "changed":Z
    if-eqz v2, :cond_2

    .line 1109
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    .end local v3    # "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 1113
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1115
    :cond_3
    monitor-exit v1

    .line 1116
    return-void

    .line 1115
    .end local v2    # "changed":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1071
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1073
    .local v0, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1074
    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 1075
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "changed":Z
    :goto_0
    goto :goto_1

    .line 1077
    .end local v2    # "changed":Z
    :cond_1
    new-instance v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1079
    .local v3, "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 1080
    .restart local v2    # "changed":Z
    if-eqz v2, :cond_2

    .line 1081
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .end local v3    # "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 1085
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1087
    :cond_3
    monitor-exit v1

    .line 1088
    return-void

    .line 1087
    .end local v2    # "changed":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 817
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/MtpNotificationManager;->hideNotification(I)V

    .line 818
    return-void
.end method
