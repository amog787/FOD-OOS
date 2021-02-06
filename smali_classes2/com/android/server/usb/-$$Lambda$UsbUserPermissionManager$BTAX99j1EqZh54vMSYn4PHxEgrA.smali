.class public final synthetic Lcom/android/server/usb/-$$Lambda$UsbUserPermissionManager$BTAX99j1EqZh54vMSYn4PHxEgrA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbUserPermissionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbUserPermissionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$$Lambda$UsbUserPermissionManager$BTAX99j1EqZh54vMSYn4PHxEgrA;->f$0:Lcom/android/server/usb/UsbUserPermissionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/-$$Lambda$UsbUserPermissionManager$BTAX99j1EqZh54vMSYn4PHxEgrA;->f$0:Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbUserPermissionManager;->lambda$scheduleWritePermissionsLocked$0$UsbUserPermissionManager()V

    return-void
.end method
