.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;->f$0:Landroid/util/ArraySet;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;->f$0:Landroid/util/ArraySet;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
