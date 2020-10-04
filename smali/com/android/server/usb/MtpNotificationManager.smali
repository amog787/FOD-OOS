.class Lcom/android/server/usb/MtpNotificationManager;
.super Ljava/lang/Object;
.source "MtpNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;,
        Lcom/android/server/usb/MtpNotificationManager$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION_OPEN_IN_APPS:Ljava/lang/String; = "com.android.server.usb.ACTION_OPEN_IN_APPS"

.field private static final PROTOCOL_MTP:I = 0x0

.field private static final PROTOCOL_PTP:I = 0x1

.field private static final SUBCLASS_MTP:I = 0xff

.field private static final SUBCLASS_STILL_IMAGE_CAPTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbMtpNotificationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    .line 71
    new-instance v0, Lcom/android/server/usb/MtpNotificationManager$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/MtpNotificationManager$Receiver;-><init>(Lcom/android/server/usb/MtpNotificationManager;Lcom/android/server/usb/MtpNotificationManager$1;)V

    .line 72
    .local v0, "receiver":Lcom/android/server/usb/MtpNotificationManager$Receiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/MtpNotificationManager;)Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/MtpNotificationManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    return-object v0
.end method

.method private static isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 5
    .param p0, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 139
    .local v1, "usbInterface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 141
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 142
    return v4

    .line 144
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    .line 145
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 146
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v2

    if-nez v2, :cond_1

    .line 147
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MTP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    return v4

    .line 137
    .end local v1    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 132
    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {p1}, Lcom/android/server/usb/MtpNotificationManager;->isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0
.end method


# virtual methods
.method hideNotification(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 110
    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method showNotification(Landroid/hardware/usb/UsbDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 76
    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, "resources":Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 77
    const v2, 0x1040727

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "title":Ljava/lang/String;
    const v2, 0x1040726

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "description":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 86
    const v4, 0x108080e

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 87
    const-string/jumbo v4, "sys"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 89
    .local v3, "builder":Landroid/app/Notification$Builder;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "device"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const/high16 v5, 0x50000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    iget-object v5, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 93
    const/high16 v8, 0x8000000

    invoke-static {v5, v6, v4, v8, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 99
    .local v5, "openIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 101
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 102
    .local v6, "notification":Landroid/app/Notification;
    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 104
    iget-object v7, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/NotificationManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 105
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    const/16 v9, 0x19

    invoke-virtual {v7, v8, v9, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 107
    return-void
.end method
