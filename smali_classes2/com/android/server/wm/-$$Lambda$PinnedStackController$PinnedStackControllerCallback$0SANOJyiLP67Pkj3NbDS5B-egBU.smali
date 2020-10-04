.class public final synthetic Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;->f$0:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;->f$0:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->lambda$setIsMinimized$0$PinnedStackController$PinnedStackControllerCallback(Z)V

    return-void
.end method
