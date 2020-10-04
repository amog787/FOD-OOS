.class Lcom/android/server/usb/UsbUserSettingsManager;
.super Ljava/lang/Object;
.source "UsbUserSettingsManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 312
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbPermissionManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "usbPermissionManager"    # Lcom/android/server/usb/UsbPermissionManager;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 74
    :try_start_0
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    iput-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 82
    iput-object p3, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 83
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z
    .locals 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 331
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 332
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_4

    .line 333
    array-length v1, v0

    .line 334
    .local v1, "numActivities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 335
    aget-object v3, v0, v2

    .line 337
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 339
    if-nez v4, :cond_0

    .line 354
    if-eqz v4, :cond_3

    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 343
    :cond_0
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 344
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 345
    const-string/jumbo v6, "usb-accessory"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 346
    invoke-static {v4}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v6

    .line 347
    .local v6, "filter":Landroid/hardware/usb/AccessoryFilter;
    invoke-virtual {v6, p1}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    .line 348
    nop

    .line 354
    :try_start_2
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    return v7

    .line 352
    .end local v6    # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_1
    :try_start_3
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 354
    :cond_2
    :try_start_4
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 356
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_2

    .line 337
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v5

    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 354
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v1    # "numActivities":I
    .restart local v2    # "i":I
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p2    # "packageName":Ljava/lang/String;
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v1    # "numActivities":I
    .restart local v2    # "i":I
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 355
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 289
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 290
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_4

    .line 291
    array-length v1, v0

    .line 292
    .local v1, "numActivities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 293
    aget-object v3, v0, v2

    .line 295
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 297
    if-nez v4, :cond_0

    .line 312
    if-eqz v4, :cond_3

    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 301
    :cond_0
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 302
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 303
    const-string/jumbo v6, "usb-device"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    invoke-static {v4}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v6

    .line 305
    .local v6, "filter":Landroid/hardware/usb/DeviceFilter;
    invoke-virtual {v6, p1}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    .line 306
    nop

    .line 312
    :try_start_2
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 306
    return v7

    .line 310
    .end local v6    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_1
    :try_start_3
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 312
    :cond_2
    :try_start_4
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 314
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_2

    .line 295
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v5

    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v1    # "numActivities":I
    .restart local v2    # "i":I
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local p2    # "packageName":Ljava/lang/String;
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v1    # "numActivities":I
    .restart local v2    # "i":I
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 313
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 367
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 368
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method private isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 112
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    return v2

    .line 116
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 117
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 118
    .local v3, "iface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 119
    return v2

    .line 116
    .end local v3    # "iface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isCameraPermissionGranted(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 135
    const/16 v0, 0x1c

    .line 137
    .local v0, "targetSdkVersion":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 139
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p2, :cond_0

    .line 140
    sget-object v3, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v1

    .line 143
    :cond_0
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 147
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 149
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 151
    .local v2, "allowed":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    .line 152
    sget-object v3, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    const-string v4, "Camera permission required for USB video class devices"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v1

    .line 157
    .end local v2    # "allowed":I
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    const-string v4, "Package not found, likely due to invalid package name!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v1
.end method

.method private requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 12
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "canBeDefault"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "pi"    # Landroid/app/PendingIntent;
    .param p6, "uid"    # I

    .line 196
    move-object v1, p0

    move-object/from16 v10, p4

    move/from16 v11, p6

    const-string/jumbo v2, "package "

    :try_start_0
    iget-object v0, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 197
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v11, :cond_0

    .line 203
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 205
    iget-object v2, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    iget-object v8, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usb/UsbPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V

    .line 207
    return-void

    .line 198
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local p2    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p3    # "canBeDefault":Z
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "pi":Landroid/app/PendingIntent;
    .end local p6    # "uid":I
    throw v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local p2    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .restart local p3    # "canBeDefault":Z
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "pi":Landroid/app/PendingIntent;
    .restart local p6    # "uid":I
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 183
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

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission to access device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 20
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 375
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 377
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 378
    :try_start_0
    const-string/jumbo v0, "user_id"

    const-wide v6, 0x10500000001L

    iget-object v8, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v2, v0, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 380
    iget-object v0, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbPermissionManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 384
    .local v0, "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 385
    .local v6, "numDeviceAttachedActivities":I
    const/4 v7, 0x0

    .local v7, "activityNum":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 386
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 388
    .local v12, "deviceAttachedActivity":Landroid/content/pm/ResolveInfo;
    const-string v13, "device_attached_activities"

    const-wide v14, 0x20b00000004L

    invoke-virtual {v2, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v13

    .line 391
    .local v13, "deviceAttachedActivityToken":J
    const-string v15, "activity"

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v9, 0x10b00000001L

    invoke-static {v2, v15, v9, v10, v8}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 395
    iget-object v8, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v8, v12}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v8

    .line 397
    .local v8, "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    if-eqz v8, :cond_1

    .line 398
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 399
    .local v9, "numDeviceFilters":I
    const/4 v10, 0x0

    .local v10, "filterNum":I
    :goto_1
    if-ge v10, v9, :cond_0

    .line 400
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    const-string v15, "filters"

    move-object/from16 v16, v8

    move/from16 v17, v9

    const-wide v8, 0x20b00000002L

    .end local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v9    # "numDeviceFilters":I
    .local v16, "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .local v17, "numDeviceFilters":I
    invoke-virtual {v11, v2, v15, v8, v9}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 399
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    move/from16 v9, v17

    goto :goto_1

    .end local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v17    # "numDeviceFilters":I
    .restart local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .restart local v9    # "numDeviceFilters":I
    :cond_0
    move-object/from16 v16, v8

    move/from16 v17, v9

    .end local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v9    # "numDeviceFilters":I
    .restart local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .restart local v17    # "numDeviceFilters":I
    goto :goto_2

    .line 397
    .end local v10    # "filterNum":I
    .end local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v17    # "numDeviceFilters":I
    .restart local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    :cond_1
    move-object/from16 v16, v8

    .line 405
    .end local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .restart local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    :goto_2
    invoke-virtual {v2, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 385
    .end local v12    # "deviceAttachedActivity":Landroid/content/pm/ResolveInfo;
    .end local v13    # "deviceAttachedActivityToken":J
    .end local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 408
    .end local v7    # "activityNum":I
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1, v7}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    .line 410
    .local v7, "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 411
    .local v8, "numAccessoryAttachedActivities":I
    const/4 v9, 0x0

    .local v9, "activityNum":I
    :goto_3
    if-ge v9, v8, :cond_5

    .line 412
    nop

    .line 413
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 415
    .local v10, "accessoryAttachedActivity":Landroid/content/pm/ResolveInfo;
    const-string v11, "accessory_attached_activities"

    const-wide v12, 0x20b00000005L

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 418
    .local v11, "accessoryAttachedActivityToken":J
    const-string v13, "activity"

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v0    # "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v18, "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    move-object v15, v7

    const-wide v6, 0x10b00000001L

    .end local v6    # "numDeviceAttachedActivities":I
    .end local v7    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "numDeviceAttachedActivities":I
    .local v15, "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v2, v13, v6, v7, v14}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 422
    iget-object v13, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v13, v10}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v13

    .line 424
    .local v13, "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    if-eqz v13, :cond_4

    .line 425
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 426
    .local v14, "numAccessoryFilters":I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "filterNum":I
    :goto_4
    if-ge v6, v14, :cond_3

    .line 427
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/AccessoryFilter;

    move/from16 v16, v0

    .end local v0    # "numDeviceAttachedActivities":I
    .local v16, "numDeviceAttachedActivities":I
    const-string v0, "filters"

    move-object/from16 v17, v13

    move/from16 v19, v14

    const-wide v13, 0x20b00000002L

    .end local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v14    # "numAccessoryFilters":I
    .local v17, "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .local v19, "numAccessoryFilters":I
    invoke-virtual {v7, v2, v0, v13, v14}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 426
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    move-object/from16 v13, v17

    move/from16 v14, v19

    goto :goto_4

    .end local v16    # "numDeviceAttachedActivities":I
    .end local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v19    # "numAccessoryFilters":I
    .restart local v0    # "numDeviceAttachedActivities":I
    .restart local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .restart local v14    # "numAccessoryFilters":I
    :cond_3
    move/from16 v16, v0

    move-object/from16 v17, v13

    move/from16 v19, v14

    const-wide v13, 0x20b00000002L

    .end local v0    # "numDeviceAttachedActivities":I
    .end local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v14    # "numAccessoryFilters":I
    .restart local v16    # "numDeviceAttachedActivities":I
    .restart local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .restart local v19    # "numAccessoryFilters":I
    goto :goto_5

    .line 424
    .end local v6    # "filterNum":I
    .end local v16    # "numDeviceAttachedActivities":I
    .end local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v19    # "numAccessoryFilters":I
    .restart local v0    # "numDeviceAttachedActivities":I
    .restart local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    :cond_4
    move/from16 v16, v0

    move-object/from16 v17, v13

    const-wide v13, 0x20b00000002L

    .line 432
    .end local v0    # "numDeviceAttachedActivities":I
    .end local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .restart local v16    # "numDeviceAttachedActivities":I
    .restart local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    :goto_5
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 411
    .end local v10    # "accessoryAttachedActivity":Landroid/content/pm/ResolveInfo;
    .end local v11    # "accessoryAttachedActivityToken":J
    .end local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    add-int/lit8 v9, v9, 0x1

    move-object v7, v15

    move/from16 v6, v16

    move-object/from16 v0, v18

    goto :goto_3

    .end local v15    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "numDeviceAttachedActivities":I
    .end local v18    # "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v6, "numDeviceAttachedActivities":I
    .restart local v7    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    move-object/from16 v18, v0

    move/from16 v16, v6

    move-object v15, v7

    .line 434
    .end local v0    # "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "numDeviceAttachedActivities":I
    .end local v7    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "numAccessoryAttachedActivities":I
    .end local v9    # "activityNum":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 437
    return-void

    .line 434
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 264
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbPermissionManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 265
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 260
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 261
    return-void
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/usb/UsbPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;I)Z

    move-result v0

    return v0
.end method

.method queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 276
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 275
    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 100
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPermissionManager;->removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V

    .line 101
    return-void
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 91
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPermissionManager;->removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V

    .line 92
    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "uid"    # I

    .line 243
    invoke-virtual {p0, p1, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    const/4 v1, 0x1

    const-string/jumbo v2, "permission"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 252
    :goto_0
    return-void

    .line 255
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z

    move-result v5

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 257
    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "uid"    # I

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v1

    const-string/jumbo v2, "permission"

    const-string v3, "device"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 221
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0, p2, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    goto :goto_1

    .line 229
    :catch_1
    move-exception v1

    .line 232
    :goto_1
    return-void

    .line 236
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 238
    return-void
.end method
