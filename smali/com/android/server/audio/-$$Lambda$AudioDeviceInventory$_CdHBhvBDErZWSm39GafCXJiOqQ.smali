.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$_CdHBhvBDErZWSm39GafCXJiOqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$_CdHBhvBDErZWSm39GafCXJiOqQ;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$_CdHBhvBDErZWSm39GafCXJiOqQ;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$isCurrentDeviceConnected$10$AudioDeviceInventory(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z

    move-result p1

    return p1
.end method
