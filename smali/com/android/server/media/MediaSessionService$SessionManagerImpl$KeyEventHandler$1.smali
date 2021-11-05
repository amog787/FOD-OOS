.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createLongPressTimeoutRunnable(Landroid/view/KeyEvent;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field final synthetic val$keyEvent:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 2670
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2673
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->access$5800(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaKeyDispatcher;->onLongPress(Landroid/view/KeyEvent;)V

    .line 2676
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->access$5900(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V

    .line 2677
    return-void
.end method
