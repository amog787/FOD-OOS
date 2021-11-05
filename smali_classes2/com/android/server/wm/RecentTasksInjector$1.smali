.class Lcom/android/server/wm/RecentTasksInjector$1;
.super Ljava/lang/Object;
.source "RecentTasksInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/RecentTasksInjector;->ensureAndUpdateLockedTasksInfoObserver()V
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

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/RecentTasksInjector$1;->this$0:Lcom/android/server/wm/RecentTasksInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector$1;->this$0:Lcom/android/server/wm/RecentTasksInjector;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasksInjector;->access$200(Lcom/android/server/wm/RecentTasksInjector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/android/server/wm/RecentTasksInjector;->access$000()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasksInjector$1;->this$0:Lcom/android/server/wm/RecentTasksInjector;

    .line 118
    invoke-static {v2}, Lcom/android/server/wm/RecentTasksInjector;->access$100(Lcom/android/server/wm/RecentTasksInjector;)Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

    move-result-object v2

    .line 116
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    return-void
.end method
