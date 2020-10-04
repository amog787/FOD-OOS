.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iput p2, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget v1, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$qhWWEgLKYMNfyt5ffemHAtlRkpw;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dp$1$AudioDeviceInventory(ILjava/lang/String;)V

    return-void
.end method
