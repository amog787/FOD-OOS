.class Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;
.super Ljava/lang/Object;
.source "PinnedStackController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListenerDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PinnedStackController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PinnedStackController;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/PinnedStackController;
    .param p2, "x1"    # Lcom/android/server/wm/PinnedStackController$1;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedStackController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$400(Lcom/android/server/wm/PinnedStackController;)Landroid/view/IPinnedStackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$400(Lcom/android/server/wm/PinnedStackController;)Landroid/view/IPinnedStackListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IPinnedStackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v1}, Lcom/android/server/wm/PinnedStackController;->access$500(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedStackController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/PinnedStackController;->access$402(Lcom/android/server/wm/PinnedStackController;Landroid/view/IPinnedStackListener;)Landroid/view/IPinnedStackListener;

    .line 112
    return-void
.end method
