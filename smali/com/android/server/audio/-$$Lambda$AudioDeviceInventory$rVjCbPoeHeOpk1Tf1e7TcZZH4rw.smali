.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$rVjCbPoeHeOpk1Tf1e7TcZZH4rw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$rVjCbPoeHeOpk1Tf1e7TcZZH4rw;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$rVjCbPoeHeOpk1Tf1e7TcZZH4rw;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$onRestoreDevices$3$AudioDeviceInventory(Ljava/lang/Integer;Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method
