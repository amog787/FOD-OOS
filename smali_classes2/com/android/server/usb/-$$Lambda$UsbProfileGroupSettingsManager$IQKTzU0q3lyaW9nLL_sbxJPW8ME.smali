.class public final synthetic Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;->f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    return-void
.end method


# virtual methods
.method public final onOpenInApp(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;->f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->lambda$new$0$UsbProfileGroupSettingsManager(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
