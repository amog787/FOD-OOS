.class Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
.super Ljava/lang/Object;
.source "DisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field mFeature:I

.field mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field final synthetic this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    .locals 0
    .param p2, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p3, "feature"    # I

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 43
    iput p3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    .line 44
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->access$000(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 49
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->access$100(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$DeathRecipient$FujCJdznizIJlEYYGuBL_SwOexc;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$DeathRecipient$FujCJdznizIJlEYYGuBL_SwOexc;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$binderDied$0$DisplayAreaOrganizerController$DeathRecipient(Lcom/android/server/wm/DisplayArea;)V
    .locals 2
    .param p1, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 51
    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eq v0, v1, :cond_0

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 53
    return-void
.end method
