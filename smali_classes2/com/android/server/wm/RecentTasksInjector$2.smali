.class Lcom/android/server/wm/RecentTasksInjector$2;
.super Landroid/app/UserSwitchObserver;
.source "RecentTasksInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/RecentTasksInjector;->ensureUserSwitchingObserved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentTasksInjector;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentTasksInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/RecentTasksInjector;

    .line 132
    iput-object p1, p0, Lcom/android/server/wm/RecentTasksInjector$2;->this$0:Lcom/android/server/wm/RecentTasksInjector;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector$2;->this$0:Lcom/android/server/wm/RecentTasksInjector;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasksInjector;->access$300(Lcom/android/server/wm/RecentTasksInjector;)V

    .line 136
    return-void
.end method
