.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$Kq15BolmuFXaWWabjDNQiScRxjo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$Kq15BolmuFXaWWabjDNQiScRxjo;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$Kq15BolmuFXaWWabjDNQiScRxjo;->f$0:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dpSink$6(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-void
.end method
