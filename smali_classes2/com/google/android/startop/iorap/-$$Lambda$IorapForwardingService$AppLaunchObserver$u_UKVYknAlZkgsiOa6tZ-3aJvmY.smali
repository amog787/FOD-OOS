.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$u_UKVYknAlZkgsiOa6tZ-3aJvmY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$u_UKVYknAlZkgsiOa6tZ-3aJvmY;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    iput-object p2, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$u_UKVYknAlZkgsiOa6tZ-3aJvmY;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$u_UKVYknAlZkgsiOa6tZ-3aJvmY;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    iget-object v1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$u_UKVYknAlZkgsiOa6tZ-3aJvmY;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->lambda$onIntentStarted$0$IorapForwardingService$AppLaunchObserver(Landroid/content/Intent;)V

    return-void
.end method
