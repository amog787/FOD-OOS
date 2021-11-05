.class Lcom/android/server/pm/ShortcutService$3;
.super Landroid/app/IUidObserver$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .line 515
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onUidGone$1$ShortcutService$3(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 524
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method public synthetic lambda$onUidStateChanged$0$ShortcutService$3(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 529
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 536
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 523
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;-><init>(Lcom/android/server/pm/ShortcutService$3;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 533
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;-><init>(Lcom/android/server/pm/ShortcutService$3;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method
