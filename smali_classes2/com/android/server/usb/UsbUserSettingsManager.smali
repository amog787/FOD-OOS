.class Lcom/android/server/usb/UsbUserSettingsManager;
.super Ljava/lang/Object;
.source "UsbUserSettingsManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 67
    :try_start_0
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    iput-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 75
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 177
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 178
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z
    .locals 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 142
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_7

    .line 143
    array-length v1, v0

    .line 144
    .local v1, "numActivities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_7

    .line 145
    aget-object v3, v0, v2

    .line 147
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 149
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_1

    .line 164
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    goto :goto_3

    .line 153
    :cond_1
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 154
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 155
    const-string v5, "usb-accessory"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    invoke-static {v4}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v5

    .line 157
    .local v5, "filter":Landroid/hardware/usb/AccessoryFilter;
    invoke-virtual {v5, p1}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 158
    nop

    .line 164
    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    :cond_2
    return v6

    .line 162
    .end local v5    # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_3
    :try_start_3
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 164
    :cond_4
    if-eqz v4, :cond_5

    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 166
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_5
    goto :goto_3

    .line 147
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    :try_start_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_2
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 164
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

    .line 165
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

    .line 144
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 100
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_7

    .line 101
    array-length v1, v0

    .line 102
    .local v1, "numActivities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_7

    .line 103
    aget-object v3, v0, v2

    .line 105
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 107
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_1

    .line 122
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    goto :goto_3

    .line 111
    :cond_1
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 112
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 113
    const-string v5, "usb-device"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    invoke-static {v4}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v5

    .line 115
    .local v5, "filter":Landroid/hardware/usb/DeviceFilter;
    invoke-virtual {v5, p1}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 116
    nop

    .line 122
    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :cond_2
    return v6

    .line 120
    .end local v5    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_3
    :try_start_3
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 122
    :cond_4
    if-eqz v4, :cond_5

    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 124
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_5
    goto :goto_3

    .line 105
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    :try_start_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_2
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 122
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

    .line 123
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

    .line 102
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 20
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 185
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 187
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 188
    :try_start_0
    const-string v0, "user_id"

    const-wide v6, 0x10500000001L

    iget-object v8, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v2, v0, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 193
    .local v6, "numDeviceAttachedActivities":I
    const/4 v7, 0x0

    .local v7, "activityNum":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 194
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 196
    .local v12, "deviceAttachedActivity":Landroid/content/pm/ResolveInfo;
    const-string v13, "device_attached_activities"

    const-wide v14, 0x20b00000004L

    invoke-virtual {v2, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v13

    .line 199
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

    .line 203
    iget-object v8, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v8, v12}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v8

    .line 205
    .local v8, "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    if-eqz v8, :cond_1

    .line 206
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 207
    .local v9, "numDeviceFilters":I
    const/4 v10, 0x0

    .local v10, "filterNum":I
    :goto_1
    if-ge v10, v9, :cond_0

    .line 208
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

    .line 207
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

    .line 205
    .end local v10    # "filterNum":I
    .end local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v17    # "numDeviceFilters":I
    .restart local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    :cond_1
    move-object/from16 v16, v8

    .line 213
    .end local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .restart local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    :goto_2
    invoke-virtual {v2, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 193
    .end local v12    # "deviceAttachedActivity":Landroid/content/pm/ResolveInfo;
    .end local v13    # "deviceAttachedActivityToken":J
    .end local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 216
    .end local v7    # "activityNum":I
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, v7}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    .line 218
    .local v7, "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 219
    .local v8, "numAccessoryAttachedActivities":I
    const/4 v9, 0x0

    .local v9, "activityNum":I
    :goto_3
    if-ge v9, v8, :cond_5

    .line 220
    nop

    .line 221
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 223
    .local v10, "accessoryAttachedActivity":Landroid/content/pm/ResolveInfo;
    const-string v11, "accessory_attached_activities"

    const-wide v12, 0x20b00000005L

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 226
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

    .line 230
    iget-object v13, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v13, v10}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v13

    .line 232
    .local v13, "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    if-eqz v13, :cond_4

    .line 233
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 234
    .local v14, "numAccessoryFilters":I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "filterNum":I
    :goto_4
    if-ge v6, v14, :cond_3

    .line 235
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

    .line 234
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

    .line 232
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

    .line 240
    .end local v0    # "numDeviceAttachedActivities":I
    .end local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .restart local v16    # "numDeviceAttachedActivities":I
    .restart local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    :goto_5
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 219
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

    .line 242
    .end local v0    # "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "numDeviceAttachedActivities":I
    .end local v7    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "numAccessoryAttachedActivities":I
    .end local v9    # "activityNum":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 245
    return-void

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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

    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 86
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 85
    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
