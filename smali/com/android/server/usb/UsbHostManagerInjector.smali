.class public Lcom/android/server/usb/UsbHostManagerInjector;
.super Ljava/lang/Object;
.source "UsbHostManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbHostManagerInjector$OtgAutoShutDownObserver;
    }
.end annotation


# static fields
.field private static final OP_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final OTG_AUTO_SHUTDOWN_ENABLE:Z

.field private static final OTG_AUTO_SHUT_DOWN_INTENT:Ljava/lang/String; = "oneplus.intent.action.otg_auto_shutdown"

.field private static final OTG_AUTO_SHUT_DOWN_MS:J = 0x927c0L

.field private static final OTG_AUTO_SHUT_DOWN_OFF:I = 0x0

.field private static final OTG_AUTO_SHUT_DOWN_REQUEST:I = 0x1

.field private static OTG_HOST_INSERTED:I = 0x0

.field private static final OTG_HOST_MATCH_FOR_845:Ljava/lang/String; = "DEVPATH=/devices/platform/soc/a600000.ssusb/a600000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_MATCH_FOR_8996:Ljava/lang/String; = "DEVPATH=/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_MATCH_FOR_8998:Ljava/lang/String; = "DEVPATH=/devices/soc/a800000.ssusb/a800000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_PATH_FOR_845:Ljava/lang/String; = "/sys/devices/platform/soc/a600000.ssusb/a600000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_PATH_FOR_8996:Ljava/lang/String; = "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_PATH_FOR_8998:Ljava/lang/String; = "/sys/devices/soc/a800000.ssusb/a800000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final TAG:Ljava/lang/String; = "UsbHostManagerInjector"

.field private static mContext:Landroid/content/Context;

.field private static mUsbHostManagerInjector:Lcom/android/server/usb/UsbHostManagerInjector;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

.field private final mOTGUEventObserver:Landroid/os/UEventObserver;

.field private mOtgAutoShutDownObserver:Lcom/android/server/usb/UsbHostManagerInjector$OtgAutoShutDownObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/android/server/usb/UsbHostManagerInjector;->OTG_HOST_INSERTED:I

    .line 47
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x2e

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbHostManagerInjector;->OTG_AUTO_SHUTDOWN_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/usb/UsbHostManagerInjector$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManagerInjector$1;-><init>(Lcom/android/server/usb/UsbHostManagerInjector;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mOTGUEventObserver:Landroid/os/UEventObserver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/android/server/usb/UsbHostManagerInjector;->OTG_AUTO_SHUTDOWN_ENABLE:Z

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 21
    sput p0, Lcom/android/server/usb/UsbHostManagerInjector;->OTG_HOST_INSERTED:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbHostManagerInjector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManagerInjector;

    .line 21
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManagerInjector;->resetAlarmTrigger()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/server/usb/UsbHostManagerInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/usb/UsbHostManagerInjector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    sput-object p0, Lcom/android/server/usb/UsbHostManagerInjector;->mContext:Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/android/server/usb/UsbHostManagerInjector;->mUsbHostManagerInjector:Lcom/android/server/usb/UsbHostManagerInjector;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/server/usb/UsbHostManagerInjector;

    invoke-direct {v0}, Lcom/android/server/usb/UsbHostManagerInjector;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbHostManagerInjector;->mUsbHostManagerInjector:Lcom/android/server/usb/UsbHostManagerInjector;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbHostManagerInjector;->mUsbHostManagerInjector:Lcom/android/server/usb/UsbHostManagerInjector;

    return-object v0
.end method

.method private resetAlarmTrigger()V
    .locals 9

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    sget-object v0, Lcom/android/server/usb/UsbHostManagerInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_otg_auto_disable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "duration":I
    if-lez v0, :cond_0

    sget v1, Lcom/android/server/usb/UsbHostManagerInjector;->OTG_HOST_INSERTED:I

    if-nez v1, :cond_0

    .line 102
    const-string v1, "UsbHostManagerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set otg auto shutdown alarm trigger with duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, v0

    const-wide/32 v7, 0x927c0

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

    .line 104
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 108
    :cond_0
    const-string v1, "UsbHostManagerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel otg auto shutdown alarm trigger with duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 112
    .end local v0    # "duration":I
    :goto_0
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public UsbHostManagerInjector()V
    .locals 5

    .line 116
    sget-boolean v0, Lcom/android/server/usb/UsbHostManagerInjector;->OTG_AUTO_SHUTDOWN_ENABLE:Z

    if-eqz v0, :cond_3

    .line 117
    sget-object v0, Lcom/android/server/usb/UsbHostManagerInjector;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mAlarmManager:Landroid/app/AlarmManager;

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oneplus.intent.action.otg_auto_shutdown"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "OtgAutoShutDownIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    sget-object v1, Lcom/android/server/usb/UsbHostManagerInjector;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

    .line 123
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OtgAutoShutDown"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "OtgAutoShutDownThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v2, Lcom/android/server/usb/UsbHostManagerInjector$OtgAutoShutDownObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbHostManagerInjector$OtgAutoShutDownObserver;-><init>(Lcom/android/server/usb/UsbHostManagerInjector;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mOtgAutoShutDownObserver:Lcom/android/server/usb/UsbHostManagerInjector$OtgAutoShutDownObserver;

    .line 127
    const-string/jumbo v2, "ro.board.platform"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "platform":Ljava/lang/String;
    const-string/jumbo v3, "msm8998"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mOTGUEventObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/soc/a800000.ssusb/a800000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    const-string/jumbo v3, "msm8996"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mOTGUEventObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    const-string/jumbo v3, "sdm845"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "msmnile"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManagerInjector;->mOTGUEventObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/platform/soc/a600000.ssusb/a600000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 137
    .end local v0    # "OtgAutoShutDownIntent":Landroid/content/Intent;
    .end local v1    # "OtgAutoShutDownThread":Landroid/os/HandlerThread;
    .end local v2    # "platform":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public UsbHostManagerSystemReadyInjector()V
    .locals 6

    .line 140
    sget-boolean v0, Lcom/android/server/usb/UsbHostManagerInjector;->OTG_AUTO_SHUTDOWN_ENABLE:Z

    if-eqz v0, :cond_5

    .line 141
    sget-object v0, Lcom/android/server/usb/UsbHostManagerInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "oneplus_otg_auto_disable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "Otg_auto_disable":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, "OTG_HOST":Ljava/io/File;
    const-string/jumbo v3, "ro.board.platform"

    const-string/jumbo v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "platform":Ljava/lang/String;
    const-string/jumbo v4, "msm8998"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/soc/a800000.ssusb/a800000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 150
    :cond_0
    const-string/jumbo v4, "msm8996"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 152
    :cond_1
    const-string/jumbo v4, "sdm845"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "msmnile"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/platform/soc/a600000.ssusb/a600000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 156
    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    .line 157
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "UsbHostManagerInjector"

    if-eqz v4, :cond_4

    .line 158
    const-string v4, "System ready and otg host inserted..."

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sput v1, Lcom/android/server/usb/UsbHostManagerInjector;->OTG_HOST_INSERTED:I

    goto :goto_1

    .line 161
    :cond_4
    const-string v1, "System ready and otg turn on, resetAlarmTrigger..."

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManagerInjector;->resetAlarmTrigger()V

    .line 167
    .end local v0    # "Otg_auto_disable":I
    .end local v2    # "OTG_HOST":Ljava/io/File;
    .end local v3    # "platform":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void
.end method
