.class public final synthetic Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ServiceWatcher;

.field private final synthetic f$1:Landroid/content/ComponentName;

.field private final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ServiceWatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;->f$0:Lcom/android/server/ServiceWatcher;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;->f$0:Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;->f$2:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ServiceWatcher;->lambda$onServiceConnected$3$ServiceWatcher(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
