.class Lcom/android/server/usb/UsbUserPermissionManager;
.super Ljava/lang/Object;
.source "UsbUserPermissionManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessoryPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private mIsCopyPermissionsScheduled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionsFile:Landroid/util/AtomicFile;

.field private final mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usbUserSettingsManager"    # Lcom/android/server/usb/UsbUserSettingsManager;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 116
    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    .line 120
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 121
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "usb_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "usb-permissions"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 124
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermissionsLocked()V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 745
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 746
    return v2

    .line 749
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 750
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 751
    .local v3, "iface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 752
    return v2

    .line 749
    .end local v3    # "iface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isCameraPermissionGranted(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 626
    const/16 v0, 0x1c

    .line 628
    .local v0, "targetSdkVersion":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 630
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p3, :cond_0

    .line 631
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v1

    .line 634
    :cond_0
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 638
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 640
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 642
    .local v2, "allowed":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    .line 643
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Camera permission required for USB video class devices"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return v1

    .line 648
    .end local v2    # "allowed":I
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 635
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Package not found, likely due to invalid package name!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v1
.end method

.method private readPermission(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    :try_start_0
    const-string v0, "uid"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .local v0, "uid":I
    nop

    .line 316
    const/4 v1, 0x0

    const-string v2, "granted"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "isGrantedString":Ljava/lang/String;
    if-eqz v1, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 323
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 324
    .local v2, "isGranted":Z
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 325
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb-device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v3

    .line 327
    .local v3, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 328
    .local v4, "idx":I
    if-ltz v4, :cond_1

    .line 329
    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 330
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 331
    .local v5, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 332
    .end local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    goto :goto_0

    .line 333
    :cond_1
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 334
    .restart local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 337
    .end local v3    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v4    # "idx":I
    .end local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb-accessory"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 338
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v3

    .line 339
    .local v3, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 340
    .restart local v4    # "idx":I
    if-ltz v4, :cond_3

    .line 341
    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 342
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 343
    .local v5, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 344
    .end local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    goto :goto_1

    .line 345
    :cond_3
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 346
    .restart local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 337
    .end local v3    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v4    # "idx":I
    .end local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    :cond_4
    :goto_0
    nop

    .line 350
    :goto_1
    return-void

    .line 319
    .end local v2    # "isGranted":Z
    :cond_5
    :goto_2
    sget-object v2, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v3, "error reading usb permission granted state"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 321
    return-void

    .line 309
    .end local v0    # "uid":I
    .end local v1    # "isGrantedString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permission uid"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 312
    return-void
.end method

.method private readPermissionsLocked()V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 355
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 359
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 361
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 362
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 363
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "tagName":Ljava/lang/String;
    const-string v3, "permission"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermission(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 367
    :cond_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 370
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 357
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 372
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permissions file, deleting to start fresh"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    goto :goto_4

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 375
    :cond_3
    :goto_3
    nop

    .line 376
    :goto_4
    return-void
.end method

.method private requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 12
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "canBeDefault"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "pi"    # Landroid/app/PendingIntent;
    .param p6, "uid"    # I

    .line 673
    move-object v9, p0

    move-object/from16 v10, p4

    move/from16 v11, p6

    const-string v1, "package "

    :try_start_0
    iget-object v0, v9, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 674
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v11, :cond_0

    .line 680
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 682
    iget-object v7, v9, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V

    .line 683
    return-void

    .line 675
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    .end local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local p2    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p3    # "canBeDefault":Z
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "pi":Landroid/app/PendingIntent;
    .end local p6    # "uid":I
    throw v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 678
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    .restart local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local p2    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .restart local p3    # "canBeDefault":Z
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "pi":Landroid/app/PendingIntent;
    .restart local p6    # "uid":I
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private scheduleWritePermissionsLocked()V
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    if-eqz v0, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 385
    new-instance v0, Lcom/android/server/usb/-$$Lambda$UsbUserPermissionManager$BTAX99j1EqZh54vMSYn4PHxEgrA;

    invoke-direct {v0, p0}, Lcom/android/server/usb/-$$Lambda$UsbUserPermissionManager$BTAX99j1EqZh54vMSYn4PHxEgrA;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    return-void

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 652
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    return-void

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission to access device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 22
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 533
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 534
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 535
    :try_start_0
    const-string v0, "user_id"

    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {v2, v0, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 536
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 537
    .local v0, "numMappings":I
    const/4 v6, 0x0

    .local v6, "mappingsIdx":I
    :goto_0
    const-wide v11, 0x10900000001L

    const-wide v13, 0x20b00000002L

    if-ge v6, v0, :cond_1

    .line 538
    iget-object v15, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 539
    .local v15, "deviceName":Ljava/lang/String;
    const-string v7, "device_permissions"

    invoke-virtual {v2, v7, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 542
    .local v7, "devicePermissionToken":J
    const-string v13, "device_name"

    invoke-virtual {v2, v13, v11, v12, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 544
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseBooleanArray;

    .line 545
    .local v11, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 546
    .local v12, "numUids":I
    const/4 v13, 0x0

    .local v13, "uidsIdx":I
    :goto_1
    if-ge v13, v12, :cond_0

    .line 547
    const-string v14, "uids"

    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    move-object/from16 v16, v11

    const-wide v10, 0x20500000002L

    .end local v11    # "uidList":Landroid/util/SparseBooleanArray;
    .local v16, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2, v14, v10, v11, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 546
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v16

    goto :goto_1

    .end local v16    # "uidList":Landroid/util/SparseBooleanArray;
    .restart local v11    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_0
    move-object/from16 v16, v11

    .line 550
    .end local v11    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v13    # "uidsIdx":I
    .restart local v16    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 537
    .end local v7    # "devicePermissionToken":J
    .end local v12    # "numUids":I
    .end local v15    # "deviceName":Ljava/lang/String;
    .end local v16    # "uidList":Landroid/util/SparseBooleanArray;
    add-int/lit8 v6, v6, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_0

    .line 553
    .end local v6    # "mappingsIdx":I
    :cond_1
    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v0, v6

    .line 554
    const/4 v6, 0x0

    .restart local v6    # "mappingsIdx":I
    :goto_2
    if-ge v6, v0, :cond_3

    .line 555
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    .line 556
    .local v7, "accessory":Landroid/hardware/usb/UsbAccessory;
    const-string v8, "accessory_permissions"

    const-wide v9, 0x20b00000003L

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    .line 559
    .local v8, "accessoryPermissionToken":J
    const-string v10, "accessory_description"

    .line 561
    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v15

    .line 559
    invoke-virtual {v2, v10, v11, v12, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 563
    iget-object v10, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseBooleanArray;

    .line 564
    .local v10, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 565
    .local v15, "numUids":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "uidsIdx":I
    :goto_3
    if-ge v11, v15, :cond_2

    .line 566
    const-string v12, "uids"

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    move/from16 v16, v15

    const-wide v14, 0x20500000002L

    .end local v15    # "numUids":I
    .local v16, "numUids":I
    invoke-virtual {v2, v12, v14, v15, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 565
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v16

    const-wide v13, 0x20b00000002L

    goto :goto_3

    .end local v16    # "numUids":I
    .restart local v15    # "numUids":I
    :cond_2
    move/from16 v16, v15

    const-wide v14, 0x20500000002L

    .line 569
    .end local v11    # "uidsIdx":I
    .end local v15    # "numUids":I
    .restart local v16    # "numUids":I
    invoke-virtual {v2, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 554
    .end local v7    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v8    # "accessoryPermissionToken":J
    .end local v10    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v16    # "numUids":I
    add-int/lit8 v6, v6, 0x1

    const-wide v11, 0x10900000001L

    const-wide v13, 0x20b00000002L

    goto :goto_2

    .line 572
    .end local v6    # "mappingsIdx":I
    :cond_3
    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v0, v6

    .line 573
    const/4 v6, 0x0

    .restart local v6    # "mappingsIdx":I
    :goto_4
    const-wide v9, 0x10b00000001L

    if-ge v6, v0, :cond_5

    .line 574
    :try_start_1
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    .line 575
    .local v11, "filter":Landroid/hardware/usb/DeviceFilter;
    const-string v12, "device_persistent_permissions"

    const-wide v13, 0x20b00000004L

    invoke-virtual {v2, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    .line 577
    .local v12, "devicePermissionToken":J
    const-string v14, "device"

    invoke-virtual {v11, v2, v14, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 579
    iget-object v9, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 580
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseBooleanArray;

    .line 581
    .local v9, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    .line 582
    .local v10, "numPermissions":I
    const/4 v14, 0x0

    .local v14, "permissionsIdx":I
    :goto_5
    if-ge v14, v10, :cond_4

    .line 583
    const-string v15, "uid_permission"

    const-wide v7, 0x20b00000002L

    invoke-virtual {v2, v15, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v7, v16

    .line 585
    .local v7, "uidPermissionToken":J
    const-string v15, "uid"

    move/from16 v16, v0

    .end local v0    # "numMappings":I
    .local v16, "numMappings":I
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    move/from16 v18, v10

    move-object/from16 v17, v11

    const-wide v10, 0x10500000001L

    .end local v10    # "numPermissions":I
    .end local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    .local v17, "filter":Landroid/hardware/usb/DeviceFilter;
    .local v18, "numPermissions":I
    invoke-virtual {v2, v15, v10, v11, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 586
    const-string v0, "is_granted"

    .line 587
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    move-wide/from16 v20, v3

    const-wide v3, 0x10800000002L

    .end local v3    # "token":J
    .local v20, "token":J
    :try_start_2
    invoke-virtual {v2, v0, v3, v4, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 588
    invoke-virtual {v2, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 582
    .end local v7    # "uidPermissionToken":J
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    move-object/from16 v11, v17

    move/from16 v10, v18

    move-wide/from16 v3, v20

    goto :goto_5

    .end local v16    # "numMappings":I
    .end local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v18    # "numPermissions":I
    .end local v20    # "token":J
    .restart local v0    # "numMappings":I
    .restart local v3    # "token":J
    .restart local v10    # "numPermissions":I
    .restart local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_4
    move/from16 v16, v0

    move-wide/from16 v20, v3

    move/from16 v18, v10

    move-object/from16 v17, v11

    .line 590
    .end local v0    # "numMappings":I
    .end local v3    # "token":J
    .end local v10    # "numPermissions":I
    .end local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v14    # "permissionsIdx":I
    .restart local v16    # "numMappings":I
    .restart local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .restart local v18    # "numPermissions":I
    .restart local v20    # "token":J
    invoke-virtual {v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 573
    .end local v9    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v12    # "devicePermissionToken":J
    .end local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v18    # "numPermissions":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    move-wide/from16 v3, v20

    goto :goto_4

    .line 613
    .end local v6    # "mappingsIdx":I
    .end local v16    # "numMappings":I
    .end local v20    # "token":J
    .restart local v3    # "token":J
    :catchall_0
    move-exception v0

    .end local v3    # "token":J
    .restart local v20    # "token":J
    goto/16 :goto_8

    .line 573
    .end local v20    # "token":J
    .restart local v0    # "numMappings":I
    .restart local v3    # "token":J
    .restart local v6    # "mappingsIdx":I
    :cond_5
    move/from16 v16, v0

    move-wide/from16 v20, v3

    .line 593
    .end local v0    # "numMappings":I
    .end local v3    # "token":J
    .end local v6    # "mappingsIdx":I
    .restart local v16    # "numMappings":I
    .restart local v20    # "token":J
    :try_start_3
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 594
    .end local v16    # "numMappings":I
    .restart local v0    # "numMappings":I
    const/4 v3, 0x0

    .local v3, "mappingsIdx":I
    :goto_6
    if-ge v3, v0, :cond_7

    .line 595
    :try_start_4
    iget-object v4, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/AccessoryFilter;

    .line 596
    .local v4, "filter":Landroid/hardware/usb/AccessoryFilter;
    const-string v6, "accessory_persistent_permissions"

    const-wide v7, 0x20b00000005L

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 598
    .local v6, "accessoryPermissionToken":J
    const-string v8, "accessory"

    invoke-virtual {v4, v2, v8, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 600
    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 601
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 602
    .local v8, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 603
    .local v11, "numPermissions":I
    const/4 v12, 0x0

    .local v12, "permissionsIdx":I
    :goto_7
    if-ge v12, v11, :cond_6

    .line 604
    const-string v13, "uid_permission"

    const-wide v14, 0x20b00000002L

    invoke-virtual {v2, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 606
    .local v18, "uidPermissionToken":J
    const-string v13, "uid"

    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    const-wide v14, 0x10500000001L

    invoke-virtual {v2, v13, v14, v15, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 607
    const-string v9, "is_granted"

    .line 608
    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    .line 607
    const-wide v14, 0x10800000002L

    invoke-virtual {v2, v9, v14, v15, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 609
    move-wide/from16 v9, v18

    .end local v18    # "uidPermissionToken":J
    .local v9, "uidPermissionToken":J
    invoke-virtual {v2, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 603
    .end local v9    # "uidPermissionToken":J
    add-int/lit8 v12, v12, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_7

    :cond_6
    const-wide v14, 0x10800000002L

    .line 611
    .end local v12    # "permissionsIdx":I
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 594
    .end local v4    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v6    # "accessoryPermissionToken":J
    .end local v8    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v11    # "numPermissions":I
    add-int/lit8 v3, v3, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_6

    .line 613
    .end local v0    # "numMappings":I
    .end local v3    # "mappingsIdx":I
    :catchall_1
    move-exception v0

    move-wide/from16 v3, v20

    goto :goto_8

    :cond_7
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 614
    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .local v3, "token":J
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 615
    return-void

    .line 613
    .end local v3    # "token":J
    .restart local v20    # "token":J
    :catchall_2
    move-exception v0

    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .restart local v3    # "token":J
    goto :goto_8

    :catchall_3
    move-exception v0

    :goto_8
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 178
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 179
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v3

    .line 180
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 183
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 158
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 161
    .local v2, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 162
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v2, v4

    .line 163
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 166
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z
    .locals 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 229
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_3

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v1, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 234
    .local v1, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 235
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 236
    .local v2, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 238
    .local v3, "idx":I
    if-ltz v3, :cond_1

    .line 239
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    monitor-exit v0

    return v4

    .line 242
    .end local v3    # "idx":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 243
    .local v3, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v3, :cond_2

    .line 244
    const/4 v4, 0x0

    monitor-exit v0

    return v4

    .line 246
    :cond_2
    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    monitor-exit v0

    return v4

    .line 231
    .end local v1    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v2    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    .end local v3    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_3
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    const/16 v2, 0x3e8

    if-eq p4, v2, :cond_4

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    new-instance v2, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v2, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 206
    .local v2, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 207
    .local v3, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {v3, p4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    .line 209
    .local v4, "idx":I
    if-ltz v4, :cond_2

    .line 210
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 213
    .end local v4    # "idx":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 214
    .local v4, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v4, :cond_3

    .line 215
    monitor-exit v0

    return v1

    .line 217
    :cond_3
    invoke-virtual {v4, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 203
    .end local v2    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v3    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    .end local v4    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_4
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$scheduleWritePermissionsLocked$0$UsbUserPermissionManager()V
    .locals 18

    .line 396
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    :try_start_0
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v3, v0

    .line 399
    .local v3, "numDevices":I
    new-array v0, v3, [Landroid/hardware/usb/DeviceFilter;

    move-object v4, v0

    .line 400
    .local v4, "devices":[Landroid/hardware/usb/DeviceFilter;
    new-array v0, v3, [[I

    move-object v5, v0

    .line 401
    .local v5, "uidsForDevices":[[I
    new-array v0, v3, [[Z

    move-object v6, v0

    .line 402
    .local v6, "grantedValuesForDevices":[[Z
    const/4 v0, 0x0

    .local v0, "deviceIdx":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 403
    new-instance v7, Landroid/hardware/usb/DeviceFilter;

    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 404
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v7, v8}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/DeviceFilter;)V

    aput-object v7, v4, v0

    .line 405
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 406
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 407
    .local v7, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    .line 408
    .local v8, "numPermissions":I
    new-array v9, v8, [I

    aput-object v9, v5, v0

    .line 409
    new-array v9, v8, [Z

    aput-object v9, v6, v0

    .line 410
    const/4 v9, 0x0

    .local v9, "permissionIdx":I
    :goto_1
    if-ge v9, v8, :cond_0

    .line 411
    aget-object v10, v5, v0

    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    aput v11, v10, v9

    .line 412
    aget-object v10, v6, v0

    .line 413
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    aput-boolean v11, v10, v9

    .line 410
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 402
    .end local v7    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v8    # "numPermissions":I
    .end local v9    # "permissionIdx":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "deviceIdx":I
    :cond_1
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v7, v0

    .line 418
    .local v7, "numAccessories":I
    new-array v0, v7, [Landroid/hardware/usb/AccessoryFilter;

    move-object v8, v0

    .line 419
    .local v8, "accessories":[Landroid/hardware/usb/AccessoryFilter;
    new-array v0, v7, [[I

    move-object v9, v0

    .line 420
    .local v9, "uidsForAccessories":[[I
    new-array v0, v7, [[Z

    move-object v10, v0

    .line 421
    .local v10, "grantedValuesForAccessories":[[Z
    const/4 v0, 0x0

    .local v0, "accessoryIdx":I
    :goto_2
    if-ge v0, v7, :cond_3

    .line 422
    new-instance v11, Landroid/hardware/usb/AccessoryFilter;

    iget-object v12, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 423
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v11, v12}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/AccessoryFilter;)V

    aput-object v11, v8, v0

    .line 424
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 425
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseBooleanArray;

    .line 426
    .local v11, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 427
    .local v12, "numPermissions":I
    new-array v13, v12, [I

    aput-object v13, v9, v0

    .line 428
    new-array v13, v12, [Z

    aput-object v13, v10, v0

    .line 429
    const/4 v13, 0x0

    .local v13, "permissionIdx":I
    :goto_3
    if-ge v13, v12, :cond_2

    .line 430
    aget-object v14, v9, v0

    .line 431
    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v13

    .line 432
    aget-object v14, v10, v0

    .line 433
    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    aput-boolean v15, v14, v13

    .line 429
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 421
    .end local v11    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v12    # "numPermissions":I
    .end local v13    # "permissionIdx":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 436
    .end local v0    # "accessoryIdx":I
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 437
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 439
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v11

    .line 440
    const/4 v2, 0x0

    .line 442
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v2, v0

    .line 443
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 444
    .local v0, "serializer":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 445
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v12}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 446
    const-string v12, "permissions"

    invoke-virtual {v0, v13, v12}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v3, :cond_5

    .line 449
    aget-object v14, v5, v12

    array-length v14, v14

    .line 450
    .local v14, "numPermissions":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_5
    if-ge v15, v14, :cond_4

    .line 451
    const-string v13, "permission"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "numDevices":I
    .local v16, "numDevices":I
    :try_start_2
    invoke-virtual {v0, v3, v13}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    const-string v3, "uid"

    aget-object v13, v5, v12

    aget v13, v13, v15

    .line 453
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "uidsForDevices":[[I
    .local v17, "uidsForDevices":[[I
    :try_start_3
    invoke-virtual {v0, v5, v3, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    const-string v3, "granted"

    aget-object v5, v6, v12

    aget-boolean v5, v5, v15

    .line 455
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    .line 454
    const/4 v13, 0x0

    invoke-virtual {v0, v13, v3, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    aget-object v3, v4, v12

    invoke-virtual {v3, v0}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 457
    const-string v3, "permission"

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v17

    const/4 v13, 0x0

    goto :goto_5

    .line 484
    .end local v0    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .end local v14    # "numPermissions":I
    .end local v15    # "j":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v5    # "uidsForDevices":[[I
    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "uidsForDevices":[[I
    .restart local v17    # "uidsForDevices":[[I
    goto/16 :goto_a

    .line 478
    .end local v17    # "uidsForDevices":[[I
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "uidsForDevices":[[I
    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "uidsForDevices":[[I
    .restart local v17    # "uidsForDevices":[[I
    goto :goto_8

    .line 450
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v0    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    .restart local v12    # "i":I
    .restart local v14    # "numPermissions":I
    .restart local v15    # "j":I
    :cond_4
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 448
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .end local v14    # "numPermissions":I
    .end local v15    # "j":I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_4

    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    :cond_5
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 461
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .end local v12    # "i":I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v7, :cond_7

    .line 462
    aget-object v5, v9, v3

    array-length v5, v5

    .line 463
    .local v5, "numPermissions":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_7
    if-ge v12, v5, :cond_6

    .line 464
    const-string v13, "permission"

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v13}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    const-string v13, "uid"

    aget-object v14, v9, v3

    aget v14, v14, v12

    .line 466
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 465
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    const-string v13, "granted"

    aget-object v14, v6, v3

    aget-boolean v14, v14, v12

    .line 468
    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    .line 467
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    aget-object v13, v8, v3

    invoke-virtual {v13, v0}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 470
    const-string v13, "permission"

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v13}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 461
    .end local v5    # "numPermissions":I
    .end local v12    # "j":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 474
    .end local v3    # "i":I
    :cond_7
    const-string v3, "permissions"

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 477
    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 483
    .end local v0    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    goto :goto_9

    .line 478
    :catch_1
    move-exception v0

    goto :goto_8

    .line 484
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .local v3, "numDevices":I
    .local v5, "uidsForDevices":[[I
    :catchall_1
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    goto :goto_a

    .line 478
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    :catch_2
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 479
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    :goto_8
    :try_start_4
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write permissions"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    if-eqz v2, :cond_8

    .line 481
    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 484
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_8
    :goto_9
    monitor-exit v11

    .line 485
    return-void

    .line 484
    :catchall_2
    move-exception v0

    :goto_a
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 437
    .end local v4    # "devices":[Landroid/hardware/usb/DeviceFilter;
    .end local v6    # "grantedValuesForDevices":[[Z
    .end local v7    # "numAccessories":I
    .end local v8    # "accessories":[Landroid/hardware/usb/AccessoryFilter;
    .end local v9    # "uidsForAccessories":[[I
    .end local v10    # "grantedValuesForAccessories":[[Z
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 146
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "uid"    # I

    .line 720
    invoke-virtual {p0, p1, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 722
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 723
    const/4 v1, 0x1

    const-string v2, "permission"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    goto :goto_0

    .line 726
    :catch_0
    move-exception v1

    .line 729
    :goto_0
    return-void

    .line 732
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 733
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z

    move-result v5

    .line 732
    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 734
    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .locals 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 687
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 690
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v1

    const-string v2, "permission"

    const-string v3, "device"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 692
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 694
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    goto :goto_0

    .line 695
    :catch_0
    move-exception v1

    .line 698
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 702
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 703
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 708
    goto :goto_1

    .line 706
    :catch_1
    move-exception v1

    .line 709
    :goto_1
    return-void

    .line 713
    :cond_1
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 714
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v5

    .line 713
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 715
    return-void
.end method

.method requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "canBeDefault"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "userContext"    # Landroid/content/Context;
    .param p7, "pi"    # Landroid/app/PendingIntent;

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 509
    .local v0, "identity":J
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 510
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 511
    const-string v3, "device"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 513
    :cond_0
    const-string v3, "accessory"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 515
    :goto_0
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v3, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    const-string v3, "android.hardware.usb.extra.PACKAGE"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040263

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 521
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    goto :goto_2

    .line 528
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 525
    :catch_0
    move-exception v3

    .line 526
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    sget-object v4, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v5, "unable to start UsbPermissionActivity"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    nop

    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_1

    .line 530
    :goto_2
    return-void

    .line 528
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    throw v3
.end method

.method setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    .locals 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I
    .param p3, "isGranted"    # Z

    .line 279
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 280
    .local v0, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 282
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 283
    .local v2, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_0

    .line 284
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    .line 285
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 288
    .local v3, "idx":I
    if-ltz v3, :cond_2

    .line 289
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eq v4, p3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 290
    .local v4, "isChanged":Z
    :goto_0
    invoke-virtual {v2, v3, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_1

    .line 292
    .end local v4    # "isChanged":Z
    :cond_2
    const/4 v4, 0x1

    .line 293
    .restart local v4    # "isChanged":Z
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 296
    :goto_1
    if-eqz v4, :cond_3

    .line 297
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 299
    .end local v2    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    .end local v3    # "idx":I
    :cond_3
    monitor-exit v1

    .line 300
    return-void

    .line 299
    .end local v4    # "isChanged":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I
    .param p3, "isGranted"    # Z

    .line 253
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 254
    .local v0, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 256
    .local v2, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_0

    .line 257
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    .line 258
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 261
    .local v3, "idx":I
    if-ltz v3, :cond_2

    .line 262
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eq v4, p3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 263
    .local v4, "isChanged":Z
    :goto_0
    invoke-virtual {v2, v3, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_1

    .line 265
    .end local v4    # "isChanged":Z
    :cond_2
    const/4 v4, 0x1

    .line 266
    .restart local v4    # "isChanged":Z
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 269
    :goto_1
    if-eqz v4, :cond_3

    .line 270
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 272
    .end local v2    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    .end local v3    # "idx":I
    :cond_3
    monitor-exit v1

    .line 273
    return-void

    .line 272
    .end local v4    # "isChanged":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
