.class public Landroid/net/util/VersionedBroadcastListener;
.super Ljava/lang/Object;
.source "VersionedBroadcastListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/VersionedBroadcastListener$Receiver;,
        Landroid/net/util/VersionedBroadcastListener$IntentCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false


# instance fields
.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/content/IntentFilter;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/net/util/VersionedBroadcastListener;->mTag:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/net/util/VersionedBroadcastListener;->mContext:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Landroid/net/util/VersionedBroadcastListener;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p4, p0, Landroid/net/util/VersionedBroadcastListener;->mFilter:Landroid/content/IntentFilter;

    .line 60
    iput-object p5, p0, Landroid/net/util/VersionedBroadcastListener;->mCallback:Ljava/util/function/Consumer;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/util/VersionedBroadcastListener;->mGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    return-void
.end method


# virtual methods
.method public startListening()V
    .locals 5

    .line 66
    iget-object v0, p0, Landroid/net/util/VersionedBroadcastListener;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/net/util/VersionedBroadcastListener$Receiver;

    iget-object v1, p0, Landroid/net/util/VersionedBroadcastListener;->mTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/util/VersionedBroadcastListener;->mGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Landroid/net/util/VersionedBroadcastListener;->mCallback:Ljava/util/function/Consumer;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/util/VersionedBroadcastListener$Receiver;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/net/util/VersionedBroadcastListener;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iget-object v0, p0, Landroid/net/util/VersionedBroadcastListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/util/VersionedBroadcastListener;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/util/VersionedBroadcastListener;->mFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/util/VersionedBroadcastListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 74
    iget-object v0, p0, Landroid/net/util/VersionedBroadcastListener;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/net/util/VersionedBroadcastListener;->mGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 77
    iget-object v0, p0, Landroid/net/util/VersionedBroadcastListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/util/VersionedBroadcastListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/util/VersionedBroadcastListener;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method
