.class final Lcom/android/server/AppStateTracker$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AppStateTracker;
    .param p2, "x1"    # Lcom/android/server/AppStateTracker$1;

    .line 635
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$UidObserver;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 643
    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker$MyHandler;->onUidActive(I)V

    .line 644
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 658
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 648
    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidGone(IZ)V

    .line 649
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 653
    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidIdle(IZ)V

    .line 654
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 638
    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidStateChanged(II)V

    .line 639
    return-void
.end method
