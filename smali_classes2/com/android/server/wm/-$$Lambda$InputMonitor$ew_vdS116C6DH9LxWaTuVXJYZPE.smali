.class public final synthetic Lcom/android/server/wm/-$$Lambda$InputMonitor$ew_vdS116C6DH9LxWaTuVXJYZPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$InputMonitor$ew_vdS116C6DH9LxWaTuVXJYZPE;->f$0:Lcom/android/server/wm/InputMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$InputMonitor$ew_vdS116C6DH9LxWaTuVXJYZPE;->f$0:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->lambda$onDisplayRemoved$0$InputMonitor()V

    return-void
.end method
